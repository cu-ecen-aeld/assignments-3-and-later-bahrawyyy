CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -g



SRC = writer.c
OBJ = $(SRC:.c=.o)

TARGET = writer


OUTPUT_FILE = ../assignments/assignment2/fileresult.txt


all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)
	file $(TARGET) > $(OUTPUT_FILE)
	
	
writer.o: writer.c
	$(CC) $(CFLAGS) -c -o writer.o writer.c
	
	
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
	
clean:
	rm -f $(TARGET) $(OBJ)
