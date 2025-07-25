MACHINE="tqma8mpxl-mba8mpxl"

PREFERRED_PROVIDER_virtual/kernel:tqma8mpxl = "linux-rolling-stable"

INITRAMFS_IMAGE = "gyroidos-cml-initramfs"
INITRAMFS_IMAGE_BUNDLE = "0"

GYROIDOS_HARDWARE = "arm"
GYROIDOS_LOGTTY = "ttyLP0"
GYROIDOS_GUESTOS_ARCH = "qemuarm64"
GYROIDOS_FSTYPES = "wic wic.bmap"

BBMULTICONFIG = "guestos"
PACKAGE_CLASSES = "package_ipk"
KERNEL_CLASSES:append = " kernel-fitimage "
KERNEL_IMAGETYPE:tqma8mpxl = "fitImage"

IMAGE_BOOT_FILES:tqma8mpxl = "${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE};fitImage-gyroidos-cml-initramfs"
WKS_FILE:tqma8mpxl = "tqma8mpxl.wks.in"

UBOOT_CONFIG = "sd"
# keys name in keydir (eg. "dev.crt", "dev.key")
# no verified boot yet
#UBOOT_SIGN_KEYDIR = "${TOPDIR}/test_certificates/"
#UBOOT_SIGN_ENABLE = "1"
#UBOOT_SIGN_KEYNAME = "ssig_subca"
