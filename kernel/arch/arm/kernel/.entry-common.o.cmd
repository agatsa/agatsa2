cmd_arch/arm/kernel/entry-common.o := arm-eabi-gcc -Wp,-MD,arch/arm/kernel/.entry-common.o.d  -nostdinc -isystem /linuxdrive/rowboat-android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/linuxdrive/rowboat-android/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /linuxdrive/rowboat-android/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-omap2/include -Iarch/arm/plat-omap/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float        -c -o arch/arm/kernel/entry-common.o arch/arm/kernel/entry-common.S

source_arch/arm/kernel/entry-common.o := arch/arm/kernel/entry-common.S

deps_arch/arm/kernel/entry-common.o := \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/old/mcount.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
    $(wildcard include/config/cpu/arm710.h) \
    $(wildcard include/config/oabi/compat.h) \
    $(wildcard include/config/arm/thumb.h) \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/aeabi.h) \
    $(wildcard include/config/alignment/trap.h) \
    $(wildcard include/config/seccomp.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unistd.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/ftrace.h \
    $(wildcard include/config/arm/unwind.h) \
  arch/arm/mach-omap2/include/mach/entry-macro.S \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/unwind.h \
  arch/arm/kernel/entry-header.S \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/linkage.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/linkage.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/ptrace.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/hwcap.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  arch/arm/include/generated/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  arch/arm/kernel/calls.S \

arch/arm/kernel/entry-common.o: $(deps_arch/arm/kernel/entry-common.o)

$(deps_arch/arm/kernel/entry-common.o):
