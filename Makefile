# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g

# Source files
SRC = main.c isEven.c isOdd.c

# Object files (derived from source files)
OBJ = main.o isEven.o isOdd.o

# Executable file
TARGET = lab_2

# Default target: compile the program
all: $(TARGET)

# Rule to link the object files to create the executable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Rule to compile .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule to remove object files and the executable
clean:
	rm -f $(OBJ) $(TARGET)