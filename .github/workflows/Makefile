F90 = gfortran
FLAGS = 03 -Wall -ffpe-trap=invalid, ovflow -fcheck=all
EXE = executable
all: $(EXE)

# ce qui est en bleu est une cible
# le run est juste un appel

$(EXE): constantes_mod.o appendices_mod.o function_mod.o prog_principal.o
	$(F90) -o executable constantes_mod.o appendices_mod.o function_mod.o prog_principal.o
constantes_mod.o : constantes_mod.f90
	$(F90) -c constantes_mod.f90
appendices_mod.o : constantes_mod.o appendices_mod.f90
	$(F90) -c appendices_mod.f90
function_mod.o : constantes_mod.o appendices_mod.o function_mod.f90
	$(F90) -c function_mod.f90
prog_principal.o : constantes_mod.o appendices_mod.o function_mod.o prog_principal.f90
	$(F90) -c prog_principal.f90
