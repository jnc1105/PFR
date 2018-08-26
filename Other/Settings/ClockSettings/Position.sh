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
    --backtitle "Clock Settings" \
    --title "Clock Position" \
    --clear \
    --cancel-label "Back" \
    --menu "Please select:" $HEIGHT $WIDTH 3 \
    "1" "Centered" \
    "2" "Bouncing" \
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
      echo "Program terminated."
      ;;
    1 )
	clear
      sudo /home/pi/Settings/ClockSettings/Centered.sh
	
      ;;
    2 )
      clear
	sudo /home/pi/Settings/ClockSettings/Bouncing.sh
      ;;
  esac
done
