MACHINE="ls1088ardb-pb"

PREFERRED_PROVIDER_virtual/kernel:ls1088ardb-pb = "linux-qoriq"

INITRAMFS_IMAGE = "gyroidos-cml-initramfs"
INITRAMFS_IMAGE_BUNDLE = "0"

GYROIDOS_HARDWARE = "arm"
GYROIDOS_LOGTTY = "ttyLP0"
GYROIDOS_GUESTOS_ARCH = "qemuarm64"
GYROIDOS_FSTYPES = "wic wic.bmap"

BBMULTICONFIG = "guestos"
KERNEL_CLASSES:append = " kernel-fitimage "
KERNEL_IMAGETYPE:ls1088ardb-pb = "fitImage"
PACKAGE_CLASSES = "package_ipk"

MC_DPC ?= "dpc.0x1D-0x0D.dtb"
MC_DPL ?= "dpl-eth.0x1D_0x0D.dtb"

IMAGE_BOOT_FILES:ls1088ardb-pb = " \
	${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE};fitImage-gyroidos-cml-initramfs \
	mc_app/mc.itb;mc.itb \
	mc-utils/${MC_DPC};dpc.dtb \
	mc-utils/${MC_DPL};dpl.dtb \
	"

GYROIDOS_BOOTSTREAM0 = "${IMAGE_FILE_PBL_SD}"
GYROIDOS_BOOTSTREAM1 = "${IMAGE_FILE_FIP_UBOOT}"
WKS_FILE:ls1088ardb-pb = "ls1088ardb-pb.wks.in"

# meta-freescale sets these addresses to 0x80080000,
# however, these crash at boot. The preinstalled image
# on the ls1088ardb-pb uses 0x84080000 which works
# but the kernel complains about alignment. 0x84000000
# seems good.
UBOOT_LOADADDRESS:ls1088ardb-pb = "0x84000000"
UBOOT_ENTRYPOINT:ls1088ardb-pb = "0x84000000"

# secure boot keys for the CST tool
SECURE_PRI_KEY = "${SECURE_BOOT_SIG_KEY}"
SECURE_PUB_KEY = "${SECURE_BOOT_SIG_CERT}"
