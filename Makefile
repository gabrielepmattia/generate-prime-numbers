CC = gcc
CFLAGS = -O2

default: generate-prime

generate-prime : generate-prime.c
	$(CC) $(CFLAGS) generate-prime.c -o generate-prime

clean:
	rm generate-prime
