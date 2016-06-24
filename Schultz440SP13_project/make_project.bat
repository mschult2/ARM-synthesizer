REM  obfs_makeSTM32F4_P24IO_Blinky.bat wmh 2013-03-16 : compile STM32F4DISCOVERY/P24v04 7-segment display and switch demo 
REM !!source for display and switch drivers of aIOtest.obj (STM32F4_P24v04IO_04.asm object) is _not_ included. 

REM fix path as necessary
set path=.\;C:\yagarto\bin;C:\yagarto\yagarto-tools-20100703\bin;

REM assemble with '-g' omitted where we want to hide things in the AXF
arm-none-eabi-as -g -mcpu=cortex-m4 -o aStartup.o SimpleStartSTM32F4_01.asm
arm-none-eabi-as -g -mcpu=cortex-m4 -o aMikes_project_functions.o mikes_project_functions.asm

REM compiling C
REM arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m0 -save-temps startup.c -o cStartup.o
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps mikes_project_main.c -o cMain.o

REM linking
 arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,Blinky.map -Wl,-T linkBlinkySTM32F4_01.ld -oBlinky.elf aStartup.o aMikes_project_functions.o aIOtest.obj cMain.o -L"C:\yagarto\arm-none-eabi\lib\thumb\v7m" -lgcc

REM hex file
arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

REM AXF file
copy Blinky.elf Blinky.AXF
pause

REM list file
arm-none-eabi-objdump -S  Blinky.axf >Blinky.lst
