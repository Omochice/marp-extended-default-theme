
all: extended-default.css
	npx marp examples/example.md --pdf --theme extended-default.css --allow-local-files --html true

extended-default.css:
	npx sass extended-default.scss > extended-default.css

pdf: 
	npx marp slides/**/*.md --pdf --theme extended-default.css --allow-local-files --html true

clean:
	rm extended-default.css examples/example.pdf

