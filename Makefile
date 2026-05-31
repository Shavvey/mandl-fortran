# == DECLARATIAONS == #

# Main object files to be compiled
OBJS=src/complex.o src/main.o
# Executable name
EXEC=mandl
# Fortran compiler (GNU fortran compiler)
FC=gfortran
# Fortran flags (GDB debugger symbols and compiler warnings flags for gfortran)
FFLAGS= -Wall -g

# == TARGETS == #

# Default Makefile target is the final executable
all: $(EXEC)

# Build the main executable using the objects
$(EXEC): $(OBJS)
	$(FC) $(FFLAGS) $(OBJS) -o $(EXEC)

# Build all the objects from the source files
%.o: %.f95
	$(FC) -c -o $@ $< $(FFLAGS)

.PHONY: clean
clean:
	rm $(OBJS) $(EXEC)
