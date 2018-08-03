SOURCES	= \
	main.tex

.PHONY: default all clean

default:
	pdflatex  -shell-escape main.tex

all:  
	pdflatex --shell-escape main.tex
	bibtex main
	pdflatex --shell-escape main.tex
	pdflatex --shell-escape main.tex


clean:
	-rm -rf main.pdf main.synctex.gz main.out main.tpt main.aux main.bbl main.blg main.dvi main.log main.ps *~ *.pdf

sources:
	@echo  ${SOURCES}
