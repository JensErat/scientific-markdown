# Markdown for Scientific Publications

This provides an example for use of Markdown for scientific publications.

## General Workflow

Markdown files are translated to LaTeX using Pandoc, which is more flexible than direct compilation to PDF files (and makes finding problems easier). The resulting `.tex` files are then typeset using `latexmk`. Contained citations in BibTex format are also managed by Pandoc and work output-independent.

Make sure to [fetch the most recent Pandoc](http://johnmacfarlane.net/pandoc/installing.html). Pandoc is under very active development, and depending on your distribution the packaged versions might be horribly outdated.

## Beamer Presentations

`presentation.md` contains an example presentation (also containing some further explanation). `presentation-header.tex` is included in the preamble, `presentation-toc.tex` contains the table of contents and includes Creative Commons logo.

Generate the presentation by running `make presentation` (given you have `make` setup on your computer, otherwise run the contained commands manually).

## Printed Reports

`report.md` is an example for a printed report using the article class. `report-header.tex` again is included in the preamble. `report-footer.tex` is added after the actual contents, and here includes the Creative Commons logo.

Generate the report by running `make report` (given you have `make` setup on your computer, otherwise run the contained commands manually).

## License and Attribution

All contents are licensed under the Creative Commons Attribution ShareAlike 3.0 license.

Attribution for following files goes to:

- `images/kitten.jpg`: [Wikimedia Commons, André Karwath](http://commons.wikimedia.org/w/index.php?title=File:Six_weeks_old_cat_%28aka%2    9.jpg&oldid=141863103)
- `citation.csl`: [zotero.org, Naeem Esfahani](http://www.zotero.org/styles/acm-sig-proceedings-long-author-list)

I additionally share the files required or helpful for generating your own documents (namely `makefile`, `presentation-header.tex`, `presentation-toc.tex`, `report-header.tex` and `report-footer.tex`) as CC0/public domain.
