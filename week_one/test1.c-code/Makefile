CCFLAGS = -O0

all: test1

test1: test1.c Makefile

	icc $(CCFLAGS) -P test1.c
	icc $(CCFLAGS) -S test1.c
	icc $(CCFLAGS) -qopt-report=5 -c test1.c
	icc $(CCFLAGS) -o test1 test1.o

