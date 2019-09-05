CFLAGS = -Wall
#target exe

all: main.o myfunc.o
	g++ $(CFLAGS) -o mything main.o myfunc.o

#rebuild  if either of the files below change
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

clean: 
	rm -f *.o mything
