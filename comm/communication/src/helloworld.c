#include <stdio.h>
#include <string.h>

#include "xparameters.h"
#include "xil_printf.h"
#include "platform.h"
#include "xil_io.h"

#include "lwip/init.h"
#include "lwip/tcp.h"
#include "lwip/etharp.h"

#include "netif/xadapter.h"
#include "ff.h"

#define LOCAL_IP_ADDR "192.168.1.11"
#define NETMASK_ADDR  "255.255.255.0"
#define GATEWAY_ADDR  "192.168.1.1"

#define SERVER_IP     "192.168.1.10"
#define SERVER_PORT   8080

#define CHUNK_SIZE    1024


#define GTIMER_BASE      0xF8F00200U
#define GTIMER_COUNT_L   (GTIMER_BASE + 0x00U)
#define GTIMER_COUNT_H   (GTIMER_BASE + 0x04U)

#define GTIMER_HZ        333000000ULL

static inline unsigned long long gtimer_read64(void) {
    unsigned int hi1, lo, hi2;
    do {
        hi1 = Xil_In32(GTIMER_COUNT_H);
        lo  = Xil_In32(GTIMER_COUNT_L);
        hi2 = Xil_In32(GTIMER_COUNT_H);
    } while (hi1 != hi2);
    return (((unsigned long long)hi2) << 32) | (unsigned long long)lo;
}

static inline unsigned long long ms_to_ticks(unsigned int ms) {
    return ((unsigned long long)ms * (unsigned long long)GTIMER_HZ) / 1000ULL;
}

typedef struct __attribute__((packed)) {
    char     magic[4];     
    unsigned char type;    
    unsigned char rsv[3];
    unsigned int  length;  
    unsigned short name_len;
    unsigned short rsv2;
} MsgHdr;

static FATFS fatfs;
static FIL fil;

static struct netif netif0;
static struct tcp_pcb *g_pcb = NULL;

static const char *g_filename = NULL;
static unsigned char g_type = 0;

static unsigned int g_file_size = 0;
static unsigned int g_payload_sent = 0;

static unsigned int g_bytes_acked_total = 0;
static unsigned int g_target_to_ack = 0;

static int g_header_sent = 0;
static int g_done_queuing = 0;
static int g_finished = 0;

static char g_chunk[CHUNK_SIZE];

static int stat_file(const char *name, unsigned int *out_size) {
    FRESULT r = f_open(&fil, name, FA_READ);
    if (r != FR_OK) return (int)r;
    *out_size = (unsigned int)f_size(&fil);
    f_close(&fil);
    return 0;
}

static err_t tcp_send_more(struct tcp_pcb *tpcb);

static err_t sent_cb(void *arg, struct tcp_pcb *tpcb, u16_t len) {
    (void)arg;
    g_bytes_acked_total += (unsigned int)len;

    if (g_done_queuing && (g_bytes_acked_total >= g_target_to_ack) && !g_finished) {
        xil_printf("All bytes ACKed (%u). Closing.\r\n", g_bytes_acked_total);
        g_finished = 1;
        tcp_close(tpcb);
        return ERR_OK;
    }
    return tcp_send_more(tpcb);
}

static void err_cb(void *arg, err_t err) {
    (void)arg;
    xil_printf("TCP error callback: %d\r\n", err);
    g_finished = 1;
    g_pcb = NULL;
}

static err_t poll_cb(void *arg, struct tcp_pcb *tpcb) {
    (void)arg;
    return tcp_send_more(tpcb);
}

static err_t tcp_send_header(struct tcp_pcb *tpcb) {
    MsgHdr hdr;
    unsigned short name_len = (unsigned short)strlen(g_filename);
    u16_t need = (u16_t)(sizeof(MsgHdr) + name_len);

    if (tcp_sndbuf(tpcb) < need) return ERR_MEM;

    memcpy(hdr.magic, "SSC1", 4);
    hdr.type = g_type;
    hdr.rsv[0] = hdr.rsv[1] = hdr.rsv[2] = 0;
    hdr.length = g_file_size;
    hdr.name_len = name_len;
    hdr.rsv2 = 0;

    err_t e = tcp_write(tpcb, &hdr, sizeof(MsgHdr), TCP_WRITE_FLAG_COPY);
    if (e != ERR_OK) return e;

    e = tcp_write(tpcb, g_filename, name_len, TCP_WRITE_FLAG_COPY);
    if (e != ERR_OK) return e;

    g_target_to_ack += (unsigned int)need;
    g_header_sent = 1;
    return ERR_OK;
}

static err_t tcp_send_payload_chunk(struct tcp_pcb *tpcb) {
    if (g_payload_sent >= g_file_size) {
        g_done_queuing = 1;
        return ERR_OK;
    }

    unsigned int remaining = g_file_size - g_payload_sent;
    unsigned int to_read = (remaining > CHUNK_SIZE) ? CHUNK_SIZE : remaining;

    u16_t snd = tcp_sndbuf(tpcb);
    if (snd == 0) return ERR_MEM;

    if (to_read > snd) to_read = snd;
    if (to_read == 0) return ERR_MEM;

    UINT br = 0;
    FRESULT r = f_read(&fil, g_chunk, (UINT)to_read, &br);
    if (r != FR_OK) {
        xil_printf("f_read error: %d\r\n", r);
        g_done_queuing = 1;
        return ERR_VAL;
    }
    if (br == 0) {
        g_done_queuing = 1;
        return ERR_OK;
    }

    err_t e = tcp_write(tpcb, g_chunk, (u16_t)br, TCP_WRITE_FLAG_COPY);
    if (e != ERR_OK) {
        DWORD pos = f_tell(&fil);
        f_lseek(&fil, pos - br);
        return e;
    }

    g_payload_sent += (unsigned int)br;
    g_target_to_ack += (unsigned int)br;
    return ERR_OK;
}

static err_t tcp_send_more(struct tcp_pcb *tpcb) {
    err_t e;

    if (!g_header_sent) {
        e = tcp_send_header(tpcb);
        if (e == ERR_MEM) { tcp_output(tpcb); return ERR_OK; }
        if (e != ERR_OK) return e;
    }

    while (!g_done_queuing) {
        e = tcp_send_payload_chunk(tpcb);
        if (e == ERR_MEM) break;
        if (e != ERR_OK) return e;
    }

    tcp_output(tpcb);

    if (g_done_queuing) {
        xil_printf("All payload queued (%u bytes). Waiting for ACKs...\r\n", g_payload_sent);
    }
    return ERR_OK;
}

static err_t connected_cb(void *arg, struct tcp_pcb *tpcb, err_t err) {
    (void)arg;
    if (err != ERR_OK) {
        xil_printf("Connection failed: %d\r\n", err);
        return err;
    }

    xil_printf("Connected to server.\r\n");

    g_pcb = tpcb;
    tcp_sent(tpcb, sent_cb);
    tcp_err(tpcb, err_cb);
    tcp_poll(tpcb, poll_cb, 2);

    FRESULT r = f_open(&fil, g_filename, FA_READ);
    if (r != FR_OK) {
        xil_printf("File open error (%s): %d\r\n", g_filename, r);
        return ERR_VAL;
    }

    return tcp_send_more(tpcb);
}

static int send_file_over_tcp(const char *filename, unsigned char type) {
    g_filename = filename;
    g_type = type;

    g_file_size = 0;
    g_payload_sent = 0;
    g_bytes_acked_total = 0;
    g_target_to_ack = 0;

    g_header_sent = 0;
    g_done_queuing = 0;
    g_finished = 0;

    int st = stat_file(filename, &g_file_size);
    if (st != 0) {
        xil_printf("Cannot stat file %s. FATFS err=%d\r\n", filename, st);
        return -1;
    }

    xil_printf("Preparing to send %s (%u bytes)\r\n", filename, g_file_size);

    struct tcp_pcb *pcb = tcp_new();
    if (!pcb) {
        xil_printf("tcp_new failed\r\n");
        return -1;
    }

    ip_addr_t server_ip;
    ipaddr_aton(SERVER_IP, &server_ip);

    err_t e = tcp_connect(pcb, &server_ip, SERVER_PORT, connected_cb);
    if (e != ERR_OK) {
        xil_printf("tcp_connect error: %d\r\n", e);
        tcp_abort(pcb);
        return -1;
    }

    unsigned long long last_fast = gtimer_read64();
    unsigned long long last_slow = last_fast;
    unsigned long long last_arp  = last_fast;

    const unsigned long long fast_period = ms_to_ticks(250);
    const unsigned long long slow_period = ms_to_ticks(500);
    const unsigned long long arp_period  = ms_to_ticks(1000);

    while (!g_finished) {
        xemacif_input(&netif0);

        unsigned long long now = gtimer_read64();
        if ((now - last_fast) >= fast_period) { tcp_fasttmr(); last_fast = now; }
        if ((now - last_slow) >= slow_period) { tcp_slowtmr(); last_slow = now; }
        if ((now - last_arp)  >= arp_period)  { etharp_tmr();  last_arp  = now; }
    }

    if (fil.obj.fs) {
        f_close(&fil);
    }

    xil_printf("Send done.\r\n");
    return 0;
}

int main() {
    init_platform();
    xil_printf("--- START ---\r\n");

    FRESULT r = f_mount(&fatfs, "0:/", 1);
    if (r != FR_OK) {
        xil_printf("SD Mount Error: %d\r\n", r);
        cleanup_platform();
        return -1;
    }
    xil_printf("SD Mounted.\r\n");

    ip_addr_t ipaddr, netmask, gw;
    ipaddr_aton(LOCAL_IP_ADDR, &ipaddr);
    ipaddr_aton(NETMASK_ADDR, &netmask);
    ipaddr_aton(GATEWAY_ADDR, &gw);

    lwip_init();

    if (!xemac_add(&netif0, &ipaddr, &netmask, &gw, NULL, XPAR_XEMACPS_0_BASEADDR)) {
        xil_printf("MAC Init Error.\r\n");
        cleanup_platform();
        return -1;
    }

    netif_set_default(&netif0);
    netif_set_up(&netif0);

    xil_printf("IP Configured: %s\r\n", LOCAL_IP_ADDR);

    if (send_file_over_tcp("test.txt", 1) != 0) {
        xil_printf("TXT send failed.\r\n");
        cleanup_platform();
        return -1;
    }

    if (send_file_over_tcp("image.bmp", 2) != 0) {
        xil_printf("BMP send failed.\r\n");
        cleanup_platform();
        return -1;
    }

    xil_printf("--- ALL DONE ---\r\n");
    cleanup_platform();
    return 0;
}
