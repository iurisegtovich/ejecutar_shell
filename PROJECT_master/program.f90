program teste
!noarg
!check:
!print*,
!segmentation fault
!file not found
!end of file
!pause
!stop
!end program

implicit none

integer case
integer number
character(len=1) arg

print*, "IARGC()", IARGC()

call getarg(1,arg)

read(arg,*) case

print*, "case", case

select case(case)

case(1)
print*, "ejecutar shell"
case(2)
open(122,file='file1.txt', status='old')
case(3)
open(123,file='file1.txt', status='replace')
read(123, *) number
case(4)
pause
case(5)
stop
case default
continue
end select

end program