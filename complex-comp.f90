PROGRAM calling_Ccomplex
   IMPLICIT NONE

   INTEGER :: r = 2
   REAL :: i = 3.1
   COMPLEX :: c, newc
   COMMON/fcomplex/ c, newc
   
   EXTERNAL :: tofcmplx
   
   c = complex(r, i)
   WRITE(*,*) "Fortran original complex"
   WRITE(*,*) c

   CALL toFcmplx(c, newc)
   WRITE(*,*) "New (incremented) complex from C "
   WRITE(*,*) newc
   
END PROGRAM calling_Ccomplex
