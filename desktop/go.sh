#!/bin/bash

go.sh(){
    mkdir /tmp/go;
    cd /tmp/go;
    rm -rf go1.12.7.linux-amd64.tar.gz;
    curl -O https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz;
    tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz;
    echo "export PATH=$PATH:/usr/local/go/bin" >> "/home/$CURRENT_USER/.profile";
    source "/home/$CURRENT_USER/.profile";
}