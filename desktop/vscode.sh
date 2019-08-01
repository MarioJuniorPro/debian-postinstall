#!/bin/bash

vscode.sh() {
	clear;
	REPO="deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

	add-apt-repository --remove "$REPO";
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
	mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
	sh -c 'echo "$REPO" > /etc/apt/sources.list.d/vscode.list';
	apt-get update -y;
	apt-get install -y code;
}
