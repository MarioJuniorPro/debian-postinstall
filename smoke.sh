#!/bin/bash

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
    ui-start.sh
}

welcome
