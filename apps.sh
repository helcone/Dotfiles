#! /usr/bin/env bash 

cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R user:users yay-git/
cd yay-git/
makepkg -cirs
yay -S --needed - < Apps
