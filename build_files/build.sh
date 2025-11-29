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

# Steam repo
dnf5 -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-steam.repo

# Install extra packages
dnf5 -y install bat bat-extras emacs eza fastfetch ghostty input-remapper mangohud rpm-build steam vkBasalt #  openrazer-meta

# Window manager stuff
dnf5 -y install cliphist hyprland hyprpicker niri swww mako waybar waypaper blueman kde-connect kf6-kitemmodels network-manager-applet fuzzel nwg-drawer nwg-look mate-polkit

# openrazer install for silverblue
curl -o - https://download.opensuse.org/repositories/hardware:/razer/Fedora_$(rpm -E %fedora)/hardware:razer.repo | sudo tee /etc/yum.repos.d/razer.repo
dnf5 -y install openrazer-meta

# Add akmod signing
git clone https://github.com/CheariX/silverblue-akmods-keys && cd "$(basename "$_" .git)
mkdir -p /root/rpmbuild/SOURCES/
cp \
  macros.kmodtool \
  /etc/pki/akmods/private/private_key.priv \
  /etc/pki/akmods/certs/public_key.der \
  /root/rpmbuild/SOURCES
rpmbuild -ba akmods-keys.spec
mv /root/rpmbuild/RPMS/noarch/akmods-keys-0.0.2-8.fc$(rpm -E %fedora).noarch.rpm .
rm -f $(find /root/rpmbuild -type f | grep -E 'akmods-keys|public_key.der|private_key.priv|macros.kmodtool')
find /root/rpmbuild -type d | sort -r | while read d; do
  rm -df "$d" 2>/dev/null
done
dnf5 -y install akmods-keys-0.0.2-8.fc$(rpm -E %fedora).noarch.rpm

groupadd plugdev
#usermod -aG plugdev $USER


# Akmod signing stuff for secure boot and openrazer
