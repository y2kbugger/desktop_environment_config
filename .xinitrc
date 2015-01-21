
#you must merge you custom Xrsources every boot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#enable transparency
#xcompmgr &

#webcam in background
mplayer -rootwin -fps 15 tv:// -x 1280 -y 720  -vf crop=640:375 -noconsolecontrols &

#remap the capslock to emulate mod4(hyper)
setxkbmap -option caps:hyper

#this on disables touchpad while typing:
killall syndaemon
syndaemon -K -i .5 -d

#some programs that I like to have running when my computer starts up
xscreensaver -no-splash &

#start server for vim editing of chrome
cvim_server.py &

#disable touchpad
touchpad

#start awesome window manager, and logoff the shell when it terminates
exec awesome

