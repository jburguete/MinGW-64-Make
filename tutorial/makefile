msys = msys-1.png.eps
sevenzip = 7zip-1.png.eps
git = git-1.png.eps
mingw = mingw-1.png.eps

figures = $(msys) $(sevenzip) $(git) $(mingw)

../tutorial.pdf: tutorial.tex makefile $(figures)
	latex tutorial
	latex tutorial
	dvipdf tutorial ../tutorial

$(msys): msys-1.png
	./script msys

$(sevenzip): 7zip-1.png
	./script 7zip

$(git): git-1.png
	./script git

$(mingw): mingw-1.png
	./script mingw
