#! /bin/sh
### BEGIN INIT INFO
case "$1" in
    start)
	kill -9 $i
	killall -9 fbi
	stty sane
	tput rs1
	. ~/.bashrc
	tset
	sudo sntp -s time.google.com
	tty-clock -s -c -C7 -t -T/dev/tty1 
    ;;
    stop)
        setsid sh -c "export DISPLAY=':0.0' xdotool key Ctrl c<> /dev/tty3>&0 2>&1"
	setsid sh -c "sudo chvt 1 <> /dev/tty3>&0 2>&1"
    ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
esac
exit 0







