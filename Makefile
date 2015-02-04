# This is a Makefile!

build:
	sass scss/main.scss:css/style.css --style compressed

watch:
	sass --watch scss/main.scss:css/style.css --style compressed

test:
	make
	open "test/index.html"
	make watch

clean:
	rm -rf css/ .sass-cache/

# More info about this hack: http://chrisadams.me.uk/2012/10/21/understanding-make/
.PHONY: test
