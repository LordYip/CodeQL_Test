# Compiler
CC = gcc

# Compiler Flags (Enable warnings, optimization)
CFLAGS = -Wall -Wextra -pedantic -O2

# Find all .c files in the current directory
SRCS := $(wildcard *.c)
# Generate object files (.o) for each .c file
OBJS := $(SRCS:.c=.o)

# Output executable name
TARGET = my_program

# Default rule: Build the program
all: $(TARGET)

# Link the object files to create the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compile each .c file into a .o file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule: Remove compiled files
clean:
	rm -f $(OBJS) $(TARGET)
