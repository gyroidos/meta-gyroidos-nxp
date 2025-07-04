MACHINE="tqmlx2160a-mblx2160a"

#PREFERRED_PROVIDER_virtual/kernel:tqmlx2160a = "linux-rolling-stable"
PREFERRED_PROVIDER_virtual/kernel:tqmlx2160a = "linux-tq"

INITRAMFS_IMAGE = "gyroidos-cml-initramfs"
INITRAMFS_IMAGE_BUNDLE = "0"

GYROIDOS_HARDWARE = "arm"
GYROIDOS_LOGTTY = "ttyLP0"
GYROIDOS_GUESTOS_ARCH = "qemuarm64"
GYROIDOS_FSTYPES = "wic wic.bmap"

BBMULTICONFIG = "guestos"
KERNEL_CLASSES:append = " kernel-fitimage "
KERNEL_IMAGETYPE:tqmlx2160a = "fitImage"
PACKAGE_CLASSES = "package_ipk"

IMAGE_BOOT_FILES:append:tqmlx2160a = " ${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE};fitImage-gyroidos-cml-initramfs"
#IMAGE_BOOT_FILES:append:tqmlx2160a = " ${KERNEL_DEPLOYSUBDIR}/Image;Image"
GYROIDOS_BOOTSTREAM0= "atf/${BL2_IMAGE}"
GYROIDOS_BOOTSTREAM1 = "atf/${BL3_IMAGE}"
WKS_FILE:tqmlx2160a = "tqmlx2160a.wks.in"

#UBOOT_CONFIG = "sd" #should be "tfa" probably remove
# keys name in keydir (eg. "dev.crt", "dev.key")
# no verified boot yet
#UBOOT_SIGN_KEYDIR = "${TOPDIR}/test_certificates/"
#UBOOT_SIGN_ENABLE = "1"
#UBOOT_SIGN_KEYNAME = "ssig_subca"

UBOOT_LOADADDRESS="0x81000000"
UBOOT_ENTRYPOINT="0x81000000"
