#!/bin/bash

vscode.sh() {
	clear;
	wget https://az764295.vo.msecnd.net/stable/2213894ea0415ee8c85c5eea0d0ff81ecc191529/code_1.36.1-1562627527_amd64.deb -O /tmp/code_1.36.1-1562627527_amd64.deb;
    sudo dpkg -i /tmp/code_1.36.1-1562627527_amd64.deb;
    rm -rf /tmp/code_1.36.1-1562627527_amd64.deb;
}

 	
