
Debian
====================
This directory contains files used to package erpcoind/erpcoin-qt
for Debian-based Linux systems. If you compile erpcoind/erpcoin-qt yourself, there are some useful files here.

## erpcoin: URI support ##


erpcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install erpcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your erpcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/erpcoin128.png` to `/usr/share/pixmaps`

erpcoin-qt.protocol (KDE)

