#! /usr/bin/env bash 

echo "#######################"
echo "## yay Installation ###"
echo "#######################"

cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R user:users yay-git/
cd yay-git/
makepkg -cirs

###########################
## Enable Multilib ########
###########################

cat >> "/etc/pacman.conf" << EOF
[multilib]
Include = /etc/pacman.d/mirrorlist
EOF

###########################
## Install Black Arch #####
###########################

curl -O https://blackarch.org/strap.sh
echo 8bfe5a569ba7d3b055077a4e5ceada94119cccef strap.sh | sha1sum -c
chmod +x strap.sh
sudo ./strap.sh
sudo pacman -Syu
rm -rf strap.sh

##########################
## Install Arch4edu  #####
##########################

pacman-key --recv-keys 7931B6D628C8D3BA
pacman-key --finger 7931B6D628C8D3BA
pacman-key --lsign-key 7931B6D628C8D3BA

curl -O https://mirrors.tuna.tsinghua.edu.cn/arch4edu/any/arch4edu-keyring-20200805-2-any.pkg.tar.zst
pacman -U arch4edu-keyring-20200805-2-any.pkg.tar.zst
cat >> "/etc/pacman.conf" << EOF
[arch4edu]
Server = https://arch4edu.keybase.pub/$arch
EOF
rm -rf arch4edu-keyring-20200805-2-any.pkg.tar.zst

yay -S --needed - < Apps

