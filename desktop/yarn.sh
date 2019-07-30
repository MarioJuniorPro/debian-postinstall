#!/bin/bash

yarn.sh() {
	clear;
    REPO="deb https://dl.yarnpkg.com/debian/ stable main"

	sudo add-apt-repository --remove "$REPO";
	sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -;
    sudo echo "$REPO" | sudo tee /etc/apt/sources.list.d/yarn.list;
    sudo apt-get update -y;
    sudo apt-get install -y yarn;
}
