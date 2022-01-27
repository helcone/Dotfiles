#! /usr/bin/env bash

echo "#######################"
echo "# Helcone's Dot Files #"
echo "#######################"

HomeConfig="$HOME/.config"
WorkDir=$(pwd)
ConfigDir="$WorkDir/.config"
alacritty="$HomeConfig/alacritty"
awesome="$HomeConfig/awesome"
picom="$HomeConfig/picom"
ranger="$HomeConfig/ranger"
zathura="$HomeConfig/zathura"
nvim="$HomeConfig/nvim"
mpv="$HomeConfig/mpv"
taskell="$HomeConfig/taskell"
htop="$HomeConfig/htop"
cmus="$HomeConfig/cmus"
qimgv="$HomeConfig/qimgv"
gtk2="$HomeConfig/gtk-2.0"
gtk3="$HomeConfig/gtk-3.0"

###########################
## Bash Installation ######
###########################

ln -s $WorkDir/.bashrc $HOME/.bashrc
ln -s $WorkDir/.bash_profile $HOME/.bash_profile

echo "Creating Wallpaper Dir"

# Link Wallpapers to git repo 
if [[ ! -d $HOME/Pictures ]]
then
	mkdir -p $HOME/Pictures/
fi
ln -s $WorkDir/Wallpapers $HOME/Pictures/Wallpapers

echo "Creating Alacritty config"

# Link alacritty 

if [[ ! -d $alacritty ]]
then
	mkdir -p $alacritty
fi
ln -s $ConfigDir/alacritty $alacritty

echo "Creating awesome config"
# Link awesome 

if [[ ! -d $awesome  ]]
then
	mkdir -p $awesome
fi
ln -s $ConfigDir/awesome $awesome

echo "Creating picom config"

# Link  picom 

if [[ ! -d $picom  ]]
then
	mkdir -p $picom 
fi
ln -s $ConfigDir/picom $picom

echo "Creating picom config"
