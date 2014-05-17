cmd_drivers/gpio/built-in.o :=  arm-eabi-ld -EL    -r -o drivers/gpio/built-in.o drivers/gpio/gpiolib.o drivers/gpio/gpio-omap.o drivers/gpio/gpio-tps65910.o 
