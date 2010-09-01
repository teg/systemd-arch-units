SERVICE_FILES = *.service

install:
	install -d ${DESTDIR}/lib/systemd/system
	install -m644 -t ${DESTDIR}/lib/systemd/system/ ${SERVICE_FILES}
