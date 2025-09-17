FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://${MACHINE}.cfg"

KBUILD_DEFCONFIG:tqma8mpxl = "defconfig"
KBUILD_DEFCONFIG:ls1088ardb-pb = "defconfig"
KERNEL_FEATURES:remove = "cfg/fs/vfat.scc"
