#Make file

#compiler with flags

CC = gcc

DEPEND = mkdep

CFLAGS = -O2 -Wall

LD = $(CC)

#header files

HFILES =\
	boolean.h \
	mystrings.h\
	Person.h

#source files

CFILES =\
	mystrings.c\
	Person.c\
	NameAge.c

#object files obtained from the source file
OFILES = $(CFILES:%.c=%.o)

#set build rules for the program
NameAge: $(OFILES)
	$(LD) -o $@ $(OFILES)

mystrings.o: mystrings.c mystrings.h

Person.o: Person.c Person.h

NameAge.o: NameAge.c Person.h

depend:
	$(DEPEND) $(CFLAGS) $(CFILES)
clean:
	rm -f *.o