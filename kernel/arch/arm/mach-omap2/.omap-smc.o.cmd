cmd_arch/arm/mach-omap2/omap-smc.o := arm-eabi-gcc -Wp,-MD,arch/arm/mach-omap2/.omap-smc.o.d  -nostdinc -isystem /linuxdrive/rowboat-android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/linuxdrive/rowboat-android/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /linuxdrive/rowboat-android/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-omap2/include -Iarch/arm/plat-omap/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float     -Wa,-march=armv7-a+sec   -c -o arch/arm/mach-omap2/omap-smc.o arch/arm/mach-omap2/omap-smc.S

source_arch/arm/mach-omap2/omap-smc.o := arch/arm/mach-omap2/omap-smc.S

deps_arch/arm/mach-omap2/omap-smc.o := \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/linkage.h \

arch/arm/mach-omap2/omap-smc.o: $(deps_arch/arm/mach-omap2/omap-smc.o)

$(deps_arch/arm/mach-omap2/omap-smc.o):
