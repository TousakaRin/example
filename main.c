#include <stdio.h>

#include "config.h"

void print_help() {
#ifdef WITH_HELP_INFO
    printf("%s\n", HELP_MSG);
#endif
}

void func();
#ifdef WITH_FUNC_V2
#include "func_v2.c.inc"
#else
#include "func_v1.c.inc"
#endif

void print_drink_water() {
#ifdef DRINK_WATER
    printf("make Drink=1\n");
#endif
}

int main() {
    print_help();
    func();
    print_drink_water();
}
