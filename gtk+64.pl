$f = "gtk/gtk.def";
open F, $f; 
@ls = <F>;
close F;
open F, ">".$f;
foreach $l (@ls)
{
	$l =~ s/^(\s+)(.*?)(\s+PRIVATE\n)/$1$2=$2\_utf8$3/g;
	print F $l;
}
close F;
