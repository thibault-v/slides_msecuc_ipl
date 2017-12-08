all: main.tex  #main.bib
	pdflatex -synctex=1 -interaction=nonstopmode main.tex
	pdflatex -synctex=1 -interaction=nonstopmode main.tex

release: all clean

clean:
	rm -f main.aux main.log main.synctex.gz main.toc main.tex.bak main.out main.bbl main.bcf main.blg main.run.xml

purge: clean
	rm -f main.pdf
