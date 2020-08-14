all: clean build

build:
	jupyter-book build book

clean:
	rm -rf book/_build

publish: clean build
	ghp-import -n -p -f book/_build/html