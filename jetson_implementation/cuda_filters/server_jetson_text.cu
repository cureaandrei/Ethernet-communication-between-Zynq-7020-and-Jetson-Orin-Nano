#include <iostream>
#include <fstream>
#include <cstring>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <cctype>

#define PORT 8080
#define BUFFER_SIZE 1024

void proceseaza_fisierul() {
    std::ifstream infile("primit_de_la_zybo.txt");
    std::ofstream outfile("fisier_modificat.txt");

    if (!infile.is_open() || !outfile.is_open()) {
        std::cerr << "Eroare la deschiderea fisierelor!" << std::endl;
        return;
    }

    char ch;
    while (infile.get(ch)) {
        outfile.put(toupper(ch));
    }

    infile.close();
    outfile.close();

    std::cout << "Procesare completa! Rezultatul in 'fisier_modificat.txt'" << std::endl;
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

    std::cout << "Serverul asculta pe portul " << PORT << std::endl;

    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen)) < 0) {
        perror("Eroare accept");
        return -1;
    }

    std::ofstream outfile("primit_de_la_zybo.txt", std::ios::binary);
    if (!outfile.is_open()) {
        std::cerr << "Eroare creare fisier!" << std::endl;
        close(new_socket);
        close(server_fd);
        return -1;
    }

    int valread;
    while (true) {
        memset(buffer, 0, BUFFER_SIZE);
        valread = read(new_socket, buffer, BUFFER_SIZE);
        
        if (valread <= 0) {
            break; 
        }

        outfile.write(buffer, valread);
    }

    outfile.close();
    close(new_socket);
    close(server_fd);

    std::cout << "Transfer finalizat." << std::endl;

    proceseaza_fisierul();

    return 0;
}