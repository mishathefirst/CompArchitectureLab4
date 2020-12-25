#include <reg51.h>

typedef unsigned int uint16_t;
typedef unsigned char uint8_t;

main() {
    uint16_t num, x, m = 100;
    uint8_t j;
	
    for (x = 0; x < 100; x++) {
        num = m + x;
        for( j = 0; j < 50; j++ )
            num = m + x * num / m;
        P3 = num;
    }
    while(1);
}










