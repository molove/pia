# $DESTDIR is set to Packagename-Version
BIN=${DESTDIR}/usr/bin
ETC=${DESTDIR}/etc/openvpn/pia

welcome:
	@echo "For safety reasons, please select a target."

clean:
	@rm -rf ${DESTDIR}
	@echo "cleaned"

deb-install:
	install -d ${BIN}
	install -m 755 pia.sh ${BIN}/pia

