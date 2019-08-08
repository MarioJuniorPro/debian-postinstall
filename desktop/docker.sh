#!/bin/bash

docker.sh(){
	REPO="deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

	sudo add-apt-repository --remove "$REPO";
	sudo apt-get remove docker docker-engine docker.io runc;
	sudo apt-get update -y;
	sudo apt-get install apt-transport-https ca-certificates curl software-properties-common;
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
	sudo apt-key fingerprint 0EBFCD88;
	sudo add-apt-repository "$REPO";
	sudo apt-get update;
	sudo apt-get install -y docker-ce docker-ce-cli containerd.io
	sudo groupadd docker;
	sudo usermod -aG docker $USER;
}
