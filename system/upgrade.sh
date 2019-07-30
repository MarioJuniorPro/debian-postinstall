#!/bin/sh

upgrade.sh(){
	clear;
	sudo apt-get autoremove;
	sudo apt-get update;
	sudo apt-get upgrade;
}
