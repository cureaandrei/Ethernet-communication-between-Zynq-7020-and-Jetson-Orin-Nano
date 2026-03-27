import socket
import struct
import os
import subprocess
import ctypes

HOST = "0.0.0.0"
PORT = 8080

MAGIC = b"SSC1"
HDR_FMT = "<4sB3sIHH"   
rsv2(u16)
HDR_SIZE = struct.calcsize(HDR_FMT)

LIB_PATH = "./cuda_filters/libtextupper.so"
lib = None

def load_text_cuda_lib():
    global lib
    if lib is not None:
        return

    if not os.path.exists(LIB_PATH):
        print(f"[*] TXT CUDA lib missing: {LIB_PATH}")
        print("    Build it with:")
        print("    cd cuda_filters && nvcc -O2 -Xcompiler -fPIC -shared text_upper.cu -o libtextupper.so")
        return

    lib = ctypes.CDLL(LIB_PATH)
    lib.upper_cuda.argtypes = [ctypes.c_char_p, ctypes.c_int]
    lib.upper_cuda.restype = ctypes.c_int
    print(f"[+] Loaded CUDA TXT lib: {LIB_PATH}")

def process_text_cuda(path_in):
    load_text_cuda_lib()
    if lib is None:
        print("[*] Skipping TXT CUDA (lib not available).")
        return

    os.makedirs("out", exist_ok=True)
    out_path = os.path.join("out", "upper_" + os.path.basename(path_in))

    data = open(path_in, "rb").read()
    if len(data) == 0:
        open(out_path, "wb").write(b"")
        print(f"[+] TXT empty -> {out_path}")
        return

    buf = ctypes.create_string_buffer(data, len(data))
    rc = lib.upper_cuda(buf, len(data))
    if rc != 0:
        raise RuntimeError(f"upper_cuda failed rc={rc}")

    open(out_path, "wb").write(buf.raw)
    print(f"[+] CUDA text processed -> {out_path}")

def process_image_cpu(path_in):
    os.makedirs("out", exist_ok=True)
    out_path = os.path.join("out", "filtered_" + os.path.basename(path_in))

    subprocess.run(
        ["python3", "cuda_filters/img_cpu.py", path_in, out_path],
        check=True
    )
    print(f"[+] Image processed -> {out_path}")

def post_process(ftype, saved_path):
    try:
        if ftype == 2:
            process_image_cpu(saved_path)
        elif ftype == 1:
            process_text_cuda(saved_path)
        else:
            print(f"[*] Unknown type {ftype}, no processing.")
    except Exception as e:
        print(f"[-] Post-process error: {e}")

def recvall(sock, n):
    data = bytearray()
    while len(data) < n:
        chunk = sock.recv(n - len(data))
        if not chunk:
            return None
        data.extend(chunk)
    return bytes(data)

def recv_to_file(sock, out_path, total_len, chunk_size=64 * 1024):
    remaining = total_len
    with open(out_path, "wb") as f:
        while remaining > 0:
            to_read = chunk_size if remaining > chunk_size else remaining
            chunk = sock.recv(to_read)
            if not chunk:
                return False
            f.write(chunk)
            remaining -= len(chunk)
    return True

def handle_client(conn, addr):
    print(f"[+] Client connected: {addr}")
    os.makedirs("rx", exist_ok=True)

    while True:
        hdr_bytes = recvall(conn, HDR_SIZE)
        if hdr_bytes is None:
            print("[*] client closed (no header)")
            break

        magic, ftype, rsv, length, name_len, rsv2 = struct.unpack(HDR_FMT, hdr_bytes)
        if magic != MAGIC:
            print(f"[-] Bad magic: {magic} (expected {MAGIC})")
            break

        name_bytes = recvall(conn, name_len)
        if name_bytes is None:
            print("[-] client closed (no name)")
            break

        name = name_bytes.decode("utf-8", errors="replace")
        out_path = os.path.join("rx", name)

        print(f"[+] Receiving: type={ftype} name='{name}' bytes={length}")
        ok = recv_to_file(conn, out_path, length)
        if not ok:
            print("[-] client closed during payload")
            break

        print(f"[+] Saved: {out_path}")

        post_process(ftype, out_path)

    conn.close()
    print("[*] Client disconnected")

def main():
    print(f"[*] Listening on {HOST}:{PORT}")
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        s.bind((HOST, PORT))
        s.listen(5)

        while True:
            conn, addr = s.accept()
            handle_client(conn, addr)

if __name__ == "__main__":
    main()
