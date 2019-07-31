#!/bin/bash

ready(){
	echo "
		 ======================
		 	Executed!
		 "
}

msg-success.sh(){
	if [ "$#" -ge 1 ]; then msg="$1"; else msg="Success"; fi
	whiptail --title "Success" --msgbox "$msg" --fb 10 50
}
