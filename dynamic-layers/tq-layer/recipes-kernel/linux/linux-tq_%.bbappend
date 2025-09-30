require recipes-kernel/linux/linux-gyroidos.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

IS_VERSION_612 := "${@oe.utils.trim_version(d.getVar('PV'), 2) == '6.12'}"
SRC_URI += "${@oe.utils.vartrue('IS_VERSION_612', 'file://0001-rtnetlink-Allow-deleting-FDB-entries-in-user-namespa.patch', '', d)}"
