
# you must merge you custom Xrsources every boot
xrdb -merge /home/y2k/.Xresources

#automatically set up multi-display configs
autorandr --change

# enable transparency and dimming
picom -b

# start os notification
dunst&

# Continuous backup
SpiderOakONE&

# add a background image
fehbg&

nm-applet&
blueman-applet&

# remap the capslock to emulate mod4(hyper)
setxkbmap -option caps:hyper

# this on disables touchpad while typing:
killall syndaemon
syndaemon -K -i .5 -d

# disable touchpad
#synclient TouchpadOff=1

# don't let my keyboard be slowwwwwww
xset r rate 280 20



# start server for vim editing of chrome
#~/dev/chromium-vim/cvim_server.py &


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


#i3 window manager and close shell after it terminates
exec i3




