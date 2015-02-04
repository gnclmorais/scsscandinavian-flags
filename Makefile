# This is a Makefile!

watch:
	sass --watch scss/main.scss:css/style.css

test:
	sass scss/main.scss:css/style.css
	open "test/overview.html"
	make watch

clean:
	rm -rf css/ .sass-cache/

# More info about this hack: http://chrisadams.me.uk/2012/10/21/understanding-make/
.PHONY: test
