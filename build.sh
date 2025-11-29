#!/bin/bash

### Build file for SilverUblue

# Enable copr repos
dnf -y copr enable cyqsimon/bat-extras 
dnf -y copr enable scottames/ghostty
dnf -y copr enable sdegler/hyprland 
dnf -y cope enable terjeros/eza 
dnf -y copr enable avengemedia/dms-git 
dnf -y copr enable enable yalter/niri-git
dnf -y copr enable tofik/nwg-shell

# Install extra packages
dnf install -y bat bat-extras emacs eza fastfetch ghostty input-remapper mangohud openrazer-daemon rpm-build steam vkBasalt

# Window manager stuff
dnf install -y cliphist hyprland hyprpicker niri swww mako waybar waypaper blueman kdeconnect kf6-kitemmodels network-manager-applet fuzzel nwg-drawer nwg-look mate-polkit

# Akmod signing stuff for secure boot and openrazer
