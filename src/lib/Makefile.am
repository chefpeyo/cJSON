MAINTAINERCLEANFILES = Makefile.in

lib_LTLIBRARIES = libcjson.la

libcjson_la_LDFLAGS = -version-info @version_info@ @release_info@ -no-undefined
libcjson_la_SOURCES = cJSON.c
libcjson_la_CPPFLAGS = -W -Wall -O2 -g -I$(top_srcdir)/src/include/
