PDFS = soulpeace/soulpeace_en.pdf soulpeace/soulpeace_fi.pdf
PDF_COPIES = pdf/soulpeace_en.pdf pdf/soulpeace_fi.pdf

all: $(PDFS) $(PDF_COPIES)

%.pdf: %.tex
	xelatex -output-directory=$(dir $@) $<

pdf/%.pdf: soulpeace/%.pdf
	mkdir -p pdf
	cp $< $@

clean:
	rm -f soulpeace/*.aux soulpeace/*.log soulpeace/*.pdf soulpeace/*.out pdf/*.pdf