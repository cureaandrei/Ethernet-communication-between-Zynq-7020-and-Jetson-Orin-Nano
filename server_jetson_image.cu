#include <iostream>
#include <fstream>
#include <cstring>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>

#define PORT 8080
#define BUFFER_SIZE 1024

typedef struct {
    unsigned int width;
    unsigned int height;
    unsigned int size_in_bytes;
} ImageProtocolHeader;

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

    std::cout << "Serverul de IMAGINI asculta pe portul " << PORT << std::endl;

    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen)) < 0) {
        perror("Eroare accept");
        return -1;
    }

    std::cout << "Zybo conectat. Astept antetul (Header)..." << std::endl;

    ImageProtocolHeader header;
    int bytes_read = recv(new_socket, &header, sizeof(ImageProtocolHeader), 0);

    if (bytes_read != sizeof(ImageProtocolHeader)) {
        std::cerr << "Eroare: Nu am primit header-ul corect!" << std::endl;
        close(new_socket);
        close(server_fd);
        return -1;
    }

    std::cout << "---------------------------------" << std::endl;
    std::cout << "PROTOCOL HEADER DETECTAT:" << std::endl;
    std::cout << "Latime: " << header.width << " px" << std::endl;
    std::cout << "Inaltime: " << header.height << " px" << std::endl;
    std::cout << "Dimensiune: " << header.size_in_bytes << " bytes" << std::endl;
    std::cout << "---------------------------------" << std::endl;

    std::ofstream outfile("imagine_primita.bmp", std::ios::binary);
    if (!outfile.is_open()) {
        std::cerr << "Eroare la crearea fisierului de iesire!" << std::endl;
        close(new_socket);
        close(server_fd);
        return -1;
    }

    long total_received = 0;
    int valread;
    
    std::cout << "Incep receptia datelor..." << std::endl;

    while (total_received < header.size_in_bytes) {
        memset(buffer, 0, BUFFER_SIZE);
        
        valread = read(new_socket, buffer, BUFFER_SIZE);
        if (valread <= 0) {
            break;
        }

        outfile.write(buffer, valread);
        total_received += valread;
        
        if (total_received % 10240 == 0) {
             std::cout << "\rProgres: " << total_received << " / " << header.size_in_bytes << " bytes" << std::flush;
        }
    }

    std::cout << "\nTransfer complet!" << std::endl;
    
    outfile.close();
    close(new_socket);
    close(server_fd);

    return 0;
}