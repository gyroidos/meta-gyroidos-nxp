FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-scripts-dtc-Remove-redundant-YYLOC-global-declaratio.patch"
SRC_URI += "file://0001-include-configs-tqmlx2160a.h-Set-bootcommand.patch"
SRC_URI += "file://tqmlx2160a.cfg"


