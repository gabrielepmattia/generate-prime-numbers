#include "isPrime.h"
#include <pthread.h>

// Global variable will store if divisor was found
int divisor_found = 0;
// Global variable will store the number to check
LongNumber number = 0;

void* divide(void* args){
}

int isPrime(LongNumber n){
	number = n;

	if(n == 2 || n == 3){
		return 1;
	}

	if(n % 2 == 0 || n % 3 == 0){
		return 0;
	}

	int i = 5;
	int w = 2;

	while(i * i <= n){
		if(n % i == 0) return 0;
		
		i += w;
		w = 6 - w;
	}

	return 1;
}
