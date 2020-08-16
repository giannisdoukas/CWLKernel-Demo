all: clean build

build:
	jupyter-book build book

pdf:
	jupyter-book build book --builder pdflatex

clean:
	rm -rf book/_build

publish: clean build
	ghp-import -n -p -f book/_build/html