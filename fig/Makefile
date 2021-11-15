
.PHONY: all

%.eps: %.svg
	inkscape -S $*.svg --export-type=eps --export-filename=$*.eps


all: jetbrainsResearch.eps polytech.eps

clean:
	rm *.eps
