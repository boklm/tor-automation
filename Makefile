SOURCES=tor-automation-review.asc

.PHONY: all pdf html clean

all: pdf html

pdf: $(SOURCES:.asc=.pdf)

html: $(SOURCES:.asc=.html)

%.html: %.asc
	asciidoc -b html --theme volnitsky $<

%.pdf: %.asc
	a2x -f pdf $<

clean:
	rm -f *.pdf *.html *~
