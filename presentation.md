---
title: Scientific Markdown
subtitle: Publications using Markdown and Pandoc
fontsize: smaller
author: Jens Erat
date:   February 3rd, 2015
---

# \LaTeX\ and Beamer are Great

# Why \LaTeX\ Sucks

## Counting Braces [@wiki:latexerrors]

    ! Too many }'s.
    l.6 \date December 2004}

## Not in Mathematics Mode [@wiki:latexerrors]

    ! Missing $ inserted

## Counting Braces, ctd. [@wiki:latexerrors]

    Runaway argument?
    {December 2004 \maketitle
    ! Paragraph ended before \date was complete.
    <to be read again>
    \par
    l.8

## Reading \LaTeX\ Documents is a Mess

```latex
\section{Markdown}\label{markdown}

\href{http://daringfireball.net/projects/markdown/}{Markdown}
syntax is \emph{much} easier to read, but powerful enough for
\(95%\) of your document.

\begin{figure}[htbp]
\centering
\includegraphics{images/markdown.png}
\caption{Markdown Logo}
\end{figure}

\section{Pandoc}\label{pandoc}

\href{http://johnmacfarlane.net/pandoc/}{Pandoc} is a great
tool for converting Markdown (and lots of other documents) to
different output formats.
```

## Reading Markdown Documents is Easy and Fun

```markdown
# Markdown

[Markdown] syntax is _much_ easier to read, but powerful enough
for $95%$ of your document.

![Markdown Logo]

# Pandoc

[Pandoc] is a great tool for converting Markdown (and lots of
other documents) to different output formats.

[Markdown]:      http://daringfireball.net/projects/markdown/
[Markdown Logo]: images/markdown.png
[Pandoc]:        http://johnmacfarlane.net/pandoc/
```

# The (Common) Markdown Tool Chain

## Disclaimer

- no GUI
- command line
- we will still see \LaTeX, sometimes

## Overview

- **Pandoc**: convert from enhanced Markdown syntax to \LaTeX
- **\LaTeX\ ** and the **Beamer** package: typeset great-looking documents
- **latexmk**: run \LaTeX
- **make**: put everything together

## Pandoc

> If you need to convert files from one markup format into another, pandoc is your swiss-army knife. [@macfarlane:pandoc]

- convert Markdown documents to either plain \LaTeX\ or Beamer format
- uses templates
- arbitrary \TeX\ commands allowed in-between!

### Output Format

- could also directly create PDF files
- intermediate \LaTeX\ makes finding problems easier

## Including \LaTeX Files

Using enforced templates, title pages, content slides, footers and similar often require falling back to plain \LaTeX.

Including files [@macfarlane:pandocreadme]:

    -H FILE, --include-in-header=FILE
    -B FILE, --include-before-body=FILE
    -A FILE, --include-after-body=FILE

Use \LaTeX\ where necessary, but fall back to Markdown for most of the document.

## latexmk

- `latexmk` helps at compiling \LaTeX files
- repeatedly compiles until no further changes
    - table of contents
    - bibliography
    - \dots
- helps cleaning up
- result: PDF files

## make

- originally used for compiling software
- run several commands, one after the other

\ 

- `make presentation` and `make report` instead of complicated, long command lines
- could be easyily replaced by Windows batch files, \dots

# Demo Time

# Practice and Limitations

## Markdown and Pandoc

- you're allowed to use \TeX\ everywhere

        Have a look at figure \ref{example}.

        ![Some nice figure \label{example}](images/figure.png)

- finish Markdown files with an empty line
    - otherwise, weird things might happen when using multiple files
- use an editor with Markdown support and preview
- always use the newest Pandoc release[^pandoc-install]

[^pandoc-install]: http://johnmacfarlane.net/pandoc/installing.html

## Structuring Slides

- Pauses using "horizontal lines"

        . . .

- Break apart lists with comments or protected whitespace

        - item 1
        - item 2

        \ 
        <!-- -->

        - item 1
        - item 2

- Protected whitespace also helpful for images not wrapped in figures

        ![Inline image](example.png)\ 

## Multi-Column Frames

- not supported by Pandoc
- really needed?
- extending pandoc with a filter [^column-filter]

[^column-filter]: http://stackoverflow.com/a/24040087/695343

## Source Code Highlighting

- use fenced code blocks to declare the language used

        ```java
        public static void foo(String bar) {
          return "batz";
        }
        ```
- setting up highlighting in your header include (see `listings` reference [@ctan:listings])

## Tables

- a mess in both \LaTeX\ and Markdown

\ 

- **Markdown tables** are automatically put into figures
    - online editors [^table-editor]
    - clean up by "converting from markdown to markdown"

            pandoc --to markdown table.md

    - different syntax possibilities
- **\LaTeX\ tables** (ie. for large, complicated tables)

[^table-editor]: eg. http://www.tablesgenerator.com/markdown_tables


## References

- Use pseudo classes for changing frame/section properties
    - `{.allowframebreaks}` to allow splitting long reference lists to multiple frames
    - `{.unnumbered}` to have an unnumbered section title

- Beamer example:

    ```
    # References
    
    ## References {.allowframebreaks}
    ```

## Bibliography

- ingredients:
    - bibliography file (typically BibTex, other formats supported)
    - citation style (`.csl` file)
    - references in document (`[@bibtex:reference]`)
- handled by pandoc: also works with HTML export

## Bonus

\begin{center}\Large
A presentation is a paper is a presentation.
\end{center}

## On GitHub. Tomorrow.

All files will be uploaded to GitHub.

**\large<https://github.com/JensErat/scientific-markdown>**

(and linked on the Fachschaft's web page)

![QR code to GitHub](images/qrcode.png)\ 

Jens Erat, jens.erat@uni-konstanz.de

# References

## References

