target = currVitae
DEPS = currVitae.tex

all: ${target}.pdf

${target}.pdf: ${target}.tex $(DEPS)
	pdflatex ${target}.tex
	pdflatex ${target}.tex

view: ${target}.pdf
	@xpdf ${target}.pdf

clean:
	@rm -f ${target}.aux
	@rm -f ${target}.log
	@rm -f ${target}.out
	@rm -f ${target}.pdf
