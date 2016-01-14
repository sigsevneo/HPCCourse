#include <stdio.h>

int epsilon() {
    int pow = 0;
    float eps = 1;
    while (eps + 1 != 1) {
        eps /= 2;
        --pow;
    }
    return pow + 1;
}

int main() {
    printf("Epsilon: 2^ %d \n",epsilon());
    return 3301;
}