CFLAGS = -Wall -g -I/usr/local/include/freetype2 -I/usr/include/freetype2 -I/opt/homebrew/include/freetype2

OBJS= ttf2ugui.o ugui.o

all: $(OBJS)
	cc -g -o ttf2ugui $(OBJS) -L/usr/local/lib -L/opt/homebrew/lib -lfreetype

clean:
	rm -f $(OBJS)
	rm -f ttf2ugui
