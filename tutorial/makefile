msys = msys-1.png.eps
sevenzip = 7zip-1.png.eps
git = git-1.png.eps
mpi = mpi-1.png.eps
mingw = mingw-1.png.eps
latex = Latex-1.png.eps
doxygen = doxygen-1.png.eps
winmerge = Winmerge-1.png.eps
gnuplot = GNUPlot-1.png.eps
subversion = subversion-1.png.eps

figures = $(msys) $(sevenzip) $(git) $(mpi) $(mingw) $(latex) $(doxygen) \
	$(winmerge) $(gnuplot) $(subversion)

../tutorial.pdf: tutorial.tex makefile $(figures)
	latex tutorial
	latex tutorial
	dvipdf tutorial ../tutorial.pdf

$(msys): msys-1.png
	./script msys

$(sevenzip): 7zip-1.png
	./script 7zip

$(git): git-1.png
	./script git

$(mpi): mpi-1.png
	./script mpi

$(mingw): mingw-1.png
	./script mingw

$(latex): Latex-1.png
	./script Latex

$(doxygen): doxygen-1.png
	./script doxygen

$(winmerge): Winmerge-1.png
	./script Winmerge

$(gnuplot): GNUPlot-1.png
	./script GNUPlot

$(subversion): subversion-1.png
	./script subversion
