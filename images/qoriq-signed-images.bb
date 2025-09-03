DESCRIPTION = "Signed firmware images"

inherit image

DEPENDS += "qoriq-cst-native"
do_image[depends] = "virtual/kernel:do_deploy"

sign_fw_file () {
	script="$1"
	sub_path="$2"
	outfile="$3"
	tmpfile="$4"

	bbnote "Signing $sub_path"

	cp ${DEPLOY_DIR_IMAGE}/$sub_path $tmpfile
	./uni_sign input_files/uni_sign/$script
	mkdir -p "$(dirname ${IMGDEPLOYDIR}/$sub_path)"
	cp $outfile "${IMGDEPLOYDIR}/$sub_path.hdr"
}

UNI_SIGN_SCRIPTS_DIR:tqmlx2160a-mblx2160a = "lx2160"
UNI_SIGN_SCRIPTS_DIR:ls1088ardb-pb = "ls2088_1088"

do_image () {
	cd ${WORKDIR}
	cp -r ${RECIPE_SYSROOT_NATIVE}/usr/bin/cst .
	cd cst

	sign_fw_file ${UNI_SIGN_SCRIPTS_DIR}/sd/input_mc_secure mc_app/mc.itb hdr_mc.out mc.itb
	sign_fw_file ${UNI_SIGN_SCRIPTS_DIR}/sd/input_dpc_secure mc-utils/${MC_DPC} hdr_dpc.out dpc.dtb
	sign_fw_file ${UNI_SIGN_SCRIPTS_DIR}/sd/input_dpl_secure mc-utils/${MC_DPL} hdr_dpl.out dpl.dtb
	sign_fw_file ${UNI_SIGN_SCRIPTS_DIR}/input_kernel_secure \
		     ${KERNEL_DEPLOYSUBDIR}/fitImage-gyroidos-cml-initramfs-${MACHINE}-${MACHINE} \
		     hdr_kernel.out kernel.itb
}
