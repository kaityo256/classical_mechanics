TARGET=classical_mechanics.pdf
RE=preface.re overview.re preparation.re review.re virtual_work.re hamilton_principle.re lagrangian.re hamiltonian.re variational_principle.re phasespace.re poisson.re canonical_transformation.re quantum_mechanics.re postface.re references.re

DIRS=$(RE:.re=)

all: $(TARGET)

PHONY: imgcopy

imgcopy:
	for dir in $(DIRS);\
                do mkdir -p images/$$dir;\
                cp ../$$dir/fig/*.png images/$$dir 2>/dev/null;\
                done


%.re: ../%/README.md
	ruby md2re.rb $< > $@

$(TARGET): config.yml $(RE)
	docker run --rm -v `pwd`/:/work kauplan/review2.5 /bin/bash -c "cd /work; rake pdf"

clean:
	rm -f $(TARGET) -f $(RE)
