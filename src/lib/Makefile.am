MAINTAINERCLEANFILES = Makefile.in
lib_LTLIBRARIES = libcjson.la

AM_CFLAGS = -I@top_builddir@ -I@top_srcdir@/src/include

libcjson_la_LDFLAGS = -version-info @version_info@ @release_info@ -no-undefined
libcjson_la_LIBADD = -lm 
libcjson_la_SOURCES = cJSON.c ../include/cJSON.h
libcjson_la_CPPFLAGS = -W -Wall -O2 -g -I$(top_srcdir)/src/include/
