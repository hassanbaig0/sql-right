CC = gcc
CFLAGS = -g -O0 -Wall -Wextra -fsanitize=address,undefined -fno-omit-frame-pointer
SRC = $(wildcard *.c)
OUT = main

.PHONY: all build run clean

all: build

build: $(OUT)

$(OUT): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OUT)

run: build
	./$(OUT)

clean:
	rm -f $(OUT)