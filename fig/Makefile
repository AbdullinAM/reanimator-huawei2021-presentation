
.PHONY: all

%.eps: %.svg
	inkscape -S $*.svg --export-type=eps --export-filename=$*.eps


all: constructorExample.eps setterExample.eps methodExample.eps method.eps memoryModel.eps jetbrainsResearch.eps polytech.eps reanimator.eps objectGeneration.eps symbolicExecution.eps

clean:
	rm *.eps
