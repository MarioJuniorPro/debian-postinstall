#!/bin/bash

spotify.sh(){
	REPO="deb http://repository.spotify.com stable non-free"

	sudo add-apt-repository --remove "$REPO";	
	sudo apt-add-repository -y "$REPO";
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59;
	sudo apt-get update -y;
	sudo apt-get install -y spotify-client --allow-unauthenticated
}
