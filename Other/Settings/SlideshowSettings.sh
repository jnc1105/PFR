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
  exec 3>&1
  selection=$(dialog \
    --backtitle "" \
    --title "Slideshow Settings" \
    --clear \
    --cancel-label "Back" \
    --menu "Please select:" $HEIGHT $WIDTH 3 \
    "1" "Order" \
    "2" "Transition Time" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
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
      sudo /home/pi/Settings/SlideshowSettings/Order.sh
      ;;
   2 )
      fbi -T 2 -noverbose -u -a /home/pi/Raspberry-Wifi-Router/www/images/underconstruction.jpg
      ;;
  esac
done


































































dtech@ProjectGenesis:~/Settings $ sudo nano ClockSettings.sh






























































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
  exec 2>&1
  selection=$(dialog \
    --backtitle "" \
    --title "Clock Settings" \
    --clear \
    --cancel-label "Back" \
    --menu "Please select:" $HEIGHT $WIDTH 2 \
    "1" "Order" \
    "2" "Transition Time" \
    2>&1 1>&2)
  exit_status=$?
  exec 2>&-
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

  esac
done
