#!/bin/bash

terminus.sh(){
    wget https://github.com/Eugeny/terminus/releases/download/v1.0.87/terminus-1.0.87-linux.deb -O /tmp/terminus-1.0.87-linux.deb;
    sudo dpkg -i /tmp/terminus-*.deb;
    rm -rf /tmp/terminus-1.0.87-linux.deb;
}
        
