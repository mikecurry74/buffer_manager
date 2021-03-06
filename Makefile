
CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=buffer_example.c buffer.c
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=buffer_example

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(EXECUTABLE) *.o
