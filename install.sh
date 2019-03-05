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
  cp -iRv o2system_bar /usr/share/plymouth/themes/
  cp -iRv o2system_bar_text /usr/share/plymouth/themes/
  cp -iRv o2system_circle /usr/share/plymouth/themes/
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/o2system_bar/o2system_bar.plymouth 100
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/o2system_bar_text/o2system_bar_text.plymouth 100
  update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/o2system_circle/o2system_circle.plymouth 100
  update-alternatives --config default.plymouth
  update-initramfs -u
fi
