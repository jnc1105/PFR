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
  exec 7>&1
  selection=$(dialog \
    --backtitle "Clock Settings" \
    --title "" \
    --clear \
    --cancel-label "Back" \
    --menu "Settings:" $HEIGHT $WIDTH 7 \
    "1" "White" \
    "2" "Green" \
    "3" "Red" \
    "4" "Yellow" \
    "5" "Blue" \
    "6" "Pink" \
    "7" "Teal" \
    2>&1 1>&7)
  exit_status=$?
  exec 7>&-
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
#       White
	sudo /home/pi/Settings/ClockSettings/ColorWhite.sh
      ;;
    2 )
#       Green
	sudo /home/pi/Settings/ClockSettings/ColorGreen.sh
      ;;
    3 )
#	Red
        sudo /home/pi/Settings/ClockSettings/ColorRed.sh
	;;
    4 )
#       Yellow
        sudo /home/pi/Settings/ClockSettings/ColorYellow.sh
        ;;
    5 )
#       Blue
        sudo /home/pi/Settings/ClockSettings/ColorBlue.sh
        ;;
    6 )
#       Pink
        sudo /home/pi/Settings/ClockSettings/ColorPink.sh
        ;;
    7 )
#       Teal
        sudo /home/pi/Settings/ClockSettings/ColorTeal.sh
        ;;
esac
done













# killall -9 fbi
#fbi -T 2 -noverbose -u -a /home/pi/Raspberry-Wifi-Router/www/images/underconstruction.jpg
# killall -9 fbi


