SERVICE_FILES = ${wildcard service/*}
SOCKET_FILES = ${wildcard socket/*}
TARGET_FILES = ${wildcard target/*}
PATH_FILES = ${wildcard path/*}
SCRIPTS = ${wildcard scripts/*}

SD_LIBDIR ?= lib/systemd
SD_UNITDIR ?= ${SD_LIBDIR}/system
SD_SCRIPTDIR ?= ${SD_LIBDIR}/scripts

install:
	install -d "${DESTDIR}/${SD_LIB_DIR}" "${DESTDIR}/${SD_SCRIPTDIR}" "${DESTDIR}/${SD_UNITDIR}"
	install -m644 -t "${DESTDIR}/${SD_UNITDIR}" ${SERVICE_FILES} ${SOCKET_FILES} ${TARGET_FILES} ${PATH_FILES}
	install -m755 -t "${DESTDIR}/${SD_SCRIPTDIR}" ${SCRIPTS}

