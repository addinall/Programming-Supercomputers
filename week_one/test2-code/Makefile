CCFLAGS = -unroll-agressive

all: test2

# change this file to assemble add_external
# also add a clean
#
test2: test2.c add_external.c Makefile

	icc $(CCFLAGS) -P test2.c
	#icc $(CCFLAGS) -P add_external.c
	icc $(CCFLAGS) -S test2.c
	#icc $(CCFLAGS) -S add_external.c
	#icc $(CCFLAGS) -vec-report=3 -c test2.c
	#icc $(CCFLAGS) -vec-report=3 -c add_external.c
	icc $(CCFLAGS) -qopt-report=5 -c test2.c
	#icc $(CCFLAGS) -qopt-report=5 -c add_external.c
	icc $(CCFLAGS) -qopt-report=5 -c add_external.c
	icc $(CCFLAGS) -o test2 test2.o add_external.o

clean:
	-rm *.o
	-rm *.optrpt
	-rm *.i
	-rm test2.s		# we are messing around with asm by hand
	-rm test2
