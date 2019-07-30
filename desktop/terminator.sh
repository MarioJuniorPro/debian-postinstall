#!/bin/bash

terminator.sh() {
	sudo add-apt-repository -y ppa:gnome-terminator;
	sudo apt-get update;
	sudo apt-get install terminator -y;
}
