PROG ?= qr
PREFIX ?= /usr/local
DESTDIR ?=
LIBDIR ?= $(PREFIX)/lib
SYSTEM_EXTENSION_DIR ?= $(LIBDIR)/password-store/extensions

install:
	@install -v -d "$(DESTDIR)$(SYSTEM_EXTENSION_DIR)/"
	@install -v -m 0755 pass-insert-qr "$(DESTDIR)$(SYSTEM_EXTENSION_DIR)/pass-insert-qr.bash"
	@install -v -m 0755 pass-show-qr "$(DESTDIR)$(SYSTEM_EXTENSION_DIR)/pass-show-qr.bash"
	@echo
	@echo "pass-$(PROG) is installed succesfully"
	@echo

uninstall:
	@rm -vrf \
		"$(DESTDIR)$(SYSTEM_EXTENSION_DIR)/pass-insert-qr.bash" \
		"$(DESTDIR)$(SYSTEM_EXTENSION_DIR)/pass-show-qr.bash"

.PHONY: install uninstall
