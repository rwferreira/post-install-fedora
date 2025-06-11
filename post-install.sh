#!/bin/bash

sudo dnf update -y

# Install RPM Fusion
echo -------------------------------------------------
echo Install RPM Fusion
echo -------------------------------------------------
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf install snapd -y

sudo snap install obsidian --classic



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
flatpak install flathub com.vysp3r.ProtonPlus -y
flatpak install flathub com.steamgriddb.steam-rom-manager -y
flatpak install flathub com.steamgriddb.SGDBoop -y
flatpak install flathub info.cemu.Cemu -y 
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub com.heroicgameslauncher.hgl -y
flatpak install flathub dev.lizardbyte.app.Sunshine -y

# Instalar aplicativos
echo -------------------------------------------------
echo Install softwares
echo -------------------------------------------------
sudo dnf install vim -y
sudo dnf install blender -y
sudo dnf install btop -y
sudo dnf install cpu-x -y
sudo dnf install dropbox -y
sudo dnf install filezilla -y
sudo dnf install fontforge -y
sudo dnf install gimp -y
sudo dnf install htop -y
sudo dnf install inkscape -y
sudo dnf install jupyterlab -y
sudo dnf install jupyter-notebook -y
sudo dnf install kitty -y
sudo dnf install lollypop -y
sudo dnf install lutris -y
sudo dnf install minder -y
sudo dnf install mupdf-gl
sudo dnf install obs-studio -y
sudo dnf install obsidian -y
sudo dnf install okular -y
sudo dnf install qbittorrent -y
sudo dnf install rawtherapee -y
sudo dnf install retroarch -y
sudo dnf install scribus -y
sudo dnf install syncthing -y
sudo dnf install teams-for-linux -y
sudo dnf install virt-manager -y
sudo dnf install vscode -y
sudo dnf install vlc -y
sudo dnf install xasy -y

# Instalar aplicativos em flatpak
echo -------------------------------------------------
echo -------------------------------------------------
flatpak install flathub io.github.prateekmedia.appimagepool
flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub md.obsidian.Obsidian -y


#flatpak install flathub com.discordapp.Discord
#flatpak install flathub tech.feliciano.pocket-casts
#flatpak install flathub com.obsproject.Studio
#flatpak install flathub io.github.celluloid_player.Celluloid
#flatpak install flathub org.gnome.Boxes
#flatpak install flathub com.mattjakeman.ExtensionManager
#flatpak install flathub com.github.tchx84.Flatseal
#flatpak install flathub org.nickvision.tubeconverter
#flatpak install flathub org.localsend.localsend_app
#flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor
#flatpak install flathub de.haeckerfelix.Fragments
#flatpak install flathub com.rtosta.zapzap
#flatpak install flathub com.discordapp.Discord
#flatpak install flathub io.github.pwr_solaar.solaar
#flatpak install flathub io.github.brunofin.Cohesion

# Instalar as fontes que estão na pasta: Fontes
# Aplicativos para instalar depois manualmente: DaVinci Resolve, Figma for Desktop, Insync
# O que adicionar como webapp depois: Trello
# Ajustar os problemas do DaVinci Resolve segundo esse tutorial: https://github.com/H3rz3n/Davinci-Resolve-Fedora-38-39-40-Fix
