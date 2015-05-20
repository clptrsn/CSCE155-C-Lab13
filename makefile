
#Example makefile

#define a variable called CC
CC = gcc 
XML_INCLUDE = -I/usr/include/libxml2
XML_LIB = -lxml2 -lz -lm

#gcc `xml2-config --cflags` unlRSS.c `xml2-config --libs`

mlbDemo: mlb_demo.c mlb.o
	$(CC) -o mlbDemo mlb.o mlb_demo.c

mlb.o: mlb.h mlb.c
	$(CC) -c -o mlb.o mlb.c

