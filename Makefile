CC = gcc
CFLAGS = -O2
LIBS = -lm

default: generate-prime

isPrime.o: isPrime.c isPrime.h
	$(CC) $(CFLAGS) $(LIBS) -c isPrime.c

generate-prime.o: generate-prime.c
	$(CC) $(CFLAGS) $(LIBS) -c generate-prime.c

generate-prime: generate-prime.o isPrime.o
	$(CC) $(CFLAGS) $(LIBS) generate-prime.o isPrime.o -o generate-prime

clean:
	rm generate-prime
	rm *.o
