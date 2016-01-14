#include <stdio.h>
#include <math.h>
#include <values.h>

//Declare value to test against
const int EndianTest = 0x04030201;

//Check the endian nature of the machine
#define LITTLE_ENDIAN() (*((const char *) &EndianTest) == 0x01)

//Extract nth LSB from object stored in lvalue x
#define GET_BIT(x, n) ((((const char *) &x)[LITTLE_ENDIAN() ? (n) / CHARBITS : sizeof(x) - (n) / CHARBITS - 1] >> ((n) % CHARBITS)) & 0x01)

void FP_representation(float f)
{
    int i;

    i = FLOATBITS - 1;
    //First bit declaring sign
    putchar(GET_BIT((f), (i)) ? '1' : '0');
    //Next 8 bits for the excess 127 notation 
    printf(" ");
    for(i--; i >= 23; i--) 
        putchar(GET_BIT((f), (i)) ? '1' : '0');
    //Next 23 bits for the mantissa
    printf(" ");
    for(; i >= 0; i--)
        putchar(GET_BIT((f), (i)) ? '1' : '0');
    
}

int main()
{
    float f;
    while(scanf("%f", &f) == 1) {
        printf("%10g = %24.17g = ", f, f);
        FP_representation(f);
        printf("\n");
    }
    return 3301;
}
