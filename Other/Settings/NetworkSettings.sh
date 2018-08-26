#!/bin/bash

DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0


dialog  --backtitle "Network Information" \
--title "Network Information" \
--msgbox "$(ifconfig br0)" \ 15 75


clear

