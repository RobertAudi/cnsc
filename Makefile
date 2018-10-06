SRCS = types.c \
       git.c \
       menu.c \
       log.c \
       main.c
TARGET = cnsc
CFLAGS = -Wall -O3
LDFLAGS =
DESTDIR =
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

OBJ = $(SRCS:.c=.o)

all: $(TARGET)

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $@ $(LDFLAGS)

clean:
	rm -f $(TARGET) $(OBJ)

install: $(TARGET)
	mkdir -p $(DESTDIR)$(BINDIR)
	install -m0755 $< $(DESTDIR)$(BINDIR)

.PHONY: all clean install
