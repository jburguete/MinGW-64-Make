$f="win32/Makefile.gcc";
open F, $f;
@ls=<F>;
close F;
open F, ">".$f;
foreach $l (@ls)
{
	$l =~ s/CC = \$\(PREFIX\)gcc/CC = \$\(PREFIX\)gcc -march=corei7 -mfpmath=sse -msse3 -mthreads -DWINVER=0x0500/g;
	print F $l;
}
close F;
