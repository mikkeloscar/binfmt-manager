.PHONY: install uninstall

install:
	# Binary
	install -d $(DESTDIR)/usr/bin
	install -m755 binfmt_manager $(DESTDIR)/usr/bin/
	# Service
	install -d $(DESTDIR)/usr/lib/systemd/system
	install -m644 binfmt-manager@.service $(DESTDIR)/usr/lib/systemd/system/

uninstall:
	rm $(DESTDIR)/usr/bin/binfmt_manager
	rm $(DESTDIR)/usr/lib/systemd/system/binfmt-manager@.service
