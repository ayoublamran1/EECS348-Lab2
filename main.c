#include <stdio.h>
#include "isEven.h"
#include "isOdd.h"

int main() {
    int num;
    printf("Enter an integer: ");
    scanf("%d", &num);
    
    if (isEven(num)) {
        printf("The number %d is even.\n", num);
    } else if (isOdd(num)) {
        printf("The number %d is odd.\n", num);
    }

    return 0;
}
    

