.SUFFIXES : .x .o .c .s
ROOT = /usr/local/arm_linux_4.2/
LIB = ../lib
INC =../include
CC=arm-linux-gcc -O2 -I$(INC) -static
LDFLAGS=-L$(LIB)
STRIP=arm-linux-strip

TARGET = fbtest
SRCS := fbtest.c 
LIBS= -lasound -lm -ldl -lgcc -lc -lpthread

all: 
	$(CC) $(LDFLAGS) $(SRCS) -o $(TARGET) $(LIBS) -static
	$(STRIP) $(TARGET) 
	cp fbtest /mnt/data

clean:
	rm -f *.o 
	rm -f fbtest 
