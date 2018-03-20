program test_rand
  integer,parameter :: seed1 = 4321
  real(kind = 8) :: x, y, p = 0., q = 0., a
  call srand(seed1)
  do
     x = rand()
     y = rand()
     q = q+1.
     a = x**2 + y**2
     if (a < 1) then
        p = p+1.
     end if
     print*,4*(p/q)
     if (q > 50000000) exit
  end do
  print*,4*(p/q)
end program test_rand
