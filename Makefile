INPUT := .
SOURCE := $(INPUT)/main.typ

OUTPUT := docs
PDF := $(OUTPUT)/index.pdf

all: $(PDF)

$(PDF): $(SOURCE)
	typst compile $< $@

clean:
	rm -rf $(OUTPUT)/*

.PHONY: clean
