#!/bin/bash

spotify.sh(){
	REPO="deb http://repository.spotify.com stable non-free"

	sudo add-apt-repository --remove "$REPO";	
	sudo curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -;
	sudo echo "$REPO" | sudo tee /etc/apt/sources.list.d/spotify.list;
	sudo apt-get update -y;
	sudo apt-get install -y spotify-client;
}
