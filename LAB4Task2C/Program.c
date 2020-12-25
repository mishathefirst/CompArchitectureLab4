#include <reg51.h>

main() {
    float x, y;
    for (x = 0; x < 1; x += 0.1){
        y = 1 / (1 - x);
			P3 = y;
    }
    while(1);
}