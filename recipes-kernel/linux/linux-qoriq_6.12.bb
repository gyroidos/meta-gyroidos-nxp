inherit kernel
require recipes-kernel/linux/linux-yocto.inc

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

LINUX_VERSION = "6.12"

# Ignore warning about 6.12 not matching 6.12.20 version
KERNEL_VERSION_SANITY_SKIP="1"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DEPENDS += "elfutils-native"

COMPATIBLE_MACHINE = "${MACHINE}"

KBUILD_DEFCONFIG:ls1088ardb-pb = "defconfig"

KCONFIG_MODE="--alldefconfig"
KERNEL_FEATURES:remove = "cfg/efi.scc cfg/fs/vfat.scc"

SRC_URI = "git://github.com/nxp-qoriq/linux;protocol=https;nobranch=1"

SRC_URI += " \
    file://${MACHINE}.cfg \
    \
    file://0001-rtnetlink-Allow-deleting-FDB-entries-in-user-namespa.patch \
"

SRCREV = "dfaf2136deb2af2e60b994421281ba42f1c087e0"

require recipes-kernel/linux/linux-gyroidos.inc
