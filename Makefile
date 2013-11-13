SOURCES=tor-automation-review.asc

.PHONY: all pdf clean

all: pdf

pdf: $(SOURCES:.asc=.pdf)

%.pdf: %.asc
	a2x -f pdf $<

clean:
	rm -f *.pdf *~
