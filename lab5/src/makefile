CC=gcc
CFLAGS=-I.

all : mutex withoutmutex factorial deadlock

deadlock :
	$(CC) -o deadlock deadlock.c -lpthread $(CFLAGS)
	
mutex : mutex.c
	$(CC)  mutex.c -o mutex -lpthread $(CFLAGS)

withoutmutex : withoutmutex.c
	$(CC) withoutmutex.c -o withoutmutex -lpthread $(CFLAGS)

factorial : factorial.c
	$(CC) factorial.c -o factorial -lpthread $(CFLAGS)

clean :
	rm -f mutex withoutmutex factorial deadlock