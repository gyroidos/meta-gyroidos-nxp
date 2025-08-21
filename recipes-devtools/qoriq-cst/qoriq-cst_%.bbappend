do_install:append () {
    if [ -n "${SECURE_PRI_KEY}" ]; then
        openssl rsa -in ${D}/${bindir}/cst/srk.pri -traditional -out ${D}/${bindir}/cst/srk.pri
        openssl x509 -in ${D}/${bindir}/cst/srk.pub -pubkey -noout -out ${D}/${bindir}/cst/srk.pub
        openssl rsa -pubin -in ${D}/${bindir}/cst/srk.pub -RSAPublicKey_out -out ${D}/${bindir}/cst/srk.pub -traditional
    fi
}
