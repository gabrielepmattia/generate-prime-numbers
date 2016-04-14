#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int generatePrime(int n);
double getNanoTime();

int main(int argc, char* argv){
	int prime = generatePrime(10);
	double time = getNanoTime();
	printf("nanoseconds::%09ld", time);
}

int generatePrime(int n){
	char* rand_number_array = (char*)malloc(n*sizeof(char));
	int i = 0;
	for(i = 0; i < n; i++){
		srand(getNanoTime());
		rand_number_array[i] = rand() % 2;
		printf("number %d\n", rand_number_array[i]);
	}	
}

double getNanoTime(){
	struct timespec ts;
	timespec_get(&ts, 1);
	//char buff[100];
	//strftime(buff, sizeof buff, "%D %T", gmtime(&ts.tv_sec));
	//printf("Current time: %s.%09ld UTC\n", buff, ts.tv_nsec);
	return ts.tv_nsec;
}
