bin_PROGRAMS = kasumi

kasumi_SOURCES = src/main.cc src/intl.h \
		src/KasumiDic.cc src/KasumiDic.hh \
		src/KasumiWord.cc src/KasumiWord.hh \
		src/KasumiWordType.cc src/KasumiWordType.hh \
		src/KasumiString.cc src/KasumiString.hh \
		src/KasumiException.cc src/KasumiException.hh \
		src/KasumiMainWindow.cc src/KasumiMainWindow.hh \
		src/KasumiAddWindow.cc src/KasumiAddWindow.hh \
		src/KasumiDicEventListener.hh \
		src/KasumiWordEventListener.hh \
		src/KasumiConfiguration.cc src/KasumiConfiguration.hh \
		src/cellrendererspin.c src/cellrendererspin.h \
		kasumi.png \
		kasumi.1 \
		kasumi.desktop.in

appicondir = $(datadir)/pixmaps
appicon_DATA = kasumi.png

man_MANS = kasumi.1
EXTRA_DIST = $(man_MANS)

desktopdir = $(datadir)/applications
Desktop_in_files = kasumi.desktop.in
desktop_DATA = $(Desktop_in_files:.desktop.in=.desktop)

localedir = $(datadir)/locale
AM_CPPFLAGS=-DLOCALEDIR=\"$(localedir)\"
SUBDIRS = po

ACLOCAL_AMFLAGS = -I m4

CLEANFILES = $(desktop_DATA)

kasumi_CPPFLAGS = $(GTK_CFLAGS) -Isrc/
kasumi_LDADD = $(INTLLIBS) $(LTLIBICONV) $(GTK_LIBS) $(ANTHY_LIBS) $(GOBJECT_LIBS)
