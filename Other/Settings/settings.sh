#!/bin/bash

kill -9 $i
killall -9 fbi
clear
DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

display_result() {
  dialog --title "$1" \
    --no-collapse \
    --msgbox "$result" 0 0
}

while true; do
  exec 4>&1
  selection=$(dialog \
    --backtitle "" \
    --title "" \
    --clear \
    --cancel-label "Back" \
    --menu "Settings:" $HEIGHT $WIDTH 4 \
    "1" "Clock" \
    "2" "Slideshow" \
    "3" "Network Configuration" \
    "4" "Shutdown" \
    2>&1 1>&4)
  exit_status=$?
  exec 4>&-
  case $exit_status in
    $DIALOG_CANCEL)
      clear
	>&2
	exit 1
      ;;
    $DIALOG_ESC)
      clear
      >&2
      exit 1
      ;;
  esac
  case $selection in
    0 )
      
      echo "Program terminated."
	exit 1
      ;;
    1 )
#       Clock
	sudo /home/pi/Settings/ClockSettings.sh
      ;;
    2 )
#       Slideshow

	sudo /home/pi/Settings/SlideshowSettings.sh
      ;;
    3 )
#	Network Settings

        sudo /home/pi/Settings/NetworkSettings.sh
	;;

    4 ) 
#	Shutdown

	sudo /home/pi/Shutdown.sh
	;;
esac
done













# killall -9 fbi
#fbi -T 2 -noverbose -u -a /home/pi/Raspberry-Wifi-Router/www/images/underconstruction.jpg
# killall -9 fbi


