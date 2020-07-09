BUILD_DIR := build
FILES := \
    cv_en.pdf \

.PHONY: all
all: $(FILES)

%.pdf: $(BUILD_DIR)/%.pdf
	cp $< $@

$(BUILD_DIR)/%.pdf: %.tex
	@latexmk $< # Let the tool do its job

.PHONY: clean
clean:
	$(RM) -r build cv_en.pdf
