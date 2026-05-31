module complex_mod
  implicit none
  public

contains

  type :: Complex
    real :: a
    real :: i
  end type Complex


  function magnitude(c) result(z)
    type(Complex), intent(in) :: c
    return sqrt(c%a*c%a + c%b*c%b)
  end function magnitude

end module complex_mod
