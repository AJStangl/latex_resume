.PHONY: examples

CC = xelatex
EXAMPLES_DIR = docs
RESUME_DIR = docs/resume
CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) -no-file-line-error $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
