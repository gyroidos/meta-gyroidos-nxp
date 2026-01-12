FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://${MACHINE}.cfg"

KBUILD_DEFCONFIG:tqma8mpxl = "defconfig"
KBUILD_DEFCONFIG:ls1088ardb-pb = "defconfig"
KERNEL_FEATURES:remove = "cfg/fs/vfat.scc"

# since kernel 6.17, this was renamed
KERNEL_DEVICETREE:tqma8mpxl:remove = "freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtb"
KERNEL_DEVICETREE:tqma8mpxl:remove = "freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo"
KERNEL_DEVICETREE:tqma8mpxl:append = " freescale/imx8mp-tqma8mpql-mba8mpxl-lvds-tm070jvhg33.dtb"
KERNEL_DEVICETREE:tqma8mpxl:append = " freescale/imx8mp-tqma8mpql-mba8mpxl-lvds-tm070jvhg33.dtbo"
