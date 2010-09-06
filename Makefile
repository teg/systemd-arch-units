SERVICE_FILES = *.service
SCRIPTS = sshdgenkeys

install:
	install -d ${DESTDIR}/lib/systemd/system ${DESTDIR}/lib/systemd/scripts
	install -m644 -t ${DESTDIR}/lib/systemd/system/ ${SERVICE_FILES}
	install -m755 -t ${DESTDIR}/lib/systemd/scripts/ ${SCRIPTS}

