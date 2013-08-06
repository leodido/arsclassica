# ArsClassica

`LaTeX` thesis template based on *ArsClassica* (version [4.0.3](http://www.ctan.org/pkg/arsclassica)) and *ClassicThesis* (version [4.1](http://www.ctan.org/pkg/classicthesis)) packages with custom and useful additions. 

This template provides the following **enhancements**:

1. Completely automated compilation task

2. Additional typographical niceties

3. Fixes and extensions (see file `settings.tex`):

    - Bibliography back-end default to `biber`
    - Multi-line titles supported
    - Alternative chapter numbers style
    - Integrated analytical index
    - Custom command to indexing terms (e.g., `\keywordsub[category]{term}`)
    - Support for acronyms
    - Predefined custom environments (e.g., theorems, definitions)
    - Custom reference examples
    - Predefined listings environment
    - Predefined pseudo-code listings language
    - Various utility commands (e.g., `\lwcase` to lowercase the first letter of the word that follows it)

## Prerequisites

- A complete `LaTeX` distribution (e.g., texlive).

- The `make` build automation utility.

## Workflow

The suggested workflow is:

1. Clone this repository:

    `git clone git@github.com:leodido/arsclassica.git`.

2. Create a new branch:

    `cd ~/arsclassica && git checkout -b mythesis`.

3. First-time complete build of the thesis:

    `make -s thesis`.

4. Write a wonderful (not only typographically) thesis. No more excuses.

## Commands

* Remove all the generated files except the PDFs:

    `make -s clean`.

* Remove all the generated files:

    `make -s distclean`.

* Compile the thesis:

    `make -s thesis`.

    This command embeds the correct sequence of commands relevant for the proper compilation of the thesis, including analytical index, bibliography, and title page.

* Update the analytical index:

    `make -s index && make -s tex`.

## Credits

[Lorenzo Pantieri](http://www.lorenzopantieri.net) for his *ArsClassica* `LaTeX` package: it is aimed to improve some ty­po­graph­i­cal points of the *Clas­sicTh­e­sis* style by André Miede. Documentation and features explaination ca be found [here](http://ftp.uniroma2.it/TeX/macros/latex/contrib/arsclassica/ArsClassica.pdf).

Andrè Miede for its *ClassicThesis* package ([link](http://ctan.mirror.garr.it/mirrors/CTAN/macros/latex/contrib/classicthesis/ClassicThesis.pdf)) which pro­vides an el­e­gant lay­out de­signed in homage to Bringhurst’s "The Ele­ments of Ty­po­graphic Style".
