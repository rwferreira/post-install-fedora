#!/bin/bash

# Install RPM Fusion
echo -------------------------------------------------
echo Install RPM Fusion
echo -------------------------------------------------
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Fix codec problems
echo -------------------------------------------------
echo Fix codec problems
echo -------------------------------------------------
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y
sudo dnf install amrnb amrwb faad2 flac gpac-libs lame libde265 libfc14audiodecoder mencoder x264 x265 ffmpegthumbnailer -y

# Install Piper to manage MX Anywhere 2s Mouse
echo -------------------------------------------------
echo Install Piper to manage MX Anywhere 2s
echo -------------------------------------------------
sudo dnf install piper -y

# Install GNOME Tweaks to configure the minimize button
echo -------------------------------------------------
echo Install GNOME Tweaks to configure the minimize button
echo -------------------------------------------------
sudo dnf install gnome-tweaks -y

# Install Google Chrome (and remove the organization-managed warning)
echo -------------------------------------------------
echo Install Google Chrome and remove the organization-managed warning
echo -------------------------------------------------
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y
sudo dnf remove fedora-chromium-config -y

# Install Microsoft fonts
echo -------------------------------------------------
echo Install Microsoft fonts 
echo -------------------------------------------------
sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y

# Instalar ferramentas para jogos
echo -------------------------------------------------
echo Install gaming tools
echo -------------------------------------------------
sudo dnf install steam -y
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub com.steamgriddb.steam-rom-manager
flatpak install flathub com.steamgriddb.SGDBoop
flatpak install flathub info.cemu.Cemu
flatpak install flathub com.usebottles.bottles
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub dev.lizardbyte.app.Sunshine

# Instalar aplicativos em flatpak
echo -------------------------------------------------
echo -------------------------------------------------
flatpak install flathub com.discordapp.Discord
flatpak install flathub tech.feliciano.pocket-casts
flatpak install flathub com.obsproject.Studio
flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub org.gnome.Boxes
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub org.nickvision.tubeconverter
flatpak install flathub org.localsend.localsend_app
flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor
flatpak install flathub de.haeckerfelix.Fragments
flatpak install flathub com.rtosta.zapzap
flatpak install flathub com.discordapp.Discord
flatpak install flathub io.github.pwr_solaar.solaar
flatpak install flathub io.github.brunofin.Cohesion

# Instalar as fontes que estão na pasta: Fontes
# Aplicativos para instalar depois manualmente: DaVinci Resolve, Figma for Desktop, Insync
# O que adicionar como webapp depois: Trello
# Ajustar os problemas do DaVinci Resolve segundo esse tutorial: https://github.com/H3rz3n/Davinci-Resolve-Fedora-38-39-40-Fix
