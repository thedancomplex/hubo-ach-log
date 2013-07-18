default: all

CFLAGS := -I./include -g --std=gnu99
CC := gcc

BINARIES := hubo-log
all : $(BINARIES)

LIBS := -lach 

hubo-log: src/hubo-log.o
	gcc -o $@ $< $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(BINARIES) src/*.o
