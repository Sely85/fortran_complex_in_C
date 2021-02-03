F90=gfortran
F90FLAGS=-c 

CXX=gcc
CFLAGS=-c -lc
LDFLAGS=
DEBUG=-g

OBJC=ccomplex.o
OBJF=complex-comp.o

main:
	$(CXX) $(CFLAGS) ccomplex.c -o $(OBJC) 
	$(F90) $(F90FLAGS) complex-comp.f90 -o $(OBJF)
	$(F90) -o test $(OBJC) $(OBJF)	

clean:
	rm -f *.o test
