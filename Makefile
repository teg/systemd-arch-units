SERVICE_FILES = ${wildcard *.service}
SOCKET_FILES = ${wildcard *.socket}
SCRIPTS = sshdgenkeys

install:
	install -d ${DESTDIR}/lib/systemd/system ${DESTDIR}/lib/systemd/scripts
	install -m644 -t ${DESTDIR}/lib/systemd/system/ ${SERVICE_FILES} ${SOCKET_FILES}
	install -m755 -t ${DESTDIR}/lib/systemd/scripts/ ${SCRIPTS}

