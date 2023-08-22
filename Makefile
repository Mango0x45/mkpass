.POSIX:

target = mkpass

PREFIX  = /usr/local
DPREFIX = ${DESTDIR}${PREFIX}

all: ${target}
${target}:
	chmod +x $@

install:
	mkdir -p ${DPREFIX}/bin ${DPREFIX}/man/man1
	cp ${target}   ${DPREFIX}/bin
	cp ${target}.1 ${DPREFIX}/man/man1
