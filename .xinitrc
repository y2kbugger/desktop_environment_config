
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#enable transparency
xcompmgr &

#this on disables touchpad while typing:
killall syndaemon
syndaemon -K -i .9 -d
exec awesome
