#!/bin/bash

sublimetext.sh(){
	sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt install -y apt-transport-https
	sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt update -y
	sudo apt install sublime-text -y
	# sudo add-apt-repository ppa:webupd8team/sublime-text-3;
	# sudo apt-get update; 
	# sudo apt-get install sublime-text-installer;
	# subl;
}
