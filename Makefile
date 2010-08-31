SERVICE_FILES = *.service

install:
	install -d ${DESTDIR}/etc/systemd/system
	install -m644 -t ${DESTDIR}/etc/systemd/system/ ${SERVICE_FILES}
