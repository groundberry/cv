AUTHOR := Blanca Mendizabal Perello
TITLE := CV

INPUT := .
MARKDOWN := $(INPUT)/README.md
STYLE := $(INPUT)/style.css
IMAGES := $(wildcard images/*)

OUTPUT := docs
HTML := $(OUTPUT)/index.html
PDF := $(OUTPUT)/index.pdf
WORD := $(OUTPUT)/index.docx
TEXT := $(OUTPUT)/index.txt

all: $(HTML) $(PDF) $(WORD) $(TEXT)

$(HTML): $(MARKDOWN) $(STYLE) $(IMAGES)
	pandoc \
		--title-prefix "$(AUTHOR) - $(TITLE)" \
		--self-contained \
		--standalone \
		--smart \
		--from markdown \
		--to html5 \
		--css https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.css \
		--css $(STYLE) \
		--output $(HTML) \
		$(MARKDOWN)

$(PDF): $(HTML)
	npm install
	npm run print -- $(HTML) $(PDF)

$(WORD): $(MARKDOWN) $(IMAGES)
	pandoc \
		--from markdown \
		--to docx \
		--output $(WORD) \
		$(MARKDOWN)

$(TEXT): $(MARKDOWN)
	pandoc \
		--standalone \
		--smart \
		--from markdown \
		--to plain \
		--output $(TEXT) \
		$(MARKDOWN)

clean:
	rm -rf $(OUTPUT)/*

.PHONY: clean
