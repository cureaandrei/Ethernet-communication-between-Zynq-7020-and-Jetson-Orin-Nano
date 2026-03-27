#include <cuda_runtime.h>
#include <stdint.h>

__global__ void upper_kernel(char* s, int n) {
    int i = (int)(blockIdx.x * blockDim.x + threadIdx.x);
    if (i >= n) return;
    char c = s[i];
    if (c >= 'a' && c <= 'z') s[i] = c - 32;
}

extern "C" int upper_cuda(char* host, int n) {
    char* dev = nullptr;
    if (cudaMalloc(&dev, (size_t)n) != cudaSuccess) return -1;
    if (cudaMemcpy(dev, host, (size_t)n, cudaMemcpyHostToDevice) != cudaSuccess) { cudaFree(dev); return -2; }

    int bs = 256;
    int gs = (n + bs - 1) / bs;
    upper_kernel<<<gs, bs>>>(dev, n);
    if (cudaDeviceSynchronize() != cudaSuccess) { cudaFree(dev); return -3; }

    if (cudaMemcpy(host, dev, (size_t)n, cudaMemcpyDeviceToHost) != cudaSuccess) { cudaFree(dev); return -4; }
    cudaFree(dev);
    return 0;
}
