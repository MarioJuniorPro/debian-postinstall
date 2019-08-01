#!/bin/bash

spotify.sh(){
	REPO="deb http://repository.spotify.com stable non-free"

	add-apt-repository --remove "$REPO";	
	apt-add-repository -y "$REPO";
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59;
	apt-get update -y;
	apt-get install -y spotify-client --allow-unauthenticated
}
