PDFLATEX=pdflatex
SKIM = skim_revert.sh

all : pdf

pdf : paper.pdf
	$(SKIM) $(CURDIR)/paper.pdf

paper.pdf : paper.tex
	$(PDFLATEX) paper.tex
	$(PDFLATEX) paper.tex

clean : 
	rm -f *.aux *.dvi *.ps *.log *.pdf *~
