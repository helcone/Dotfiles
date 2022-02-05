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

for i in $ConfigDir/*;
do
	file=$(echo $i | awk -F / '{print $NF}')
	echo "Creating $file configuration"
	echo "ln -sf $i $HomeConfig/$file"
done
