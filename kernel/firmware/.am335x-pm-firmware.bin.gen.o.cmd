cmd_firmware/am335x-pm-firmware.bin.gen.o := arm-eabi-gcc -Wp,-MD,firmware/.am335x-pm-firmware.bin.gen.o.d  -nostdinc -isystem /linuxdrive/rowboat-android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/linuxdrive/rowboat-android/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /linuxdrive/rowboat-android/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-omap2/include -Iarch/arm/plat-omap/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float        -c -o firmware/am335x-pm-firmware.bin.gen.o firmware/am335x-pm-firmware.bin.gen.S

source_firmware/am335x-pm-firmware.bin.gen.o := firmware/am335x-pm-firmware.bin.gen.S

deps_firmware/am335x-pm-firmware.bin.gen.o := \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \

firmware/am335x-pm-firmware.bin.gen.o: $(deps_firmware/am335x-pm-firmware.bin.gen.o)

$(deps_firmware/am335x-pm-firmware.bin.gen.o):
