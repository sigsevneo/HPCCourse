#include<stdio.h>

int main()
{
    int i;
    int n=16384;
    int x[n],y[n],z[n];
    printf("Enter an positive integer: ");
    for(i=0; i<n; i++)
    	scanf("%d",&x[i]);
    printf("Enter an positive integer: ");
    for(i=0; i<n; i++)
    	scanf("%d",&y[i]);
    for(i=0; i<n; i++)
    	z[i]=x[i]+y[i];
    for(i=0; i<n; i++)
    	printf("%d \t",z[i]);
 	printf("\n");   	
    return 3301;
}