#!/bin/bash

# while-menu-dialog: a menu driven system information program

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
  exec 3>&1
  selection=$(dialog \
    --backtitle "" \
    --title "" \
    --clear \
    --menu "Please select:" $HEIGHT $WIDTH 4 \
    "1" "Clock" \
    "2" "Settings" \
    "3" "Slideshow" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
  case $exit_status in
    $DIALOG_CANCEL)
      
      ;;
    $DIALOG_ESC)
      clear
      echo "Program aborted." >&2
      exit 1
      ;;
  esac
  case $selection in
    0 )
      
      echo "Program terminated."
      ;;
    1 )
#	Clock
	sudo /home/pi/DigitalClockSoftware/DigitalClock.sh start &
	clear
      ;;
    2 )
#	Settings
	clear
	sudo /home/pi/Settings/settings.sh &
	clear
      ;;
    3 )
#	Slidshow
	clear
	cd home
	cd pi
	cd SlideshowSoftware
	sudo ./slideshow start &
	clear
      ;;
  esac
done

