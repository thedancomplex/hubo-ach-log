default: all

CFLAGS := -I./include -g --std=gnu99
CC := gcc

BINARIES := hubo-ach-log
all : $(BINARIES)

LIBS := -lach 

hubo-ach-log: src/hubo-ach-log.o
	gcc -o $@ $< $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(BINARIES) src/*.o
