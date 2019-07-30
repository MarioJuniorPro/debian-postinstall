#!/bin/bash

ui-select-desktop.sh(){
    scripts_path="./desktop"
    file_list=""

    # Show select menu 
    function showAppSelect(){
        for file in $(ls "$scripts_path")
        do
            if [ $file != import.sh ] && [ $file != files ]
            then
                file_list="$file_list$file "${file/.sh/}" off "
            fi

        done;

        checkbox_title="Desktop Applications"
        checkbox_msg="Select applications to install"
        checkbox_window="25 60 15"
        selected=$(whiptail --title "$checkbox_title" --checklist --fb --notags "$checkbox_msg" $checkbox_window $file_list 3>&1 1>&2 2>&3)
        selected_apps="${selected//\"}"

        status=$?;
        selected=($selected);
              
        if [ $status = 0 ] && [ ${#selected[@]} -ge 1 ];
        then
            confirmInstall
        else
            ui-main.sh
        fi
    }

    function confirmInstall(){
        confirm_title="Install Desktop Applications"
        confirm_msg="Are you sure you want to install selected applications?"
        confirm_window="25 60 15"
        if (whiptail --title "$confirm_title" --yesno "$confirm_msg" --fb 15 80); then
            for val in $selected_apps; do
                $val;
            done
        else
            showAppSelect
        fi
    }

    showAppSelect
}
