INDEX=$(shell ls */README.md | sed 's/README.md/index.html/')
PANDOC_HTMLOPT=--mathjax -t html --template=template
PANDOC_TEXOPT=--highlight-style tango --pdf-engine=lualatex -V documentclass=ltjarticle -V geometry:margin=1in -H ../mytemplate.tex
TARGET=$(INDEX)

all: $(TARGET) index.html

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

clean:
	rm -f $(TARGET) index.html
