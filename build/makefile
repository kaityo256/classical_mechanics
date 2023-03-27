TARGET=classical_mechanics.pdf
RE=preface.re preparation.re review.re virtual_work.re hamilton_principle.re lagrangian.re hamiltonian.re phasespace.re poisson.re postface.re

all: $(TARGET)

imgcopy:
	mkdir -p images/vcs;cp ../vcs/fig/*.png images/vcs
	mkdir -p images/term;cp ../term/fig/*.png images/term
	mkdir -p images/command;cp ../command/fig/*.png images/command

%.re: ../%/README.md
	ruby md2re.rb $< > $@

$(TARGET): config.yml $(RE)
	docker run --rm -v `pwd`/:/work kauplan/review2.5 /bin/bash -c "cd /work; rake pdf"

clean:
	rm -f $(TARGET) -f $(RE)
