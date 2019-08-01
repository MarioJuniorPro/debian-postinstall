#!/bin/bash

ui-main.sh(){
    export NEWT_COLORS='
    window=,red
    border=white,red
    textbox=white,red
    button=black,white
    ';
	clear;

    function ui-main(){
        menu_title="Smart Install";
        menu_msg="Select applications to install";
        menu_window="25 78 16";

        menu_list=("ui-select-minimum-package.sh" "Install minimum packages" \
            "ui-select-other-package.sh" "Install other packages" \
            "ui-select-server.sh" "Install Server packages" \
            "ui-select-desktop.sh" "Install Desktop packages" \
        );

        selected=$(whiptail --title "$menu_title" --fb --menu "$menu_msg" $menu_window "${menu_list[@]}" --cancel-button "Exit" --notags 3>&1 1>&2 2>&3);
        selected_apps="${selected//\"}";

        status=$?;
        selected=($selected);
                
        if [ $status = 0 ] && [ ${#selected[@]} -ge 1 ];
        then
            $selected;
        else
            echo "Good bye";
        fi
    }

    ui-main
}
