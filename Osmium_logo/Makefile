.PHONY: install uninstall set-default

uninstall:
	rm -rv /usr/share/plymouth/themes/osmium || true

install: uninstall
	mkdir /usr/share/plymouth/themes/osmium
	cp -v *.script *.plymouth *.png /usr/share/plymouth/themes/osmium/

set-default:
	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/osmium/osmium.plymouth 100
