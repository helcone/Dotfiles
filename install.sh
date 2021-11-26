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

echo "Creating Wallpaper Dir"

# Link Wallpapers to git repo 
if [[ ! -d $HOME/Pictures ]]
then
	mkdir -p $HOME/Pictures/
fi
ln -s $WorkDir/Wallpapers $HOME/Pictures/Wallpapers

echo "Creating Alacritty config"

# Link alacritty 

if [[ -d $alacritty ]]
then
	rm -rf $alacritty
fi
ln -s $ConfigDir/alacritty $alacritty

echo "Creating awesome config"
# Link awesome 

if [[ -d $awesome  ]]
then
	rm -rf $awesome
fi
ln -s $ConfigDir/awesome $awesome

echo "Creating picom config"

# Link  picom 

if [[ -d $picom  ]]
then
	rm -rf $picom 
fi
ln -s $ConfigDir/picom $picom

echo "Creating picom config"
