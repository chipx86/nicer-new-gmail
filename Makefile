THEME_CSS = src/theme.css
KIWI_BASE_DIFF = src/kiwi-base.diff

STYLISH_CSS = dist/stylish.css
KIWI_SCRIPT = dist/apply-kiwi-gmail-theme.sh
BUILDS = \
	$(STYLISH_CSS) \
	$(KIWI_SCRIPT)

KIWI_RESOURCES_PATH = /Applications/Kiwi for Gmail.app/Contents/Resources


all: $(BUILDS)

clean:
	-rm -f $(BUILDS)

$(STYLISH_CSS): $(THEME_CSS)
	@mkdir -p dist
	@echo '@-moz-document url-prefix("https://mail.google.com/mail/") {' > $@
	@cat $< >> $@
	@echo '}' >> $@
	@echo Built $@

$(KIWI_SCRIPT): $(KIWI_BASE_DIFF) $(THEME_CSS)
	@mkdir -p dist
	@echo "#!/bin/sh" > $@
	@echo "patch -p0 -d '$(KIWI_RESOURCES_PATH)' <<_END_" >> $@
	@cat $(KIWI_BASE_DIFF) >> $@
	@diff -uN \
		--label "custom.css" \
		--label "custom.css" \
		/dev/null $(THEME_CSS) >> $@ || \
	if test $$? -ne 1; then exit 1; fi
	@echo "_END_" >> $@
	@chmod +x $@
	@echo Built $@
