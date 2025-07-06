FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-squashfs-enable-idmapped-mounts.patch file://0002-shmem-support-idmapped-mounts-for-tmpfs.patch"

