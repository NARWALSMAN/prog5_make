
CC=gcc
CFLAGS=-Wall -Werror

essai_pile: essai_pile.o pile_io.o pile.o
	$(CC) -o essai_pile essai_pile.o pile_io.o pile.o

essai_pile.o: essai_pile.c pile_io.h pile.h
	$(CC) $(CFLAGS) -c essai_pile.o essai_pile.c

pile_io.o: pile_io.c pile_io.h pile.h
	$(CC) $(CFLAGS) -c pile_io.o pile_io.c

pile.o: pile.c pile.h
	$(CC) $(CFLAGS) -c pile.o pile.c
