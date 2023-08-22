.PHONY: clean all

DRINK=
CFLAGS= -g

ifneq ($(DRINK),)
        CFLAGS += -DDRINK_WATER
endif

all:main

main.o:main.c config.h
        gcc -c main.c $(CFLAGS) -o main.o

main:main.o
        gcc main.o -o main

clean:
        rm -rf main main.o
