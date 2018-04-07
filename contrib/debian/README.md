
Debian
====================
This directory contains files used to package bhashd/bhash-qt
for Debian-based Linux systems. If you compile bhashd/bhash-qt yourself, there are some useful files here.

## bhash: URI support ##


bhash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bhash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bhashqt binary to `/usr/bin`
and the `../../share/pixmaps/bhash128.png` to `/usr/share/pixmaps`

bhash-qt.protocol (KDE)

