paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

.PHONY: clean
cleanall: cleanaux cleanlog cleanpdf cleanpng

cleanaux:
	rm *.aux

cleanlog:
	rm *.log

cleanpdf:
	rm *.pdf

cleanpng:
	rm *.png

