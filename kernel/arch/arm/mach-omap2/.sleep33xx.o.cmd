cmd_arch/arm/mach-omap2/sleep33xx.o := arm-eabi-gcc -Wp,-MD,arch/arm/mach-omap2/.sleep33xx.o.d  -nostdinc -isystem /linuxdrive/rowboat-android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/linuxdrive/rowboat-android/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /linuxdrive/rowboat-android/kernel/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-omap2/include -Iarch/arm/plat-omap/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float     -Wa,-march=armv7-a+sec   -c -o arch/arm/mach-omap2/sleep33xx.o arch/arm/mach-omap2/sleep33xx.S

source_arch/arm/mach-omap2/sleep33xx.o := arch/arm/mach-omap2/sleep33xx.S

deps_arch/arm/mach-omap2/sleep33xx.o := \
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
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
  include/linux/const.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /linuxdrive/rowboat-android/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  arch/arm/include/generated/asm/sizes.h \
  include/asm-generic/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
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
  arch/arm/mach-omap2/include/mach/io.h \
  arch/arm/plat-omap/include/plat/io.h \
  arch/arm/mach-omap2/include/mach/hardware.h \
  arch/arm/plat-omap/include/plat/hardware.h \
    $(wildcard include/config/reg/base.h) \
    $(wildcard include/config/arch/omap1.h) \
  arch/arm/plat-omap/include/plat/serial.h \
  arch/arm/plat-omap/include/plat/omap7xx.h \
    $(wildcard include/config/base.h) \
  arch/arm/plat-omap/include/plat/omap1510.h \
  arch/arm/plat-omap/include/plat/omap16xx.h \
  arch/arm/plat-omap/include/plat/omap24xx.h \
  arch/arm/plat-omap/include/plat/omap34xx.h \
  arch/arm/plat-omap/include/plat/omap44xx.h \
  arch/arm/plat-omap/include/plat/ti81xx.h \
  arch/arm/plat-omap/include/plat/am33xx.h \
  arch/arm/mach-omap2/include/mach/board-am335xevm.h \
  arch/arm/plat-omap/include/plat/emif.h \
  arch/arm/plat-omap/include/plat/sram.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/omap4/errata/i688.h) \
  arch/arm/plat-omap/include/plat/gpio.h \
  arch/arm/mach-omap2/cm33xx.h \
  arch/arm/mach-omap2/common.h \
    $(wildcard include/config/soc/omap2420.h) \
    $(wildcard include/config/soc/omap2430.h) \
    $(wildcard include/config/arch/omap3.h) \
    $(wildcard include/config/soc/omapti81xx.h) \
    $(wildcard include/config/soc/omapam33xx.h) \
    $(wildcard include/config/arch/omap4.h) \
    $(wildcard include/config/cache/l2x0.h) \
  arch/arm/mach-omap2/cm.h \
  arch/arm/mach-omap2/cm-regbits-33xx.h \
  arch/arm/mach-omap2/pm33xx.h \
  arch/arm/mach-omap2/control.h \
    $(wildcard include/config/arch/omap2plus.h) \
  arch/arm/mach-omap2/include/mach/ctrl_module_core_44xx.h \
    $(wildcard include/config/idlemode/shift.h) \
    $(wildcard include/config/idlemode/mask.h) \
  arch/arm/mach-omap2/include/mach/ctrl_module_wkup_44xx.h \
  arch/arm/mach-omap2/include/mach/ctrl_module_pad_core_44xx.h \
  arch/arm/mach-omap2/include/mach/ctrl_module_pad_wkup_44xx.h \
  arch/arm/mach-omap2/mux33xx.h \
  arch/arm/mach-omap2/prm33xx.h \
  arch/arm/mach-omap2/prcm-common.h \
  arch/arm/mach-omap2/prm.h \

arch/arm/mach-omap2/sleep33xx.o: $(deps_arch/arm/mach-omap2/sleep33xx.o)

$(deps_arch/arm/mach-omap2/sleep33xx.o):
