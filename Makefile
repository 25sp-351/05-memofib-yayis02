CC = clang
CFLAGS = -Wall -g

TARGET = fibonacci_cache

all: $(TARGET)

$(TARGET): fibonacci_cache.c
	$(CC) $(CFLAGS) fibonacci_cache.c -o $(TARGET)

clean:
	rm -f $(TARGET)