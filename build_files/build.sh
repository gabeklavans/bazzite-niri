#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# remove kde plasma
dnf5 -y remove plasma-workspace plasma-* kde-*

# setup niri
dnf5 -y install					\
	niri						\
	alacritty					\
	gdm							\
	xdg-desktop-portal-gtk		\
	xdg-desktop-portal-gnome	\
	gnome-keyring				\
	nautilus					\
	mako						\
	fuzzel						\
	waybar						\
	swayidle					\
	swaylock					\
	polkit-kde					\

systemctl enable podman.socket
systemctl --global add-wants niri.service mako.service
systemctl --global add-wants niri.service swayidle.service
