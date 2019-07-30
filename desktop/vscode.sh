#!/bin/bash

vscode.sh() {
	clear;
	REPO="deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

	sudo add-apt-repository --remove "$REPO";
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
	sudo sh -c 'echo "$REPO" > /etc/apt/sources.list.d/vscode.list';
	sudo apt-get update;
	sudo apt-get install code;
}
