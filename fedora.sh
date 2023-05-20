#!/bin/sh
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &
flatpak install flathub com.mattjakeman.ExtensionManager &
sudo dnf rm firefox &
sudo dnf in google-chrome git gcc make cmake &
sudo dnf install gnome-tweaks &
sudo dnf copr enable avm/mutter-patched &
sudo dnf --refresh upgrade &
git clone https://github.com/ryanoasis/nerd-fonts &
