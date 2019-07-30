#!/usr/bin/env bash

composer.sh(){

sudo apt-get update;
sudo apt-get install curl php5-cli git;
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer;

clear;

composer;

echo -e "\n\n\nComposr installed.\n\n\n";

}