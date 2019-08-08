#!/bin/bash

insomnia.sh(){
	REPO="deb https://dl.bintray.com/getinsomnia/Insomnia /"

	sudo add-apt-repository --remove "$REPO";
	sudo echo "$REPO" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
	sudo wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
	sudo apt update -y
	sudo apt install -y insomnia
}
