#!/bin/bash

yarn.sh() {
	clear;
    REPO="deb https://dl.yarnpkg.com/debian/ stable main"

	add-apt-repository --remove "$REPO";
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -;
    echo "$REPO" | tee /etc/apt/sources.list.d/yarn.list;
    apt-get update -y;
    apt-get install -y yarn;
}
