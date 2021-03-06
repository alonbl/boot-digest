
DESTDIR=
include Makefile.inc

all:
	sed -i -e 's#persist=.*#persist=$(LOCALSTATEDIR)/boot-digest#' boot-digest-check
	sed -i -e 's#persist=.*#persist=$(LOCALSTATEDIR)/boot-digest#' boot-digest-mark

clean-all:
	rm Makefile.inc

clean:

install:
	install -c --directory ${DESTDIR}${PREFIX}/bin
	install -c --mode=0755 boot-digest-calc boot-digest-check boot-digest-mark $(DESTDIR)$(PREFIX)/bin
