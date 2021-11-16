#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap es &
xsetroot -cursor_name left_ptr
xscreensaver &
mons -a &
picom -b &
nm-applet &
autorandr reading2 &
#nordvpn connect us &
#protonvpn-cli c -f &
#udiskie -As &
#keepassxc &

#session=$1
#
#case $session in
#    qtile              ) exec qtile start;;
#    awesome            ) exec awesome;;
#    # No known session, try to run it as command
#    *                  ) exec $1;;
#esac
exec awesome
#exec qtile start
