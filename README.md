MinGW-64-Make
=============

This is a collection of Makefiles and patches to set up a
[MSYS](http://sourceforge.net/projects/mingw) terminal, a
[MINGW](http://sourceforge.net/projects/mingw) compiler and some useful tools
and libraries on Microsoft Windows systems.

Exhaustive instructions to build it step by step can be consulted in
[tutorial](tutorial.pdf).

Most of patches and building instructions have been extracted from
[Alexpux](https://github.com/Alexpux).

INSTRUCTIONS
============

1.	Install the last version of
	[MSYS](http://sourceforge.net/projects/mingw/files/Installer), selecting
	only the *msys-base* option, in C:\MinGW.

	WARNING! if you change the installation directory you have to change the
	installdir variable in the Makefiles. Due to some bugs in MSYS, use of
	spaces and wrong types in the installation directory is strongly
	discouraged.

2.	Install the last version of
	[7-Zip for Windows](http://www.7-zip.org/downloag.html) and include the
	installation directory in the PATH environment variable.

3.	Install the last version of
	[Git for Windows](http://git-scm.com/download/win) and include the
	installation directory in the PATH environment variable selecting the *Run
	Git from the Windows Command Prompt* option of the installer.

4.	Optionally, install
	[Microsoft MPI](http://www.microsoft.com/en-sg/details.aspx?id=39961)

	WARNING! at this point, if you have installed Microsoft Visual C++ and you
	have the installation directory included on the PATH environment variable,
	you must avoid it. It interferes on the building process. You can put the
	directory on the PATH when the building will be finished.

5.	Open a MSYS terminal as administrator (clicking on the right button and
	selecting the *Execute as administrator* option) and clone this repository.

	> $ git clone git@github.com:jburguete/MinGW-64-Make.git
	> 

6.	Execute *make* command with 2 arguments:

	-*ARCH* is the architecture and admits "32" and "64" values (for 32 and 64
	bits respectively).

	-*VER* is the version and admits "stable", "testing" and "experimental"
	values.

	For instance:

	> $ cd MinGW-64-Make
	> 
	> $ make ARCH="64" VER="stable"

	Alternative option is to execute *make* command with the desired Makefile.
	For instance:

	> $ cd MinGW-64-Make
	> 
	> $ make -f Makefile.64.stable

INSTALLED TOOLS, COMPILERS AND LIBRARIES
========================================

MSYS Tools
----------

These tools are 32 bits.

Tool | Stable | Testing | Experimental
------- | ------ | ------ | ------
bash    | 3.1.17 | 3.1.17 | 3.1.17
bison   | 2.4.2  | 2.4.2  | 2.4.2
flex    | 2.5.35 | 2.5.35 | 2.5.35
gawk    | 3.1.7  | 3.1.7  | 3.1.7
grep    | 2.5.4  | 2.5.4  | 2.5.4
groff   | 1.20.1 | 1.20.1 | 1.20.1
gzip    | 1.3.12 | 1.3.12 | 1.3.12
m4      | 1.4.16 | 1.4.16 | 1.4.16
make    | 3.81   | 3.81   | 3.81
man     | 1.6f   | 1.6f   | 1.6f
openssh | 5.4p1  | 5.4p1  | 5.4p1
patch   | 2.6.1  | 2.6.1  | 2.6.1
perl    | 5.8.8  | 5.8.8  | 5.8.8
sed     | 4.2.1  | 4.2.1  | 4.2.1
tar     | 1.23   | 1.23   | 1.23
texinfo | 4.13a  | 4.13a  | 4.13a
unzip   | 6.0    | 6.0    | 6.0
vim     | 7.3    | 7.3    | 7.3
wget    | 1.12   | 1.12   | 1.12
xz      | 5.0.3  | 5.0.3  | 5.0.3
zip     | 3.0    | 3.0    | 3.0

MinGW compilers, libraries and tools
------------------------------------

These tools can be 32 or 64 bits depending on the choiced architecture.

    | Stable | Testing | Experimental
--- | ------ | ------- | ------------
atk | 2.10.0 | 2.10.0 | 2.10.0
autoconf | 2.69 | 2.69 | 2.69
automake | 1.4.1 | 1.4.1 | 1.4.1
cairo | 1.12.16 | 1.12.16 | 1.12.16
expat | 2.1.0 | 2.1.0 | 2.1.0
fontconfig | 2.11.0 | 2.11.0 | 2.11.0
freeglut | 2.8.1 | 2.8.1 | 2.8.1
freetype | 2.5.2 | 2.5.2 | 2.5.2
gcc (C, C++, Objective C and Fortran compilers) | 4.8.2 | 4.8.2 | 4.8.2
gdk_pixbuf | 2.30.2 | 2.30.2 | 2.30.2
gettext | 0.18.3.2 | 0.18.3.2 | 0.18.3.2
glib | 2.38.2 | 2.38.2 | 2.38.2
gsl | 1.16 | 1.16 | 1.16
gtk+2 | 2.24.22 | 2.24.22 | 2.24.22
gtk+3 | 3.6.4 | 3.10.6 | 3.10.6
libffi | 3.0.13 | 3.0.13 | 3.0.13
libiconv | 1.14 | 1.14 | 1.14
libpng | 1.6.8 | 1.6.8 | 1.6.8
libtool | 2.4.2 | 2.4.2 | 2.4.2
libxml | 2.9.1 | 2.9.1 | 2.9.1
pango | 1.36.2 | 1.36.2 | 1.36.2
pixman | 0.32.4 | 0.32.4 | 0.32.4
pkg-config | 0.28 | 0.28 | 0.28
python | 2.7.6 | 2.7.6 | 2.7.6
readline | 6.2 | 6.2 | 6.2
sqlite | 3.8.3 | 3.8.3 | 3.8.3
termcap | 1.3.1 | 1.3.1 | 1.3.1
zlib | 1.2.8 | 1.2.8 | 1.2.8

