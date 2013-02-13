ACLOCAL_AMFLAGS = -I m4

SUBDIRS = src

MAINTAINERCLEANFILES = Makefile.in aclocal.m4 config.guess config.h* config.sub \
	configure depcomp install-sh ltmain.sh missing compile m4/l* ylwrap

CLEANFILES = cjson-*.tar.bz2 cjson-*.tar.gz data/cjson.pc

EXTRA_DIST = \
AUTHORS \
COPYING \
README \
autogen.sh \
data/cjson.pc.in \
m4/ac_attribute.m4

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = data/cjson.pc
