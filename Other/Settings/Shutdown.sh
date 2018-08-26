#!/bin/bash
DIALOG=${DIALOG=dialog}

$DIALOG --title "System Shutdown" --clear \
        --yesno "If you press yes the system will shutdown." 10 30

case $? in
  0)	
	clear
	sudo shutdown -P now
	;;
  1)	
	clear 
	>&2
	exit 1	
	;;
  255)
	clear
	>&2
	exit 1
	;;
esac
