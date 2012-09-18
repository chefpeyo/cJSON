##--##--##--##--##--##--##--##--##--##--##--##--##--##--##--##--##
##--##--##--##--##--##--##--##--##--##--##--##--##--##--##--##--##
m4_define([v_rev], m4_esyscmd([(svnversion "." | grep -v exported || echo 0) | tr -d ' MSP\n']))

m4_define([v_maj], [0])
m4_define([v_min], [0])
m4_define([v_mic], [0])

m4_define([lt_rev], m4_eval(v_maj + v_min))
m4_define([lt_cur], v_mic)
m4_define([lt_age], v_min)

AC_INIT([cjson], [1.0.v_rev], [guillaume.friloux@asp64.com;pierre-olivier.huguet@asp64.com])

AC_PREREQ(2.01)
AC_CONFIG_SRCDIR([configure.ac])

AM_INIT_AUTOMAKE([1.6 dist-bzip2])
AM_CONFIG_HEADER([config.h])

define([AC_LIBTOOL_LANG_CXX_CONFIG], [:])dnl
define([AC_LIBTOOL_LANG_F77_CONFIG], [:])dnl
AC_PROG_LIBTOOL
AC_CONFIG_MACRO_DIR([m4])

dnl we just have set the version info, then:
version_number=1.0
revision_number="v_rev"
AC_SUBST(version_number)
AC_SUBST(revision_number)
version_info="lt_rev:lt_cur:lt_age"
release_info="v_rel"
AC_SUBST(version_info)
AC_SUBST(release_info)

GCC_STACK_PROTECT_LIB
GCC_STACK_PROTECT_CC
AC_PROG_CXX
AC_PROG_MKDIR_P
AC_PROG_LN_S
AC_C___ATTRIBUTE__
AC_PROG_CC
AM_PROG_CC_C_O

AC_CONFIG_FILES([
Makefile
src/Makefile
src/lib/Makefile
])


AC_OUTPUT([
data/cjson.pc
])

echo
echo
echo "------------------------------------------------------------------------"
echo "$PACKAGE_NAME $PACKAGE_VERSION"
echo "------------------------------------------------------------------------"
echo
echo "Configuration Options Summary:"
echo
echo "  CFLAGS.......: $CFLAGS"
echo
echo "Support:"
echo "  prefix.......: $prefix"
echo
