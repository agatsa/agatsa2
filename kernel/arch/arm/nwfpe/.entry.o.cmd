cmd_arch/arm/nwfpe/entry.o := arm-eabi-gcc -Wp,-MD,arch/arm/nwfpe/.entry.o.d  -nostdinc -isystem /linuxdrive/rowboat-android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/linuxdrive/rowboat-android/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /linuxdrive/rowboat-android/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-omap2/include -Iarch/arm/plat-omap/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float        -c -o arch/arm/nwfpe/entry.o arch/arm/nwfpe/entry.S

source_arch/arm/nwfpe/entry.o := arch/arm/nwfpe/entry.S

deps_arch/arm/nwfpe/entry.o := \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \

arch/arm/nwfpe/entry.o: $(deps_arch/arm/nwfpe/entry.o)

$(deps_arch/arm/nwfpe/entry.o):
