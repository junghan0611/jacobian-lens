.PHONY: all pdf html clean
NAME = survey

all: pdf html

## org → acmart LaTeX → PDF  (build.el, vendored from memex-kb paper_build.el)
pdf: $(NAME).pdf
$(NAME).pdf: $(NAME).org build.el references.bib
	emacs -Q --batch --script build.el $(NAME).org

## org → self-contained HTML  (pandoc + citeproc + KaTeX)
html: $(NAME).html
$(NAME).html: $(NAME).org references.bib
	pandoc $(NAME).org -f org -t html5 -s --citeproc \
	  --bibliography=references.bib --katex \
	  -o $(NAME).html

clean:
	rm -f *.aux *.bbl *.blg *.fdb_latexmk *.fls *.log *.out *.toc *.tex *~
	# 산출물(*.pdf *.html)은 gitignore. 필요시 수동 삭제.
