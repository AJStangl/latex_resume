.PHONY: examples

CC = xelatex
DOCUMENT_DIRECTORY = docs
RESUME_DIR = docs/resume
CV_DIR = examples/cv

RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: $(DOCUMENT_DIRECTORY)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) -no-file-line-error $<

cover.pdf: $(DOCUMENT_DIRECTORY)/coverletter.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) -no-file-line-error $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
