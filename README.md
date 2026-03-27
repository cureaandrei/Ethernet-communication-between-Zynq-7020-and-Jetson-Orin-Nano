# Ethernet Communication between Zybo Z7-20 and Jetson Orin Nano

## **Overview**

This project implements a complete **Ethernet communication pipeline** between a **Xilinx Zybo Z7-20 FPGA** board and an **NVIDIA Jetson Orin Nano** development platform, enabling efficient data transfer and GPU-accelerated processing.

The system transmits files (images and text) from the FPGA over **TCP/IP Ethernet**, where they are received, reconstructed, and processed on the Jetson using **CUDA**-based GPU acceleration. The project integrates hardware design, embedded software, network communication, and parallel computing into a single unified pipeline.

---

## **System Architecture**

### **Data Flow**
```
BRAM (FPGA PL) → DDR Memory → SD Card → TCP/IP Ethernet → Jetson Orin Nano → CUDA Processing
```

### **Hardware Side (Zybo Z7-20)**
- **ZYNQ7 Processing System** — ARM processor running the embedded application
- **AXI SmartConnect** — interconnects the PS with PL peripherals via the AXI bus
- **4× AXI BRAM Controllers** — connect the AXI bus to Block RAM for fast intermediate storage
- **AXI GPIO** — provides `start_conversion` and `finished_conversion` handshake signals between PS and PL
- **Processor System Reset** — manages clock synchronization and reset for all PL blocks

### **Software Side (Vitis — ARM Application)**
- Mounts the SD card using **FATFS** and reads files incrementally
- Configures a static IP interface and connects to the Jetson as a **TCP client**
- Sends a structured **message header** (magic, type, length, filename) before each file payload
- Transmits file contents in **1024-byte chunks** using **lwIP TCP**
- Confirms full delivery via TCP ACK before closing the connection

### **Jetson Side**
- Runs a **TCP server** listening on port `8080`
- Reconstructs received files by parsing headers and assembling chunks into complete files
- Applies **CUDA-accelerated filters** to the received data

---

## **Features**

- Full hardware block design implemented in **Vivado** with AXI interconnect
- Embedded C application on the Zynq ARM core developed in **Vitis**
- Reliable file transfer over **TCP/IP** using the **lwIP** network stack
- Structured packet protocol with custom message headers for file metadata
- File reconstruction on the Jetson with integrity validation via magic bytes
- **CUDA GPU processing** on received files:
  - **Image processing (GPU)** — grayscale conversion, Gaussian Blur, Sobel edge detection via OpenCV GpuMat
  - **Image processing (CPU)** — reference implementation for performance comparison
  - **Text processing (GPU)** — parallel uppercase conversion using a custom CUDA kernel

---

## **CUDA Processing Pipeline**

### **Image Processing — GPU (`main.cpp`)**
1. Read image into CPU memory
2. Transfer to GPU via `GpuMat`
3. Convert to grayscale
4. Apply Gaussian Blur
5. Apply Sobel edge detection (X and Y axes, then combined)
6. Copy result back to CPU and save

### **Image Processing — CPU (`img_cpu.py`)**
Reference implementation using OpenCV on CPU — grayscale conversion + Gaussian Blur. Used for benchmarking against the GPU pipeline.

### **Text Processing — GPU (`text_upper.cu`)**
Custom CUDA kernel where each thread processes one character — converts lowercase letters to uppercase in parallel. Includes a C/C++ wrapper for memory allocation, data transfer, kernel launch, and result retrieval.

---

## **Network Configuration**

| Parameter | Value |
|-----------|-------|
| Zybo IP (client) | `192.168.1.11` |
| Jetson IP (server) | `192.168.1.10` |
| Port | `8080` |
| Protocol | TCP |
| Transfer chunk size | 1024 bytes |

---


## **Technologies Used**

- **VHDL** — hardware description for PL logic
- **C/C++** — embedded application (Vitis) and CUDA host code
- **Python** — CPU-side image processing reference
- **Vivado** — hardware synthesis and block design
- **Vitis** — embedded software development for Zynq ARM
- **lwIP** — lightweight TCP/IP stack for embedded Ethernet
- **FATFS** — FAT filesystem for SD card access
- **CUDA** — GPU parallel processing on Jetson
- **OpenCV (GpuMat)** — GPU-accelerated image processing

---

## **Learning Objectives**

This project was created to deepen understanding of:

- Hardware-software co-design on the Zynq platform (PS + PL)
- AXI bus architecture and peripheral integration
- Embedded networking with TCP/IP on bare-metal systems
- File transfer protocol design for embedded systems
- GPU parallel programming with CUDA
- Edge computing pipelines combining FPGA and GPU platforms
