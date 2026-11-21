PANDOC ?= pandoc
ASSIGNMENT_PDFS := $(addprefix assignments/,$(addsuffix .pdf,01 02 03 04 05 06 07 08))
SYLLABUS_AUX := $(addprefix sosc13200-syllabus-2027.,aux bbl blg fdb_latexmk fls log out synctex.gz toc)

.PHONY: assignments clean
assignments: $(ASSIGNMENT_PDFS)

assignments/%.pdf: assignments/%.md assets/assignment-header.tex
	$(PANDOC) $< --from=markdown+raw_tex --standalone --pdf-engine=xelatex \
		-V documentclass=article -V geometry:margin=0.8in -V fontsize=11pt \
		-V colorlinks=true -V linkcolor=blue -V urlcolor=blue \
		--include-in-header=assets/assignment-header.tex -o $@

clean:
	$(RM) $(SYLLABUS_AUX)
