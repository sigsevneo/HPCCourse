#include<stdio.h>
long long int factorial(long long int n);
int main()
{
    int n;
    printf("Enter an positive integer: ");
    for(int i=0; i<5; i++)
    	scanf("%ld",&x[i]);
    printf("Enter an positive integer: ");
    for(int i=0; i<5; i++)
    	scanf("%ld",&y[i]);
    for(int i=0; i<5; i++)
    	z[i]=x[i]+y[i];
    for(int i=0; i<20; i++)
    	printf("%ld \t",z[i]);
    	
    return 3301;
}
long long int factorial(long long int n)
{
    if(n!=1)
     return n*factorial(n-1);
}