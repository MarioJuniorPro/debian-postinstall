#!/bin/bash

ui-start.sh(){
    export NEWT_COLORS='
    window=,red
    border=white,red
    textbox=white,red
    button=black,white
    '
	clear ;

    ui-main.sh
}
