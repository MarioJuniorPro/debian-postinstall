#!/bin/bash

mongodb-compass.sh(){
    wget https://downloads.mongodb.com/compass/mongodb-compass_1.18.0_amd64.deb;
    sudo dpkg -i mongodb-compass*.deb;
    rm -rf ./mongodb-compass_1.18.0_amd64.deb;
}
        
