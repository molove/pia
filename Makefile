#!/usr/bin/make

BIN=${DESTDIR}/usr/bin

install:
	install -d ${BIN}
	install -m 755 pia.sh ${BIN}/pia

remove:
	rm $(BIN)/pia
