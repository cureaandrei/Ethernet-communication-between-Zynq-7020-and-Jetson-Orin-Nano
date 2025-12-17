/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

//zybo is the client in my case
#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "lwip/tcp.h"
#include "lwip/init.h"
#include "xil_printf.h"
#include "xsdps.h"
#include "ff.h"
#include "xil_cache.h"

#define LOCAL_IP_ADDR "192.168.1.11"
#define NETMASK_ADDR  "255.255.255.0"
#define GATEWAY_ADDR  "192.168.1.1"

#define SERVER_IP     "192.168.1.10"
#define SERVER_PORT   8080

typedef struct {
    unsigned int width;
    unsigned int height;
    unsigned int size_in_bytes;
} ImageProtocolHeader;

static FATFS fatfs;
static FIL fil;
char buffer[1024];
struct netif server_netif;

void send_text_file(struct tcp_pcb *tpcb) 
{
    char *TextFileName = "test.txt";
    FRESULT Res;
    unsigned int NumBytesRead; 
    
    Res = f_open(&fil, TextFileName, FA_READ);
    if (Res) {
        return;
    }

    while (1) {
        Res = f_read(&fil, buffer, sizeof(buffer), &NumBytesRead);
        if (Res != 0 || NumBytesRead == 0) break;
        
        err_t err = tcp_write(tpcb, buffer, NumBytesRead, 1);
        if (err != ERR_OK) {
            break;
        }
        tcp_output(tpcb);
    }
    f_close(&fil);
    tcp_close(tpcb);
}

int get_bmp_info(FIL *fp, unsigned int *w, unsigned int *h, unsigned int *s) {
    unsigned char header[54];
    unsigned int bytesRead;
    FRESULT res;

    res = f_lseek(fp, 0);
    if (res != FR_OK) return -1;

    res = f_read(fp, header, 54, &bytesRead);
    if (res != FR_OK || bytesRead < 54) return -1;

    *w = header[18] | (header[19] << 8) | (header[20] << 16) | (header[21] << 24);
    *h = header[22] | (header[23] << 8) | (header[24] << 16) | (header[25] << 24);
    *s = header[2] | (header[3] << 8) | (header[4] << 16) | (header[5] << 24);

    f_lseek(fp, 0);
    return 0;
}

void send_image_file(struct tcp_pcb *tpcb) 
{
    char *ImageFileName = "image.bmp";
    FRESULT Res;
    unsigned int NumBytesRead;
    ImageProtocolHeader protocolHeader;

    Res = f_open(&fil, ImageFileName, FA_READ);
    if (Res) {
        return;
    }

    if (get_bmp_info(&fil, &protocolHeader.width, &protocolHeader.height, &protocolHeader.size_in_bytes) != 0) {
        f_close(&fil);
        return;
    }

    err_t err = tcp_write(tpcb, &protocolHeader, sizeof(ImageProtocolHeader), 1);
    if (err != ERR_OK) {
        f_close(&fil);
        return;
    }
    tcp_output(tpcb);

    while (1) {
        Res = f_read(&fil, buffer, sizeof(buffer), &NumBytesRead);
        if (Res != 0 || NumBytesRead == 0) break;
        
        err = tcp_write(tpcb, buffer, NumBytesRead, 1);
        if (err != ERR_OK) {
            break;
        }
        tcp_output(tpcb);
    }

    f_close(&fil);
    tcp_close(tpcb);
}

err_t connected_callback(void *arg, struct tcp_pcb *tpcb, err_t err) 
{
    if (err != ERR_OK) {
        return err;
    }
    
    send_image_file(tpcb);
    
    return ERR_OK;
}

int main()
 {
    init_platform();

    FRESULT Res = f_mount(&fatfs, "0:/", 1);
    if (Res != FR_OK) {
        return -1;
    }

    ip_addr_t ipaddr, netmask, gw;
    ipaddr_aton(LOCAL_IP_ADDR, &ipaddr);
    ipaddr_aton(NETMASK_ADDR, &netmask);
    ipaddr_aton(GATEWAY_ADDR, &gw);

    lwip_init();

    if (!xemac_add(&server_netif, &ipaddr, &netmask, &gw, NULL, XPAR_XEMACPS_0_BASEADDR)) {
        return -1;
    }

    netif_set_default(&server_netif);
    netif_set_up(&server_netif);

    struct tcp_pcb *pcb = tcp_new();
    ip_addr_t server_ip;
    ipaddr_aton(SERVER_IP, &server_ip);

    tcp_connect(pcb, &server_ip, SERVER_PORT, connected_callback);

    while (1) {
        xemacif_input(&server_netif);
    }

    cleanup_platform();
    return 0;
}