FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://${MACHINE}.cfg"

include recipes-kernel/linux/linux-gyroidos.inc

# Always-on board command line (serial console). Contributed to the composable
# GYROIDOS_KERNEL_CMDLINE owned by meta-gyroidos; a plain CONFIG_CMDLINE in the
# .cfg would be overwritten by linux-gyroidos.inc:kernel_do_configure:append.
GYROIDOS_KERNEL_CMDLINE_BASE:colibri-imx8x   = "noinitrd console=ttyLP3,115200"
GYROIDOS_KERNEL_CMDLINE_BASE:apalis-imx8     = "noinitrd console=ttyLP1,115200"
GYROIDOS_KERNEL_CMDLINE_BASE:colibri-imx6ull = "noinitrd console=ttymxc0,115200"
