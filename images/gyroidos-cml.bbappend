INITRAMFS_IMAGE_BUNDLE = "0"

KERNEL_IMAGE_FILE = "cml-kernel/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE}"
OS_CONFIG_IN := "${THISDIR}/${PN}/${MACHINE}.conf"

# tqmlx2160a-mblx2160a + ls1088ardb-pb
DEPENDS:append:qoriq = " qoriq-signed-images"

# tqma8mpxl-mba8mpxl customization
do_sign_guestos:prepend:tqma8mpxl-mba8mpxl () {
        mkdir -p "${UPDATE_OUT}"
        cp "${DEPLOY_DIR_IMAGE}/${MACHINE_WKS_BOOTSTREAM}" "${UPDATE_OUT}/bootloader.img"
        cp "${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGE_FILE}" "${UPDATE_OUT}/kernel.img"
        cp "${DEPLOY_DIR_IMAGE}/gyroidos-cml-firmware-${MACHINE}.squashfs" "${UPDATE_OUT}/firmware.img"
        cp "${DEPLOY_DIR_IMAGE}/gyroidos-cml-modules-${MACHINE}.squashfs" "${UPDATE_OUT}/modules.img"
        cp "${WORKDIR}/device.conf" "${UPDATE_OUT}/device.img"
}

# tqmlx2160a-mblx2160a customization
do_sign_guestos:prepend:tqmlx2160a-mblx2160a () {
        mkdir -p "${UPDATE_OUT}"
        cp "${DEPLOY_DIR_IMAGE}/${GYROIDOS_BOOTSTREAM0}" "${UPDATE_OUT}/bootloader0.img"
        cp "${DEPLOY_DIR_IMAGE}/${GYROIDOS_BOOTSTREAM1}" "${UPDATE_OUT}/bootloader1.img"
        cp "${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGE_FILE}" "${UPDATE_OUT}/kernel.img"
        cp "${DEPLOY_DIR_IMAGE}/gyroidos-cml-firmware-${MACHINE}.squashfs" "${UPDATE_OUT}/firmware.img"
        cp "${DEPLOY_DIR_IMAGE}/gyroidos-cml-modules-${MACHINE}.squashfs" "${UPDATE_OUT}/modules.img"
        cp "${WORKDIR}/device.conf" "${UPDATE_OUT}/device.img"
}

IMAGE_BOOT_FILES:append:tqmlx2160a-mblx2160a = " \
	${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE}.hdr;fitImage-gyroidos-cml-initramfs.hdr \
	mc_app/mc.itb.hdr;mc.itb.hdr \
	mc-utils/${MC_DPC}.hdr;dpc-warn.dtb.hdr \
	mc-utils/${MC_DPL}.hdr;dpl-min.dtb.hdr \
	"

# ls1088ardb-pb customization
do_sign_guestos:prepend:ls1088ardb-pb () {
        mkdir -p "${UPDATE_OUT}"
        cp "${DEPLOY_DIR_IMAGE}/${GYROIDOS_BOOTSTREAM0}" "${UPDATE_OUT}/bootloader0.img"
        cp "${DEPLOY_DIR_IMAGE}/${GYROIDOS_BOOTSTREAM1}" "${UPDATE_OUT}/bootloader1.img"
        cp "${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGE_FILE}" "${UPDATE_OUT}/kernel.img"
        cp "${DEPLOY_DIR_IMAGE}/gyroidos-cml-firmware-${MACHINE}.squashfs" "${UPDATE_OUT}/firmware.img"
        cp "${DEPLOY_DIR_IMAGE}/gyroidos-cml-modules-${MACHINE}.squashfs" "${UPDATE_OUT}/modules.img"
        cp "${WORKDIR}/device.conf" "${UPDATE_OUT}/device.img"
}

IMAGE_BOOT_FILES:append:ls1088ardb-pb = " \
	${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE}.hdr;fitImage-gyroidos-cml-initramfs.hdr \
	mc_app/mc.itb.hdr;mc.itb.hdr \
	mc-utils/${MC_DPC}.hdr;dpc.dtb.hdr \
	mc-utils/${MC_DPL}.hdr;dpl.dtb.hdr \
	"
