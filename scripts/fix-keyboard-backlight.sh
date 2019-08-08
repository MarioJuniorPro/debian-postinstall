#!/bin/bash

# on=$(xset -q | grep 'Scroll Lock:' | cut -d ":" -f 7)
# echo $on
# if [ $on == "off" ]; then
#    xset led named "Scroll Lock"
# else
#    xset -led named "Scroll Lock"
# fi  
# #!/bin/bash
# if [ -f /tmp/keyboard_light ]; then
# xset -led 3 && rm /tmp/keyboard_light
# else
# xset led 3 && touch /tmp/keyboard_light
# fi