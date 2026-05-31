# == DECLARATIAONS == 
# Main object files to be compiled
OBJS=src/main.o
# Executable name
EXEC=mandl
# Fortran compiler (GNU fortran compiler)
FC=gfortran
# Fortran flags (GDB debugger symbols and compiler warnings flags for gfortran)
FFLAGS= -Wall -g

# Default Makefile target is the final executable
all: $(EXEC)

$(EXEC): $(OBJS)
	$(FC) $(FFLAGS) $(OBJS) -o $(EXEC)

%.o: %.f95
	$(FC) -c -o $@ $< $(FFLAGS)
