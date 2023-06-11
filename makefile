INDEX=$(shell ls */README.md | sed 's/README.md/index.html/')
MD=$(shell ls */README.md)
PANDOC_HTMLOPT=--mathjax -t html --template=template
PANDOC_TEXOPT=--highlight-style tango --pdf-engine=lualatex -V documentclass=ltjarticle -V geometry:margin=1in -H ../mytemplate.tex
TARGET=$(INDEX)

PDF=$(MD:.md=.pdf)

all: $(TARGET) index.html

pdf: $(PDF)

index.md: README.md
	sed 's/README.md/index.html/' $< > $@

index.html: index.md
	pandoc -s $< -o $@ $(PANDOC_HTMLOPT) --shift-heading-level-by=-1 
	rm -f index.md 

%/index.md: %/README.md
	sed '2a [[Up]](../index.html)' $< > $@
	sed -i '3a [[Repository]](https://github.com/kaityo256/classical_mechanics)\n' $@

%/index.html: %/index.md
	pandoc -s $< -o $@ $(PANDOC_HTMLOPT) --shift-heading-level-by=-1 

%/README.pdf: %/README.md
	cd $(dir $@);pandoc $(notdir $<) -s -o $(notdir $@) $(PANDOC_TEXOPT)

copy-pdf:
	cp overview/README.pdf ./classical_mechanics01.pdf
	cp preparation/README.pdf ./classical_mechanics02.pdf
	cp newton/README.pdf ./classical_mechanics03.pdf
	cp virtual_work/README.pdf ./classical_mechanics04.pdf
	cp hamilton_principle/README.pdf ./classical_mechanics05.pdf

clean:
	rm -f $(TARGET) index.html
