dnl use: EWAY_CHECK_CONNMAN(default-enabled[, ACTION-IF-FOUND[, ACTION-IF-NOT-FOUND]])
AC_DEFUN([EWAY_CHECK_CONNMAN],
[
_eway_want_connman=$1
_eway_have_connman="no"

dnl We need to check if the right inotify version is accessible
_eway_want_connman="yes"
AC_ARG_ENABLE(connman,
   [AC_HELP_STRING([--disable-connman], [disable connman support, will use /etc/network/interfaces instead])],
   [
    if test "x${enableval}" = "xyes" ; then
       _eway_want_connman="yes"
    else
       _eway_want_connman="no"
    fi
   ])

AC_MSG_CHECKING(whether connman will be used for networking configuration)
AC_MSG_RESULT($_eway_want_connman)

if test "x${_eway_want_connman}" = "xyes" ; then
	AC_DEFINE([HAVE_CONNMAN], [1], [ Use connman to configure networking ])
	_eway_have_connman="yes"
fi

if test "x$_eway_have_connman" = "xyes" ; then
   m4_default([$2], [:])
else
   m4_default([$3], [:])
fi
])