TARGET=classical_mechanics.pdf
RE=preface.re 

all: $(TARGET)

imgcopy:
	mkdir -p images/vcs;cp ../vcs/fig/*.png images/vcs
	mkdir -p images/term;cp ../term/fig/*.png images/term
	mkdir -p images/command;cp ../command/fig/*.png images/command

%.re: ../%/README.md
	#mkdir -p images/$*;cp ../$*/fig/*.png images/$*
	md2review $< > $@

$(TARGET): config.yml $(RE)
	docker run --rm -v `pwd`/:/work kauplan/review2.5 /bin/bash -c "cd /work; rake pdf"

clean:
	rm -f $(TARGET) -f $(RE)
