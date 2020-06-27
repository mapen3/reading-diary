filename=diary

pdf:	
	latex ${filename}
	bibtex ${filename}
	latex ${filename}
	latex ${filename}
	dvipdf ${filename}.dvi
	rm $(addprefix $(filename),.aux .bbl .blg .dvi .log .toc .out)
