.PHONY: install uninstall set-default

uninstall:
	rm -rv /usr/share/plymouth/themes/osmium || true

install: uninstall
	cp -Rv Osmium_bar /usr/share/plymouth/themes/
	cp -Rv Osmium_white /usr/share/plymouth/themes/
	cp -Rv Osmium_bar_text /usr/share/plymouth/themes/
	cp -Rv Osmium_circle /usr/share/plymouth/themes/
	cp -Rv Osmium_logo /usr/share/plymouth/themes/

set-default:
	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_bar/Osmium_bar.plymouth 100
	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_white/Osmium_white.plymouth 100
	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_bar_text/Osmium_bar_text.plymouth 100
	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_circle/Osmium_circle.plymouth 100
	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_logo/Osmium_logo.plymouth 100
	update-alternatives --config default.plymouth
	update-initramfs -u