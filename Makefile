CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -g



SRC = writer.c
OBJ = $(SRC:.c=.o)

TARGET = writer

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)
	
	
writer.o: writer.c
	$(CC) $(CFLAGS) -c -o writer.o writer.c
	
	
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
	
clean:
	rm -f $(TARGET) $(OBJ)
