clean:
	latexmk -C

all:
	report
	presentation

presentation:
	pandoc \
		--slide-level 2 \
		--from markdown+yaml_metadata_block+table_captions \
		--to beamer \
		--include-in-header presentation-header.tex \
		--listings \
    --highlight-style espresso \
		--include-before-body presentation-toc.tex \
		--bibliography bibliography.bibtex \
		--csl citation.csl \
		--output presentation.tex \
		presentation*.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf presentation.tex

report:
	pandoc \
		--from markdown+yaml_metadata_block+table_captions \
		--to latex \
		--variable documentclass=article \
    --variable classoption=twocolumn \
    --variable classoption=12pt \
		--number-sections \
		--include-in-header report-header.tex \
		--include-after-body report-footer.tex \
		--listings \
		--bibliography bibliography.bibtex \
		--csl citation.csl \
		--output report.tex \
		--standalone \
		report*.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf report.tex


		#--variable theme=Minimal \
