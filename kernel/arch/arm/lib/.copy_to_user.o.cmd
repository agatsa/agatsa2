cmd_arch/arm/lib/copy_to_user.o := arm-eabi-gcc -Wp,-MD,arch/arm/lib/.copy_to_user.o.d  -nostdinc -isystem /linuxdrive/rowboat-android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/linuxdrive/rowboat-android/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /linuxdrive/rowboat-android/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-omap2/include -Iarch/arm/plat-omap/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float        -c -o arch/arm/lib/copy_to_user.o arch/arm/lib/copy_to_user.S

source_arch/arm/lib/copy_to_user.o := arch/arm/lib/copy_to_user.S

deps_arch/arm/lib/copy_to_user.o := \
    $(wildcard include/config/thumb2/kernel.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/linkage.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/hwcap.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  arch/arm/lib/copy_template.S \

arch/arm/lib/copy_to_user.o: $(deps_arch/arm/lib/copy_to_user.o)

$(deps_arch/arm/lib/copy_to_user.o):
