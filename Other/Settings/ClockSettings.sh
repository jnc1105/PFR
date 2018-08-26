#!/bin/bash


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
  exec 5>&1
  selection=$(dialog \
    --backtitle "" \
    --title "Clock Settings" \
    --clear \
    --cancel-label "Back" \
    --menu "Please select:" $HEIGHT $WIDTH 6 \
    "1" "Position" \
    "2" "Color" \
    "3" "12 or 24 Hour" \
    "4" "Seconds" \
    "5" "Date" \
    2>&1 1>&5)
  exit_status=$?
  exec 5>&-
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
      clear
      
      ;;
    1 )
      sudo /home/pi/Settings/ClockSettings/Position.sh
      ;;
   2 )
      sudo /home/pi/Settings/ClockSettings/Color.sh
      ;;
    3 )
      sudo /home/pi/Settings/ClockSettings/12or24H.sh
      ;;
    4 )
      sudo /home/pi/Settings/ClockSettings/Seconds.sh
      ;;  
    5 )
      sudo /home/pi/Settings/ClockSettings/Date.sh
      ;;  

  esac
done
