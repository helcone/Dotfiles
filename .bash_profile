#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
#	echo "1) Awesome"
#	echo "2) Qtile"
#	read choice
#	if [ $choice -eq "1" ]; then
#		exec startx ~/.xinitrc awesome
#	elif [ $choice -eq "2" ]; then
#		exec startx $/.xinitrc qtile
#	fi
fi

