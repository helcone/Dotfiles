#! /usr/bin/env bash

echo "#######################"
echo "# Helcone's Dot Files #"
echo "#######################"

HomeConfig="$HOME/.config"
WorkDir=$(pwd)
ConfigDir="$WorkDir/.config"

###########################
## Bash Installation ######
###########################

ln -sf $WorkDir/.bashrc $HOME/.bashrc
ln -sf $WorkDir/.bash_profile $HOME/.bash_profile

echo "Creating Wallpaper Dir"

# Link Wallpapers to git repo 
if [[ ! -d $HOME/Pictures ]]
then
	mkdir -p $HOME/Pictures/
fi

ln -sf $WorkDir/Wallpapers $HOME/Pictures/Wallpapers

ln -sf $Workdir/.scripts $HOME/.scripts

for i in $ConfigDir/*;
do
	file=$(echo $i | awk -F / '{print $NF}')
	echo "Creating $file configuration"
	ln -sf $i $HomeConfig/$file
done

echo "Configuring Ranger"
cd $HOME/.config/ranger
git clone https://github.com/SL-RU/ranger_udisk_menu
git clone https://github.com/yonghie/ranger-gitplug
cd ranger-gitplug
make install
git clone https://github.com/maximtrp/ranger-archives.git $HOME/.config/ranger/plugins
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
git clone https://github.com/cdump/ranger-devicons2 $HOME/.config/ranger/plugins/devicons2

ln -sf $WorkDir/xranger.desktop $HOME/.local/share/applications/xranger.desktop

xdg-mime default ranger.desktop inode/directory
