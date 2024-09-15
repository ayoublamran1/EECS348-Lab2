#!/bin/bash
#include <stdio.h>
#include <stdlib.h>

void copyFile(const char *source, const char *destination) {
    FILE *srcFile, *destFile;
    char buffer[1024];
    size_t bytesRead;

    srcFile = fopen(source, "rb");
    if (srcFile == NULL) {
        perror("Error opening source file");
        exit(EXIT_FAILURE);
    }

    destFile = fopen(destination, "wb");
    if (destFile == NULL) {
        perror("Error opening destination file");
        fclose(srcFile);
        exit(EXIT_FAILURE);
    }

     while ((bytesRead = fread(buffer, 1, sizeof(buffer), srcFile)) > 0) {
        fwrite(buffer, 1, bytesRead, destFile);
    }

    fclose(srcFile);
    fclose(destFile);

    printf("File copied successfully.\n");
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s <source> <destination>\n", argv[0]);
        return EXIT_FAILURE;
    }

    copyFile(argv[1], argv[2]);

    return EXIT_SUCCESS;
}