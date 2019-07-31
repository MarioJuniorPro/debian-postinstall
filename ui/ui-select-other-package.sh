#!/bin/bash

ui-select-other-package.sh(){
    scripts_path="./package";
    package_list="";

    # Show select menu  
    function showAppSelect(){
        for package in $(cat "$scripts_path/other.list")
        do
            case "$package" in \#*) continue ;; esac
            item="$package $package$(is_installed $package) off ";
            package_list="$package_list$item";
        done;

        checkbox_title="Packages Instalation";
        checkbox_msg="Select Packages to install";
        checkbox_window="25 60 15";
        selected=$(whiptail --title "$checkbox_title" --checklist --fb --notags "$checkbox_msg" $checkbox_window $package_list 3>&1 1>&2 2>&3);
        selected_apps="${selected//\"}";

        status=$?;
        selected=($selected);
              
        if [ $status = 0 ] && [ ${#selected[@]} -ge 1 ];
        then
            confirmInstall;
        else
            ui-main.sh;
        fi
    }

    function confirmInstall(){
        confirm_title="Install Packages";
        confirm_msg="Are you sure you want to install selected packages?";
        confirm_window="25 60 15";
        if (whiptail --title "$confirm_title" --yesno "$confirm_msg" --fb 15 80); then
            package-install-other.sh $selected_apps;
            msg-success.sh "Installation was successful";
            ui-main.sh;
        else
            showAppSelect;
        fi
    }

    showAppSelect;
}