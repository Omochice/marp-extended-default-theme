
.PHONY: all
all: clean format extended-default.css pdf

.PHONY: format
format:
	npx prettier extended-default.scss --write

extended-default.css: extended-default.scss
	npx sass extended-default.scss > extended-default.css

.PHONY: pdf
pdf:
	npx marp examples/**/*.md --pdf --theme extended-default.css --allow-local-files --html true

.PHONY: clean
clean:
	rm extended-default.css examples/example.pdf --force

