
#you must merge you custom Xrsources every boot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#enable transparency and dimming
compton -b

#remap the capslock to emulate mod4(hyper)
setxkbmap -option caps:hyper

#this on disables touchpad while typing:
killall syndaemon
syndaemon -K -i .5 -d

#enable my screenlocker
xscreensaver -no-splash &

#disable touchpad
#synclient TouchpadOff=1

#don't let my keyboard be slowwwwwww
xset r rate 180 15

#add a background image
feh --bg-scale ~/pics/2011-11-04_02-28-02_144_dark.jpg

#webcam as background
#mplayer -rootwin -fps 15 tv:// -x 1280 -y 720  -vf crop=640:375 -noconsolecontrols &

#start server for vim editing of chrome
~/dev/chromium-vim/cvim_server.py &

#i3 window manager and close shell after it terminates
exec i3
