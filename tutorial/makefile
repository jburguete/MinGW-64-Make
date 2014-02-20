msys_png = \
	msys-1.png \
	msys-2.png \
	msys-3.png \
	msys-4.png \
	msys-5.png \
	msys-6.png \
	msys-7.png \
	msys-8.png \
	msys-9.png \
	msys-10.png \
	msys-11.png \
	msys-12.png \
	msys-13.png \
	msys-14.png \
	msys-15.png \
	msys-16.png \
	msys-17.png \
	msys-18.png \
	msys-19.png \
	msys-20.png \
	msys-21.png
sevenzip_png = \
	7zip-1.png \
	7zip-2.png \
	7zip-3.png \
	7zip-4.png \
	7zip-5.png \
	7zip-6.png \
	7zip-7.png \
	7zip-8.png \
	7zip-9.png \
	7zip-10.png \
	7zip-11.png \
	7zip-12.png \
	7zip-13.png \
	7zip-14.png \
	7zip-15.png
git_png = \
	git-1.png \
	git-2.png \
	git-3.png \
	git-4.png \
	git-5.png \
	git-6.png \
	git-7.png \
	git-8.png \
	git-9.png
mpi_png = \
	mpi-1.png \
	mpi-2.png \
	mpi-3.png \
	mpi-4.png \
	mpi-5.png \
	mpi-6.png \
	mpi-7.png \
	mpi-8.png \
	mpi-9.png \
	mpi-10.png \
	mpi-11.png
mingw_png = \
	mingw-1.png \
	mingw-2.png \
	mingw-3.png \
	mingw-4.png \
	mingw-5.png
latex_png = \
	Latex-1.png \
	Latex-2.png \
	Latex-3.png \
	Latex-4.png \
	Latex-5.png \
	Latex-6.png \
	Latex-7.png \
	Latex-8.png \
	Latex-9.png \
	Latex-10.png \
	Latex-11.png
doxygen_png = \
	doxygen-1.png \
	doxygen-2.png \
	doxygen-3.png \
	doxygen-4.png \
	doxygen-5.png \
	doxygen-6.png \
	doxygen-7.png \
	doxygen-8.png \
	doxygen-9.png \
	doxygen-10.png \
	doxygen-11.png \
	doxygen-12.png \
	doxygen-13.png
winmerge_png = \
	Winmerge-1.png \
	Winmerge-2.png \
	Winmerge-3.png \
	Winmerge-4.png \
	Winmerge-5.png \
	Winmerge-6.png \
	Winmerge-7.png \
	Winmerge-8.png \
	Winmerge-9.png \
	Winmerge-10.png \
	Winmerge-11.png \
	Winmerge-12.png \
	Winmerge-13.png \
	Winmerge-14.png
gnuplot_png = \
	GNUPlot-1.png \
	GNUPlot-2.png \
	GNUPlot-3.png \
	GNUPlot-4.png \
	GNUPlot-5.png \
	GNUPlot-6.png \
	GNUPlot-7.png \
	GNUPlot-8.png \
	GNUPlot-9.png \
	GNUPlot-10.png \
	GNUPlot-11.png \
	GNUPlot-12.png \
	GNUPlot-13.png \
	GNUPlot-14.png \
	GNUPlot-15.png \
	GNUPlot-16.png
subversion_png = \
	subversion-1.png \
	subversion-2.png \
	subversion-3.png \
	subversion-4.png \
	subversion-5.png \
	subversion-6.png \
	subversion-7.png \
	subversion-8.png \
	subversion-9.png \
	subversion-10.png \
	subversion-11.png

msys_eps = msys-21.png.eps
sevenzip_eps = 7zip-15.png.eps
git_eps = git-9.png.eps
mpi_eps = mpi-11.png.eps
mingw_eps = mingw-5.png.eps
latex_eps = Latex-11.png.eps
doxygen_eps = doxygen-13.png.eps
winmerge_eps = Winmerge-14.png.eps
gnuplot_eps = GNUPlot-16.png.eps
subversion_eps = subversion-11.png.eps

figures = $(msys_eps) $(sevenzip_eps) $(git_eps) $(mpi_eps) $(mingw_eps) \
	$(latex_eps) $(doxygen_eps) $(winmerge_eps) $(gnuplot_eps) $(subversion_eps)

../tutorial.pdf: tutorial.tex makefile $(figures)
	latex tutorial
	latex tutorial
	dvipdfmx -o ../tutorial.pdf tutorial.dvi

$(msys_eps): $(msys_png)
	./script msys

$(sevenzip_eps): $(7zip_png)
	./script 7zip

$(git_eps): $(git_png)
	./script git

$(mpi_eps): $(mpi_png)
	./script mpi

$(mingw_eps): $(mingw_png)
	./script mingw

$(latex_eps): $(Latex_png)
	./script Latex

$(doxygen_eps): $(doxygen_png)
	./script doxygen

$(winmerge_eps): $(Winmerge_png)
	./script Winmerge

$(gnuplot_eps): $(GNUPlot_png)
	./script GNUPlot

$(subversion_eps): $(subversion_png)
	./script subversion
