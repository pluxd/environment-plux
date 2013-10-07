#!/bin/sh

setxkbmap -layout us,ru -variant -option grp:alt_shift_toggle
feh --bg-fill /home/plux/Dropbox/Repositories/environment-plux/files/wallpapers/warbot.jpg

#conky | while read LINE; do xsetroot -name "$LINE"; done & 

# set statusbar
while true; do
	/home/plux/.scripts/dwmstatus
	sleep 20s
done &

/home/plux/Dropbox/Repositories/dwm-6.0-plux/dwm 2> ~/.dwm.log
#while true; do
#    # error logging
#    dwm 2> ~/.dwm.log
#done
