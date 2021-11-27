#! /usr/bin/env bash 

sudo pacman -S --needed - < nativeApps
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R user:users yay-git/
cd yay-git/
makepkg -cirs
yay -S --needed - < externalApps
