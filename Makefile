LATEX     = latex -shell-escape
DVIPS	= dvips
DVIPDF  = dvipdft
XDVI	= xdvi -gamma 4
GH		= gv
PDF2 = ps2pdf


all: writing1


writing1:
	$(LATEX) writing1.tex
	$(DVIPS) -R -Poutline -t letter writing1.dvi -o writing1.ps
	$(PDF2) writing1.ps


clean:
	rm -f *.pdf *.ps *.dvi *.out *.log *.aux *.bbl *.blg *.pyg

.PHONY: all show clean ps pdf showps