
# you must merge you custom Xrsources every boot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

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
#xset r rate 180 15



# start server for vim editing of chrome
#~/dev/chromium-vim/cvim_server.py &

#i3 window manager and close shell after it terminates
exec i3
