
TARGETS = d16n-v1_0.html latest.html

.PHONY: all
all: $(TARGETS)

.PHONY: preview
preview: d16n-v1_0.html
	@# TODO: this should be xdg-open on linux
	open $<

d16n-v1_0.html: d16n-v1_0.adoc
	asciidoctor $<

latest.html: d16n-v1_0.html
	cp $< $@


.PHONY: clean
clean:
	$(RM) $(TARGETS)
