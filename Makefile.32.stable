pkg_config = ../pkg-config.sh
flags = -march=pentium4 -mfpmath=sse -msse2 -mthreads -DWINVER=0x0500
cc = 'gcc $(flags)'
cxx = 'g++ $(flags)'
configure = PKG_CONFIG=$(pkg_config) CC=$(cc) CXX=$(cxx) \
	CFLAGS='-O2 -fno-strict-aliasing' configure --prefix=/mingw/ --disable-debug

zlibver = 1.2.7
libxml2ver = 2.8.0
libffiver = 3.0.12
glibver = 2.34.1
pkgconfigver = 0.27
libpngver = 1.5.11
freetypever = 2.4.10
fontconfigver = 2.10.1
pixmanver = 0.26.0
cairover = 1.10.2
atkver = 2.6.0
pangover = 1.30.1
gdk_pixbufver = 2.26.3
hicolor_icon_themever = 0.12
gtk2ver = 2.24.17
freeglutver = 2.8.0
gslver = 1.15
gtk3ver = 3.6.1

zlibdir = zlib-$(zlibver)/
zlibtar = zlib-$(zlibver).tar.xz
zlibdll = /mingw/bin/zlib1.dll

libxml2dir = libxml2-$(libxml2ver)/
libxml2tar = libxml2-$(libxml2ver).tar.gz
libxml2mak = $(libxml2dir)Makefile
libxml2dll = /mingw/bin/libxml2-2.dll

libffidir = libffi-$(libffiver)/
libffitar = libffi-$(libffiver).tar.gz
libffimak = $(libffidir)Makefile
libffidll = /mingw/bin/libffi-6.dll

glibdir = glib-$(glibver)/
glibtar = glib-$(glibver).tar.xz
glibmak = $(glibdir)Makefile
glibdll = /mingw/bin/libglib-2.0-0.dll

pkgconfigdir = pkg-config-$(pkgconfigver)/
pkgconfigtar = pkg-config-$(pkgconfigver).tar.gz
pkgconfigmak = $(pkgconfigdir)Makefile
pkgconfigexe = /mingw/bin/pkg-config.exe

libpngdir = libpng-$(libpngver)/
libpngtar = libpng-$(libpngver).tar.xz
libpngmak = $(libpngdir)Makefile
libpngdll = /mingw/bin/libpng15-15.dll

freetypedir = freetype-$(freetypever)/
freetypetar = freetype-$(freetypever).tar.bz2
freetypemak = $(freetypedir)config.mk
freetypedll = /mingw/bin/libfreetype-6.dll

fontconfigdir = fontconfig-$(fontconfigver)/
fontconfigtar = fontconfig-$(fontconfigver).tar.gz
fontconfigmak = $(fontconfigdir)Makefile
fontconfigdll = /mingw/bin/libfontconfig-1.dll

pixmandir = pixman-$(pixmanver)/
pixmantar = pixman-$(pixmanver).tar.gz
pixmanmak = $(pixmandir)Makefile
pixmandll = /mingw/bin/libpixman-1-0.dll

cairodir = cairo-$(cairover)/
cairotar = cairo-$(cairover).tar.gz
cairomak = $(cairodir)Makefile
cairodll = /mingw/bin/libcairo-2.dll

atkdir = atk-$(atkver)/
atktar = atk-$(atkver).tar.xz
atkmak = $(atkdir)Makefile
atkdll = /mingw/bin/libatk-1.0-0.dll

pangodir = pango-$(pangover)/
pangotar = pango-$(pangover).tar.xz
pangomak = $(pangodir)Makefile
pangodll = /mingw/bin/libpango-1.0-0.dll

gdk_pixbufdir = gdk-pixbuf-$(gdk_pixbufver)/
gdk_pixbuftar = gdk-pixbuf-$(gdk_pixbufver).tar.xz
gdk_pixbufmak = $(gdk_pixbufdir)Makefile
gdk_pixbufdll = /mingw/bin/libgdk_pixbuf-2.0-0.dll

hicolor_icon_themedir = hicolor-icon-theme-$(hicolor_icon_themever)/
hicolor_icon_themetar = hicolor-icon-theme-$(hicolor_icon_themever).tar.gz
hicolor_icon_thememak = $(hicolor_icon_themedir)Makefile
hicolor_icon_themedll = /mingw/share/icons/hicolor

gtk2dir = gtk+-$(gtk2ver)/
gtk2tar = gtk+-$(gtk2ver).tar.xz
gtk2mak = $(gtk2dir)Makefile
gtk2dll = /mingw/bin/libgtk-win32-2.0-0.dll

freeglutdir = freeglut-$(freeglutver)/
freegluttar = freeglut-$(freeglutver).tar.gz
freeglutmak = $(freeglutdir)Makefile
freeglutdll = /mingw/bin/libglut-0.dll

gsldir = gsl-$(gslver)/
gsltar = gsl-$(gslver).tar.gz
gslmak = $(gsldir)Makefile
gsldll = /mingw/bin/libgsl-0.dll

gtk3dir = gtk+-$(gtk3ver)/
gtk3tar = gtk+-$(gtk3ver).tar.xz
gtk3mak = $(gtk3dir)Makefile
gtk3dll = /mingw/bin/libgtk-3-0.dll

dll = \
	$(zlibdll) \
	$(libxml2dll) \
	$(libffidll) \
	$(glibdll) \
	$(pkgconfigexe) \
	$(libpngdll) \
	$(freetypedll) \
	$(fontconfigdll) \
	$(pixmandll) \
	$(cairodll) \
	$(atkdll) \
	$(pangodll) \
	$(gdk_pixbufdll) \
	$(hicolor_icon_themedll) \
	$(gtk2dll) \
	$(freeglutdll) \
	$(gsldll) \
	$(gtk3dll) \

all: $(dll)

start:
	mingw-get install msys-unzip msys-wget mingw32-libz mingw32-libiconv mingw32-gettext
	cd /mingw; \
	wget -c -q http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/pkg-config_0.26-1_win32.zip; \
	unzip pkg-config_0.26-1_win32.zip; \
	wget -c -q http://ftp.gnome.org/pub/gnome/binaries/win32/glib/2.28/glib_2.28.8-1_win32.zip; \
	unzip glib_2.28.8-1_win32.zip; \
	wget -c -q http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/gettext-runtime_0.18.1.1-2_win32.zip; \
	unzip gettext-runtime_0.18.1.1-2_win32.zip; \

$(zlibdll): $(zlibtar)
	tar xJf $(zlibtar)
	cd $(zlibdir); \
	perl ../zlib.pl; \
	make -f win32/Makefile.gcc && \
	INCLUDE_PATH=/mingw/include LIBRARY_PATH=/mingw/lib BINARY_PATH=/mingw/bin make -f win32/Makefile.gcc install SHARED_MODE=1

$(zlibtar):
	wget -c -q http://sourceforge.net/projects/libpng/files/zlib/$(zlibver)/$(zlibtar)

$(libxml2dll): $(libxml2mak)
	cd $(libxml2dir); make && make install-strip

$(libxml2mak): $(zlibdll) $(libxml2tar)
	tar xzf $(libxml2tar)
	cd $(libxml2dir); $(configure) # && perl ../libxml.pl

$(libxml2tar):
	wget -c -q http://xmlsoft.org/sources/$(libxml2tar)

$(libffidll): $(libffimak)
	cd $(libffidir); make && make install-strip

$(libffimak): $(zlibdll) $(libffitar)
	tar xzf $(libffitar)
	cd $(libffidir); $(configure)

$(libffitar):
	wget -c -q ftp://sourceware.org/pub/libffi/$(libffitar)

$(glibdll): $(glibmak)
	cd $(glibdir); make && make install-strip

$(glibmak): $(libffidll) $(libxml2dll) $(glibtar)
	tar xJf $(glibtar)
	cd $(glibdir); $(configure) --with-threads=win32

$(glibtar):
	wget -c -q http://ftp.gnome.org/pub/gnome/sources/glib/2.34/$(glibtar)

$(pkgconfigexe): $(pkgconfigmak)
	cd $(pkgconfigdir); make && make install-strip

$(pkgconfigmak): $(glibdll) $(pkgconfigtar)
	tar xzf $(pkgconfigtar)
	cd $(pkgconfigdir); $(configure)

$(pkgconfigtar):
	wget -c -q http://pkgconfig.freedesktop.org/releases/$(pkgconfigtar)

$(libpngdll): $(libpngmak)
	cd $(libpngdir); make && make install-strip

$(libpngmak): $(zlibdll) $(libpngtar)
	tar xJf $(libpngtar)
	cd $(libpngdir); $(configure)

$(libpngtar):
	wget -c -q http://sourceforge.net/projects/libpng/files/libpng15/older-releases/$(libpngver)/$(libpngtar)

$(freetypedll): $(freetypemak)
	cd $(freetypedir); make && make install

$(freetypemak): $(zlibdll) $(freetypetar)
	tar xjf $(freetypetar)
	cd $(freetypedir); $(configure)

$(freetypetar):
	wget -c -q http://sourceforge.net/projects/freetype/files/freetype2/$(freetypever)/$(freetypetar)

$(fontconfigdll): $(fontconfigmak)
	cd $(fontconfigdir); make && make install-strip

$(fontconfigmak): $(libxml2dll) $(freetypedll) $(fontconfigtar)
	tar xzf $(fontconfigtar)
	cd $(fontconfigdir); $(configure) --enable-libxml2

$(fontconfigtar):
	wget -c -q http://fontconfig.org/release/$(fontconfigtar)

$(pixmandll): $(pixmanmak)
	cd $(pixmandir); make && make install-strip

$(pixmanmak): $(libpngdll) $(pixmantar)
	tar xzf $(pixmantar)
	cd $(pixmandir); $(configure)

$(pixmantar):
	wget -c -q http://www.cairographics.org/releases/$(pixmantar)

$(cairodll): $(cairomak)
	cd $(cairodir); make && make install-strip

$(cairomak): $(glibdll) $(libpngdll) $(fontconfigdll) $(cairotar)
	tar xzf $(cairotar)
	cd $(cairodir); perl ../cairo.pl; \
	$(configure) --enable-win32=yes --enable-win32-font=yes

$(cairotar):
	wget -c -q http://www.cairographics.org/releases/$(cairotar)

$(atkdll): $(atkmak)
	cd $(atkdir); make && make install-strip

$(atkmak): $(glibdll) $(atktar)
	tar xJf $(atktar)
	cd $(atkdir); $(configure)

$(atktar):
	wget -c -q http://ftp.gnome.org/pub/gnome/sources/atk/2.6/$(atktar)

$(pangodll): $(pangomak)
	cd $(pangodir); make && make install-strip

$(pangomak): $(cairodll) $(pangotar)
	tar xJf $(pangotar)
	cd $(pangodir); $(configure)

$(pangotar):
	wget -c -q http://ftp.gnome.org/pub/gnome/sources/pango/1.30/$(pangotar)

$(gdk_pixbufdll): $(gdk_pixbufmak)
	cd $(gdk_pixbufdir); make && make install-strip

$(gdk_pixbufmak): $(glibdll) $(libpngdll) $(gdk_pixbuftar)
	tar xJf $(gdk_pixbuftar)
	cd $(gdk_pixbufdir); $(configure)

$(gdk_pixbuftar):
	wget -c -q http://ftp.gnome.org/pub/gnome/sources/gdk-pixbuf/2.26/$(gdk_pixbuftar)

$(hicolor_icon_themedll): $(hicolor_icon_thememak)
	cd $(hicolor_icon_themedir); make install

$(hicolor_icon_thememak): $(zlibdll) $(hicolor_icon_themetar)
	tar xzf $(hicolor_icon_themetar)
	cd $(hicolor_icon_themedir); $(configure)

$(hicolor_icon_themetar):
	wget -c -q http://icon-theme.freedesktop.org/releases/$(hicolor_icon_themetar)

$(gtk2dll): $(gtk2mak)
	cd $(gtk2dir); make && make install-strip

$(gtk2mak): $(cairodll) $(atkdll) $(pangodll) $(gdk_pixbufdll) $(gtk2tar)
	tar xJf $(gtk2tar)
	cd $(gtk2dir); \
	$(configure) --enable-win32-backend --with-included-immodules=ime && \
	perl ../gtk+.pl; \
#	echo "#define _SSIZE_T_DEFINED 1" >> config.h; \

$(gtk2tar):
	wget -c -q http://ftp.gnome.org/pub/gnome/sources/gtk+/2.24/$(gtk2tar)

$(freeglutdll): $(freeglutmak)
	cd $(freeglutdir); make && make install-strip

$(freeglutmak): $(zlibdll) $(freegluttar)
	tar xzf $(freegluttar)
	cd $(freeglutdir); $(configure)
	
$(freegluttar):
	wget -c -q http://sourceforge.net/projects/freeglut/files/freeglut/$(freeglutver)/$(freegluttar)

$(gsldll): $(gslmak)
	cd $(gsldir); make && make install-strip

$(gslmak): $(zlibdll) $(gsltar)
	tar xzf $(gsltar)
	cd $(gsldir); $(configure)

$(gsltar):
	wget -c -q http://ftp.gnu.org/pub/gnu/gsl/$(gsltar)

$(gtk3dll): $(gtk3mak)
	cd $(gtk3dir); make && make install-strip

$(gtk3mak): $(cairodll) $(atkdll) $(pangodll) $(gdk_pixbufdll) $(gtk3tar)
	tar xJf $(gtk3tar)
	cd $(gtk3dir); \
	$(configure) --enable-win32-backend --with-included-immodules=ime && \
	cp ../gtk-launch.c gtk; \
	perl ../gtk+.pl; \
#	echo "#define HAVE_ISINF 1" >> config.h; \
#	echo "#define _SSIZE_T_DEFINED 1" >> config.h; \

$(gtk3tar):
	wget -c -q http://ftp.gnome.org/pub/gnome/sources/gtk+/3.6/$(gtk3tar)
