CCFLAGS = -ipo 

all: test1

test1: test1.c Makefile

	icc $(CCFLAGS) -P test1.c
	icc $(CCFLAGS) -P add_external.c
	icc $(CCFLAGS) -S test1.c
	icc $(CCFLAGS) -S add_external.c
	icc $(CCFLAGS) -vec-report=5 -c test1.c
	icc $(CCFLAGS) -vec-report=5 -c add_external.c
	#icc $(CCFLAGS) -qopt-report=5 -c test1.c
	#icc $(CCFLAGS) -qopt-report=5 -c add_external.c
	icc $(CCFLAGS) -o test1 test1.o add_external.o

