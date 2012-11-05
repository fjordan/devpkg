PREFIX?=apr/
CFLAGS=-g -Wall -Iapr -I${PREFIX}/apr/include/apr-util-l
LDFLAGS=-L${PREFIX}/apr/lib -lapr-l -pthread -laprutil-l

all: devpkg

devpkg: bstrlib.o db.o shell.o commands.o
		install:
				linstall -d $(DESTDIR)/$(PREFIX)/bin
				install devpkg $(DESTDIR)/$(PREFIX)/bin/

clean:
				rm -f *.o
				rm -f devpkg
				rm -rf *.dSYM
