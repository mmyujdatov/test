CC=gcc
CFLAGS=-g -Wall

programa: principal.o sumar.o
	$(CC) $(CFLAGS) principal.o sumar.o -o programa

principal.o: principal.c sumar.h 
	$(CC) $(CFLAGS) -c principal.c -o principal.o

sumar.o: sumar.c sumar.h
	$(CC) $(CFLAGS) -c sumar.c -o sumar.o

