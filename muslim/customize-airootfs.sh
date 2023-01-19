#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget -y

#echo "deb http://deb.librewolf.net bullseye main" | sudo tee /etc/apt/sources.list.d/librewolf.list
#wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg
#apt update
#apt install librewolf -y

## Firefox latest User Installer
#wget https://github.com/mobilturka/mt-repo/raw/main/deb/firefox_user_installer_0.1.0_amd64.deb


### 17g installer
wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb

###pardus 
wget http://depo.pardus.org.tr/pardus/pool/main/p/pardus-archive-keyring/pardus-archive-keyring_2021.1_all.deb
apt install ./pardus-archive-keyring*.deb -y
echo 'deb http://depo.pardus.org.tr/pardus yirmibir main contrib non-free' | tee /etc/apt/sources.list.d/pardus.list && apt update
apt install pardus-software -y 
apt update
apt install pardus-java-installer -y
apt install pardus-backgrounds -y
apt install flatpak-appcenter -y
apt install pardus-about -y
apt install pardus-mycomputer -y
apt install gnome-software-plugin-flatpak -y
apt install ulauncher -y
apt install openjdk-17-jre -y
apt install kdeconnect -y
apt install vokoscreen -y
apt install ventoy -y
apt install draw.io -y
apt install qbittorrent -y
apt install pdfarranger -y
apt install pardus-gtk-theme -y
apt install pardus-icon-theme -y





###chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main' && apt update
apt install google-chrome-stable -y

### AppImage launcher and Pardus package installer
wget https://github.com/mobilturka/mt-repo/raw/main/deb/appimagelauncher_2.2.0.deb
wget http://depo.pardus.org.tr/pardus/pool/main/p/pardus-package-installer/pardus-package-installer_0.5.0~Beta2_all.deb

### pardus lightdm greeter
wget https://github.com/muslimos/pardus-lightdm-greeter/releases/download/current/pardus-lightdm-greeter_0.0.1_all.deb

## QMPlay2 Video and Sound Player
wget https://github.com/mobilturka/mt-repo/raw/main/deb/qmplay2_22.10.23-1~par21_amd64.deb

## Webapp Manager
wget https://github.com/mobilturka/mt-repo/raw/main/deb/webapp-manager_1.2.8_all.deb

## Foliate reader
wget https://github.com/mobilturka/mt-repo/raw/main/deb/foliate_2.6.4_all.deb

### muslim backgrounds
wget https://github.com/muslimos/muslim-backgrounds/releases/download/current/muslim-backgrounds_1.0_all.deb

### desktop-base package
#wget https://github.com/muslimos/desktop-base/raw/main/desktop-base-noupdate.deb

## Papirus-teal-icons
wget https://github.com/mobilturka/mt-repo/raw/main/deb/papirus-teal-icon-theme.deb

apt install ./*.deb -yq --allow-downgrades
