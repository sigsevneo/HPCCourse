#include<stdio.h>
#include<stdlib.h>

//Global variables
int g1=3;
int g2=301;

// function to test stack
void Call2() {
	int var1;
	int var2;
	printf("On Stack through Call2:\t\t %u %u\n",&var1,&var2);
}

void Call1() {
	int var1;
	int var2;
	printf("On Stack through Call1:\t\t %u %u\n",&var1,&var2);
	Call2();
}

int main(int argc, char* argv[], char* evnp[]) {
	
	printf("Printing addresses of all sections :-\n");
	//Command line arguments
	printf("Cmd Line and Env Var:\t\t %u %u %u\n",&argc,argv,evnp);
	
	//Local variables go to stack and stack extends downwards
	int var1;
	int var2;
	printf("On Stack through main:\t\t %u %u\n",&var1,&var2);
	Call1();
	
	//Dynamic Memory goes to heap and heap increases
	void *array_1 = malloc(5);
	void *array_2 = malloc(5);
	printf("Heap Data:\t\t\t %u\n",array_2);
	printf("Heap Data:\t\t\t %u\n",array_1);
	free(array_1);
	free(array_2);
	
	// Global Variables go below the heap in the 
	//initialized and uninitialized data segment
	printf("Global Variables:\t\t %u %u\n",&g1,&g2);
	
	//Static Code goes to Text section of memory
	printf("Text Data:\t\t\t %u %u\n ",main,Call1);
	return 3301;
}