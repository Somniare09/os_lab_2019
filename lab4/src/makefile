CC=gcc
CFLAGS=-I.

all : parallel_min_max process_memory parallel_sum zombie

zombie : 
	$(CC) -o zombie zombie.c

parallel_sum : utils.o task5.h task5.o utils.h 
	$(CC) -o parallel_sum parallel_sum.c utils.o task5.o -lpthread $(CFLAGS)

process_memory : process_memory.c
	$(CC) -o process_memory process_memory.c $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)
	
task5.o: task5.h
	$(CC) -o task5.o -c task5.c $(CFLAGS)
    
utils.o : utils.h utils.c
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

clean :
	rm -f utils.o task5.o find_min_max.o parallel_min_max process_memory parallel_sum parallel_sum.o zombie