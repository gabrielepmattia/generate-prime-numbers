CC := gcc
CFLAGS := -O2
LIBS := -lm
OBJ_DIR := obj
BIN_DIR := bin

default: generate-dirs generate-prime

generate-dirs:
	mkdir -p $(OBJ_DIR)
	mkdir -p $(BIN_DIR)

$(OBJ_DIR)/isPrime.o: isPrime.c isPrime.h
	$(CC) $(CFLAGS) $(LIBS) -c isPrime.c -o ./$(OBJ_DIR)/isPrime.o

$(OBJ_DIR)/generate-prime.o: generate-prime.c
	$(CC) $(CFLAGS) $(LIBS) -c generate-prime.c -o ./$(OBJ_DIR)/generate-prime.o

generate-prime: $(OBJ_DIR)/generate-prime.o $(OBJ_DIR)/isPrime.o
	$(CC) $(CFLAGS) $(LIBS) $(wildcard ./$(OBJ_DIR)/*.o) -o $(BIN_DIR)/generate-prime

clean:
	rm -f generate-prime
	rm -f *.o
	rm -rf bin/
	rm -rf obj/
