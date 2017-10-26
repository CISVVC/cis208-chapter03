set width 0
set height 0
set verbose off
b main
run
stepi
printf "Registers at start:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "mov ax,0C123H:\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "shl ax, 1 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "shr ax, 1 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "shr ax, 1 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "mov ax, 0c123H :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "shl ax, 2 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "mov cl, 3 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "shr ax, cl :\n"
printf "registers:\n"
info registers
printf "Done\n"
