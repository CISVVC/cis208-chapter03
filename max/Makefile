all : prog.o driver.o
	gcc -m32 -o prog prog.o driver.o asm_io.o

driver.o : driver.c
	gcc -m32 -c driver.c

prog.o : prog.asm
	nasm -f elf -g -F stabs prog.asm -o prog.o

run : prog
	@./prog

debug: prog
	@gdb --batch --command=prog.gdb --args ./prog | less

clean :
	@rm prog.o prog driver.o
