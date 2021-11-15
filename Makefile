
%.tex: %.md preamble.yml preamble.tex eps
	pandoc --filter ./overlay-filter.py $*.md preamble.yml --include-in-header=preamble.tex -s -t beamer -o $*.tex

%.pdf: %.tex
	sed -i -e 's/\\frame{\\titlepage}/\\frame\[plain, noframenumbering\]{\\titlepage}/g' $*.tex
	xelatex $*.tex
	xelatex $*.tex

all: presentation.pdf 

eps:
	make -C fig/

.PHONY: all

clean:
	make -C fig/ clean 
	rm *.pdf *.toc *.nav *.log *.aux *.snm *.out

