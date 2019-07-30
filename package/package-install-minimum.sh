#!/bin/bash

package-install-minimum.sh(){
	if [ $# -eq 0 ];
        then
			cat ./package/minimum.list #| xargs sudo apt-get -y install
        else
            args=("$@");
			args_filter=$(printf "|%s" "${args[@]}");
			filtered=${args_filter:1};
			cat ./package/minimum.list | grep -x -E $filtered | xargs sudo apt-get -y install;
	fi
}