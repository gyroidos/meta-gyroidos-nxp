SRC_URI += "file://trustx.cfg \
            file://imx6ull.cfg \
            "

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

do_preconfigure () {
        cat ${WORKDIR}/trustx.cfg >> ${WORKDIR}/defconfig
        cat ${WORKDIR}/imx6ull.cfg >> ${WORKDIR}/defconfig
}

addtask do_preconfigure after do_patch before do_configure
