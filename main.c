#include <stdio.h>

#include "config.h"

#ifdef WITH_HELP_INFO
void print_help() {
    printf("%s\n", HELP_MSG);
}
#else
void print_help() {}
#endif

void func();
#ifdef WITH_FUNC_V2
#include "func_v2.c.inc"
#else
#include "func_v1.c.inc"
#endif

#ifdef DRINK_WATER
void print_drink_water() {
    printf("make Drink=1\n");
}
#else
void print_drink_water() {}
#endif

//
init_mengmeng_feature();

int main() {
    print_help();
    func();
    print_drink_water();
}
