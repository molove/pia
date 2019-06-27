#!/bin/bash

DEB=$(ls ./deb/pia-ovpn*.deb)

# install
sudo dpkg --install $DEB

#...if failed
if [[ $? == 1 ]]; then
	# install missing dependencies
	sudo apt-get --fix-broken --yes install

	# and try to reinstall
	sudo dpkg --install $DEB 2>/dev/null
	if [[ $? == 1 ]]; then
		printf "\nfailed to get required dependencies\n"
		printf "run 'apt-get update' and have another try\n"
	fi
fi


