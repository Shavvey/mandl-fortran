program mandl
  use complex_mod
  type(Comp) :: c = Comp(3, 4)
  real :: mag  = 0
  mag = magnitude(c)
  print "(A, F6.2)", "Value:", mag
end program mandl
