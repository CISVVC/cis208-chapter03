prog : prog.o
	gcc -m32 -o prog prog.o asm_io.o

prog.o : prog.asm
	nasm -f elf -g -F stabs prog.asm -o prog.o

run : prog
	@./prog

debug: prog
	@gdb --batch --command=prog.gdb --args ./prog | less
clean :
	@rm prog.o prog
