#!/bin/bash

if [[ $UID == 0 ]]; then
    echo "Please run this script without sudo:"
    echo "sudo $0 $*"
    exit 1
fi

#==================================== Imports ===============================================
# Import ui
. ui/import.sh

# Import base
. base/import.sh

# Import Packages
. package/import.sh

# Import Sytem
. system/import.sh

# Import Server Side
. server/import.sh

# Import Desktop
. desktop/import.sh


# Presentation function and options
welcome(){
    setup.sh;
    ui-start.sh;
}

welcome;
