CC = gcc
CFLAGS = -O2
LIBS = -lm

default: generate-prime

isPrime.o: isPrime.c isPrime.h
	$(CC) $(CFLAGS) $(LIBS) -c isPrime.c

generate-prime : generate-prime.c isPrime.o
	$(CC) $(CFLAGS) $(LIBS) generate-prime.c isPrime.o -o generate-prime

clean:
	rm generate-prime
