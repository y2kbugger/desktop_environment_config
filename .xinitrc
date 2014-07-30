
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#enable transparency
xcompmgr &

#this on disables touchpad while typing:
killall syndaemon
syndaemon -K -i .9 -d
exec awesome


#remap the capslock to emulate mod4(hyper)
setxkbmap -option caps:hyper
