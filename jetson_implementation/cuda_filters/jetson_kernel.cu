#include <iostream>
#include <fstream>
#include <cstring>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <cuda_runtime.h>

#define PORT 8080
#define BUFFER_SIZE 1024

typedef struct {
    unsigned int width;
    unsigned int height;
    unsigned int size_in_bytes;
} ImageProtocolHeader;

__global__ void invertImageKernel(unsigned char *image_data, int total_pixels) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < total_pixels) {
        image_data[idx] = 255 - image_data[idx];
    }
}

void proceseaza_imagine_cuda(const char* input_file, const char* output_file) {
    printf("\n[CUDA] Incep procesarea imaginii: %s\n", input_file);

    FILE *fIn = fopen(input_file, "rb");
    if (fIn == NULL) {
        printf("[CUDA] Eroare: Nu pot deschide fisierul primit!\n");
        return;
    }

    unsigned char header[54];
    fread(header, sizeof(unsigned char), 54, fIn);

    int fileSize = *(int*)&header[2];
    int dataSize = fileSize - 54;
    
    unsigned char *h_data = (unsigned char*)malloc(dataSize);
    fread(h_data, sizeof(unsigned char), dataSize, fIn);
    fclose(fIn);

    unsigned char *d_data;
    cudaMalloc((void**)&d_data, dataSize);
    cudaMemcpy(d_data, h_data, dataSize, cudaMemcpyHostToDevice);

    int threadsPerBlock = 256;
    int blocksPerGrid = (dataSize + threadsPerBlock - 1) / threadsPerBlock;

    printf("[CUDA] Lansare Kernel (%d blocuri)...\n", blocksPerGrid);
    invertImageKernel<<<blocksPerGrid, threadsPerBlock>>>(d_data, dataSize);
    cudaDeviceSynchronize();

    cudaMemcpy(h_data, d_data, dataSize, cudaMemcpyDeviceToHost);

    FILE *fOut = fopen(output_file, "wb");
    fwrite(header, sizeof(unsigned char), 54, fOut);
    fwrite(h_data, sizeof(unsigned char), dataSize, fOut);
    fclose(fOut);

    cudaFree(d_data);
    free(h_data);
    printf("[CUDA] Gata! Rezultatul salvat in: %s\n", output_file);
}

int main() {
    int server_fd, new_socket;
    struct sockaddr_in address;
    int opt = 1;
    int addrlen = sizeof(address);
    char buffer[BUFFER_SIZE] = {0};

    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
        perror("Eroare socket");
        return -1;
    }
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
        perror("Eroare setsockopt");
        return -1;
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);

    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0) {
        perror("Eroare bind");
        return -1;
    }
    if (listen(server_fd, 3) < 0) {
        perror("Eroare listen");
        return -1;
    }

    std::cout << "[SERVER] Astept conexiunea pe portul " << PORT << "..." << std::endl;

    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen)) < 0) {
        perror("Eroare accept");
        return -1;
    }

    ImageProtocolHeader header;
    int bytes_read = recv(new_socket, &header, sizeof(ImageProtocolHeader), 0);
    if (bytes_read != sizeof(ImageProtocolHeader)) {
        std::cerr << "Eroare Header!" << std::endl;
        close(new_socket);
        close(server_fd);
        return -1;
    }

    std::cout << "[SERVER] Header primit: " << header.width << "x" << header.height << " (" << header.size_in_bytes << " bytes)" << std::endl;

    std::ofstream outfile("imagine_primita.bmp", std::ios::binary);
    long total_received = 0;
    int valread;

    while (total_received < header.size_in_bytes) {
        memset(buffer, 0, BUFFER_SIZE);
        valread = read(new_socket, buffer, BUFFER_SIZE);
        if (valread <= 0) break;
        outfile.write(buffer, valread);
        total_received += valread;
    }
    outfile.close();
    close(new_socket);
    close(server_fd);
    
    std::cout << "[SERVER] Transfer complet." << std::endl;

    proceseaza_imagine_cuda("imagine_primita.bmp", "imagine_procesata.bmp");

    return 0;
}