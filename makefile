CC = gcc
CFLAGS = -g -Wall -Wextra
SRC = $(wildcard *.c)
OUT = main.exe

all: $(OUT)

$(OUT): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OUT)

clean:
	del $(OUT)