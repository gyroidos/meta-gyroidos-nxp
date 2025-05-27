# workarround for kirkstone until upstream layer meta-tq is fixed
SRC_URI:remove = '${@bb.utils.contains("PV", "2.35", "file://0002-sunrpc-Suppress-GCC-Os-warning-on-user2netname.patch", "", d)}'

