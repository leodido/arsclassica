ROOT_FILE 		= arsclassica
BACKUP_FILES 	= *~
CLEAN_FILES 	= $(BACKUP_FILES) *-frn.tex *.fls *.acn *.acr *.alg *.aux *.bcf *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg *.ind *.ist *.lof *.log *.lot *.lol *.maf *.mtc *.mtc0 *.nav *.nlo *.out *.pdfsync *.ps *.snm *.synctex.gz *.toc *.vrb *.xdy *.tdo *.run.xml *-blx.bib
DIST_FILES 		= $(ROOT_FILE).pdf $(ROOT_FILE)-frn.pdf

.PHONY: clean distclean tex index frontispiece biber thesis

clean:
	echo $(CLEAN_FILES) | xargs $(RM); \
	find . -name '$(BACKUP_FILES)' | xargs $(RM);

distclean: clean
	$(RM) $(DIST_FILES)

tex: 
	latexmk -silent -f -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $(ROOT_FILE).tex

index: 
	makeindex -s classic $(ROOT_FILE)
	
frontispiece:
	if [ ! -f "$(ROOT_FILE)-frn.pdf" ]; \
	then \
		pdflatex $(ROOT_FILE)-frn.tex; \
	fi;

biber: 
	biber $(ROOT_FILE)

thesis: tex
	$(MAKE) index
	$(MAKE) biber
	$(MAKE) frontispiece
	$(MAKE) tex
