#!/bin/bash

### Build file for SilverUblue

# Enable copr repos
dnf5 -y copr enable cyqsimon/bat-extras 
dnf5 -y copr enable scottames/ghostty
dnf5 -y copr enable sdegler/hyprland 
dnf5 -y cope enable terjeros/eza 
dnf5 -y copr enable avengemedia/dms-git 
dnf5 -y copr enable enable yalter/niri-git
dnf5 -y copr enable tofik/nwg-shell

# Install extra packages
dnf5 -y install bat bat-extras emacs eza fastfetch ghostty input-remapper mangohud openrazer-daemon rpm-build steam vkBasalt

# Window manager stuff
dnf5 -y install cliphist hyprland hyprpicker niri swww mako waybar waypaper blueman kdeconnect kf6-kitemmodels network-manager-applet fuzzel nwg-drawer nwg-look mate-polkit

# Akmod signing stuff for secure boot and openrazer
