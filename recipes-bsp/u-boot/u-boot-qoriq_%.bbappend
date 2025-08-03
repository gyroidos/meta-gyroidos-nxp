FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://ls1088ardb-pb.cfg"
SRC_URI += "\
	file://0001-include-configs-ls1088ardb.h-MC-init-from-bootpart.patch \
	file://0002-include-configs-ls1088ardb.h-DPL-lazy-init-from-boot.patch \
	file://0003-include-configs-ls1088ardb.h-Boot-gyroidos-fitImage-.patch \
"

# redo depends from u-boot-configure.inc because DEPENDS is overwritten by u-boot-qoriq
DEPENDS += "kern-tools-native"
