
.PHONY: all
all: d16n-v1_0.html

.PHONY: preview
preview: d16n-v1_0.html
	@# TODO: this should be xdg-open on linux
	open $<

d16n-v1_0.html: d16n-v1_0.adoc
	asciidoctor $<
