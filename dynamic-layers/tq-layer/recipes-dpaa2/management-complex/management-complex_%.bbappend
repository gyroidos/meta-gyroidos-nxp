LIC_FILES_CHKSUM_TMP := "${LIC_FILES_CHKSUM}"
LIC_FILES_CHKSUM = '${@bb.utils.contains("PV", "10.35.0", "file://LICENSE;md5=0701845051a61f6012009d7d6d11b32b", "${LIC_FILES_CHKSUM_TMP}", d)}'

SRCREV_TMP := "${SRCREV}"
SRCREV = '${@bb.utils.contains("PV", "10.35.0", "f638dd0e6103607c9d84d57c2ef2059f9b5d32b9", "${SRCREV_TMP}", d)}'
