#!/bin/bash

package-install-other.sh(){
	if [ $# -eq 0 ];
        then
			cat ./package/other.list #| xargs sudo apt-get -y install
        else
            args=("$@");
			args_filter=$(printf "|%s" "${args[@]}");
			filtered=${args_filter:1};
			cat ./package/other.list | grep -x -E $filtered | xargs sudo apt-get -y install;
	fi
}