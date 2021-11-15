
.PHONY: all

%.eps: %.svg
	inkscape -S $*.svg --export-type=eps --export-filename=$*.eps


all: jetbrainsResearch.eps polytech.eps reanimator.eps objectGeneration.eps symbolicExecution.eps

clean:
	rm *.eps
