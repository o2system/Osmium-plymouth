#!/bin/bash


if ((${EUID:-0} || "$(id -u)")); then
  clear
  sleep 1.5
  echo "You are not root"
  sleep 0.5
  echo "Please run using sudo command"
  sleep 1.5
  exit 1
else
  clear
  sleep 1.5
  echo "Now you're root user"
  sleep 3
  echo "Please be careful!!"
  sleep 1.5
  cp -Rv Osmium_bar /usr/share/plymouth/themes/
  cp -Rv Osmium_white /usr/share/plymouth/themes/
  cp -Rv Osmium_bar_text /usr/share/plymouth/themes/
  cp -Rv Osmium_circle /usr/share/plymouth/themes/
  cp -Rv Osmium_logo /usr/share/plymouth/themes/
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_bar/Osmium_bar.plymouth 100
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_white/Osmium_white.plymouth 100
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_bar_text/Osmium_bar_text.plymouth 100
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_circle/Osmium_circle.plymouth 100
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/Osmium_logo/Osmium_logo.plymouth 100
  update-alternatives --config default.plymouth
  update-initramfs -u
fi
