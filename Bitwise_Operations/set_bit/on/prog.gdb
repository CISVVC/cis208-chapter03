set width 0
set height 0
set verbose off
b main
run
stepi
stepi
printf "--------------------------------------\n"
printf "mov ax,0C123H:\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "sal ax, 1 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "sal ax, 1 :\n"
printf "registers:\n"
info registers
stepi
printf "--------------------------------------\n"
printf "sar ax, 1 :\n"
printf "registers:\n"
info registers
continue
printf "Done\n"
