#!/bin/bash

### Build file for SilverUblue

# Enable copr repos
dnf5 -y copr enable cyqsimon/bat-extras 
dnf5 -y copr enable scottames/ghostty
dnf5 -y copr enable sdegler/hyprland 
dnf5 -y copr enable terjeros/eza 
dnf5 -y copr enable avengemedia/dms-git 
dnf5 -y copr enable yalter/niri-git
dnf5 -y copr enable tofik/nwg-shell

# Steam repo Silverblue
#dnf5 -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-steam.repo

# Install extra packages Silverblue
#dnf5 -y install bat bat-extras emacs eza fastfetch ghostty input-remapper mangohud rpm-build steam vkBasalt #  openrazer-meta

# Install extra packages Bazzite
dnf5 -y install bat bat-extras emacs eza ghostty gnome-software gnome-software-rpm-ostree htop
dnf5 -y remove bazaar

# Window manager stuff
dnf5 -y install cliphist hyprland hyprland-guiutils hyprpicker niri swww mako waybar waypaper blueman kde-connect kf6-kitemmodels network-manager-applet fuzzel nwg-drawer nwg-look mate-polkit mpvpaper

