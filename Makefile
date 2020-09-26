CC=gcc
CFLAGS=-O2

SRCS=lz77.c

lz77: lz77.o
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< 

clean:
	rm -f *.o lz77

.PHONY: clean
