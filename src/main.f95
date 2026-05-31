subroutine helloworld(x)
  character(len=*), intent(in) :: x
  print *, x
end subroutine helloworld


program hello
  implicit none
  call helloworld("Hello, World!")
end program hello

