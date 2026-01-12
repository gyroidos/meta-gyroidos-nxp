FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://tqma8mpxl.cfg"

# configuration for kirkstone PV==2020.04
SRC_URI:append = '${@bb.utils.contains("PV", "2020.04", "\
        file://0001-include-configs-tqma8mpxl-Increase-maximum-bootm-siz.patch \
", "", d)}'
