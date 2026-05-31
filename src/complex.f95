module complex_mod
  implicit none
  public

  type :: Comp
    real :: a
    real :: b
  end type Comp

contains

  function magnitude(c) result(z)
    type(Comp), intent(in) :: c
    real :: z
    z = sqrt(c%a*c%a + c%b*c%b)
  end function magnitude


end module complex_mod
