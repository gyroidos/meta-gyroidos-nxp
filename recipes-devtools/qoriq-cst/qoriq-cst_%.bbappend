FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://0001-common-Initialize-ret-in-create_srk_clac_hash-to-all.patch"

do_install:append () {
    if [ -n "${SECURE_PRI_KEY}" ]; then
        openssl rsa -in ${D}/${bindir}/cst/srk.pri -traditional -out ${D}/${bindir}/cst/srk.pri
        openssl x509 -in ${D}/${bindir}/cst/srk.pub -pubkey -noout -out ${D}/${bindir}/cst/srk.pub
        openssl rsa -pubin -in ${D}/${bindir}/cst/srk.pub -RSAPublicKey_out -out ${D}/${bindir}/cst/srk.pub -traditional
    fi
}
