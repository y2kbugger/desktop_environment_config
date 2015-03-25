
#you must merge you custom Xrsources every boot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#enable transparency and dimming
compton -b

#webcam in background
#mplayer -rootwin -fps 15 tv:// -x 1280 -y 720  -vf crop=640:375 -noconsolecontrols &

#remap the capslock to emulate mod4(hyper)
setxkbmap -option caps:hyper

#this on disables touchpad while typing:
killall syndaemon
syndaemon -K -i .5 -d

#some programs that I like to have running when my computer starts up
xscreensaver -no-splash &

#disable touchpad
#synclient TouchpadOff=1

#don't let my keyboard be slowwwwwww
xset r rate 180 15

#start awesome window manager, and logoff the shell when it terminates
#exec awesome

#add a background image
feh --bg-scale ~/pics/2011-11-04_02-28-02_144_dark.jpg

#use i3 instead
exec i3
