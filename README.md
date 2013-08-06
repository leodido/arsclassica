# ArsClassica

<img src="http://upload.wikimedia.org/wikipedia/commons/9/92/LaTeX_logo.svg" alt="LaTeX logo" style="width: 50px;"/> thesis template based on *ArsClassica* and *ClassicThesis* packages with custom and useful additions. 

## Prerequisites

- A complete <img src="http://upload.wikimedia.org/wikipedia/commons/9/92/LaTeX_logo.svg" alt="LaTeX logo" style="width: 50px;"/> distribution (e.g., texlive).

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

[Lorenzo Pantieri](http://www.lorenzopantieri.net)
