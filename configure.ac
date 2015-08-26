AC_PREREQ([2.69])
AC_INIT([kasumi], [2.6], [Marc-Antoine@Perennou.com])

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_SRCDIR([src/])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AC_PREFIX_DEFAULT([/usr])

AM_INIT_AUTOMAKE([1.11 subdir-objects check-news foreign no-dist-gzip dist-xz tar-ustar -Wall])
AM_SILENT_RULES([yes])

AC_PROG_AWK
AC_PROG_SED
AC_PROG_MKDIR_P
AC_PROG_LN_S
AC_PROG_INSTALL

AC_PROG_MAKE_SET

AC_PROG_CPP
AC_PROG_CC
AC_PROG_CC_C99
AC_PROG_CC_C_O
AC_PROG_CXX

AC_C_INLINE

AC_CHECK_HEADER_STDBOOL

CC_ATTRIBUTE_UNUSED
CC_ATTRIBUTE_VISIBILITY([default])

GETTEXT_PACKAGE=$PACKAGE_NAME
AC_DEFINE_UNQUOTED([GETTEXT_PACKAGE], ["$GETTEXT_PACKAGE"], [Gettext Package])
AC_SUBST(GETTEXT_PACKAGE)
IT_PROG_INTLTOOL([0.50.0])

PKG_PROG_PKG_CONFIG([0.22])

PKG_CHECK_MODULES(GTK, [gtk+-3.0])
PKG_CHECK_MODULES(ANTHY, [anthy])

AC_CONFIG_FILES([
    Makefile
    po/Makefile.in
    kasumi.desktop
])

AC_OUTPUT

AC_MSG_RESULT([
    $PACKAGE_NAME $VERSION
    ========

    prefix:                 ${prefix}
    exec_prefix:            ${exec_prefix}
    sysconfdir:             ${sysconfdir}
    libdir:                 ${libdir}
    includedir:             ${includedir}

    compiler:               ${CC}
    cflags:                 ${CFLAGS}
    ldflags:                ${LDFLAGS}
])
