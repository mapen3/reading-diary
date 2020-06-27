# Reading Diary

This is a simple reference management utility that is built on LaTeX and BibTeX.


## Dependencies

Please check the following installations:
- text editor
- LaTeX
- make utility
- git
- document viewer (e.g. Evince)
- web browser


## Setup

Firstly, the following folder structure should be created on the local machine:

```console
reading-diary
    ├── diary.pdf
    ├── diary.tex
    ├── library
    │   └── einstein1935can.pdf
    ├── Makefile
    ├── README.md
    ├── references.bib
    └── .gitignore
```

This can be achieved by cloning the repository:

```console
foo@bar:~$ git clone https://github.com/ldber/reading-diary.git
```

and then creating the `library` folder. The body of `diary.tex` can be cleared and the entire contents of `references.bib` can also be cleared.


## Usage

There are three main steps to remember when a new source is to be added:

1) Add the bibliography information to `references.bib`. Ideally, try to find the citation information from Google Scholar and use a consistent method of naming the BibTeX key. For example, `einstein1935can` is all lower case without spaces, and follows the structure: \[first author\]\[year published\]\[first or second word of title\].

2) Save a PDF of the source in the `library` folder. Be sure to name the PDF file the same as the BibTeX key (for example `einstein1935can.pdf`).

3) Add a summary about the source into the `diary.tex` file. Use the following syntax:
```latex
\record{einstein1935can}{27/06/2020}
Write summary here...
```
It is important to note the first argument to the `record` function must be the same BibTeX key and the second argument is the date the paper was read. Also these entries can be organised into chapters to keep similar sources together.

This is all the manual work needed, the rest is automated! From within the `reading-diary` folder run `make` to compile the LaTeX and produce `diary.pdf` which contains a documented summary of all the sources in `references.bib`.

Afterwards, also run the command `make git` which will commit and push changes onto the GitHub account thereby backing up `references.bib` and `diary.tex`.


