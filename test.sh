#!/bin/bash

is_installed(){
    # TRUE_EMOJI='\U2714\n';
    TRUE_EMOJI='\U2714';
    FALSE_EMOJI='\U2716';
    if [ $(which $1) ]; then printf $TRUE_EMOJI; else printf $FALSE_EMOJI; fi;
}


is_installed nanox;