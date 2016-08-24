#	Leandro Mundim
#	June 8, 2014

CC        = gcc
CFLAGS    = -c -Wall
LDFLAGS   = -ggdb -std=c99 -Werror -Wformat=0
FLAGS     = -lm
INCLUDE   = -I./include
OBJDIR    = obj/
OBJLIST   = triangulate.o nofit.o geometry.o data.o main.o 
OBJECTS   = $(addprefix $(OBJDIR), $(OBJLIST) )

all:ex

ex: $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(FLAGS)

$(OBJECTS): obj/%.o: src/%.c
	$(CC) $(CFLAGS) $? -o $@ $(INCLUDE)

clean:
	rm -rf obj/*.o
