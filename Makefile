#!/usr/bin/make

BIN=${DESTDIR}/usr/bin
ETC=/etc/pia

install:
	install -d ${BIN}
	install -m 755 pia.sh ${BIN}/pia
	install -d $(ETC)

remove:
	rm $(BIN)/pia

purge: remove
	rm -r $(ETC)
