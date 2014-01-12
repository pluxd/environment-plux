#!/bin/sh

setxkbmap -layout us,ru -variant -option grp:caps_toggle
feh --bg-fill /home/plux/Dropbox/Repositories/environment-plux/files/wallpapers/warbot.jpg

xcompmgr &
/usr/bin/syndaemon -d -k -i 1

while true; do
	/home/plux/.scripts/dwmstatus
	sleep 20s
done &

while true; do
    # error logging
    dwm 2> ~/.dwm.log
done
