pia v0.5 Features:
==========
- Update openvpn configuration files using any of the 5 available configuration zips.
- Auto-update whenever PIA releases new configuration zips.
- Auto reconnect on dropped connections.
- Instant connections with secure permissions of VPN password.
- Optionally AES encrypt creds with openssl and a password.
- Forward ports and change port fowarding identity.
- Change DNS to PIA secure leak-proof DNS servers.
- Enable firewall to block all non-tunnel traffic.
- Enable PIA MACE DNS based ad blocking.
- Enable internet killswitch.
- Detailed verbose output.
- Designed for debian and arch based linux but should work on any linux.

This client has all of the functionality of the official one and works on any linux with bash, openvpn and iptables installed.  


It also has the added advantage of using the versions of OpenVPN and OpenSSL installed on your system, which will always be more secure than the old fork of old versions of this software that the official PIA app uses as long as you regulary update.  


pia can be run interactivley or with switches. It will only ask you to supply your credentials once and then after that it connects without asking.  


The credentials file is permissions protected by 'chmod 400', which means only the root user can view the file. You can also optionally AES encrypt the creds file on disk with a password using the the -x arg.  


The ovpn files are editited and 'auth-nocache' option is added, which means openvpn will not store your creds in memory.  



APT Installation:
=================
you can install pia-vpn-client directly from my Launchpad PPA

	# add to APT sources-list
	sudo add-apt-repository ppa:taigasan/ppa

	# or manually, in /etc/apt/sources.list
	sudo apt edit-sources
	# add this line
	deb http://ppa.launchpad.net/taigasan/ppa/ubuntu eoan main

	# if you want to remove it
	sudo add-apt-repository --remove ppa:taigasan/ppa
	# or remove the line from /etc/apt/sources.list

add PPA key to APT keyring, unless APT secure won't allowed to update from the PPA

	#  you need gnupg
	sudo apt install gnupg
	# download key from keyserver
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 90B3FC4D4909D303

install pia-vpn-client

	# refresh apt-cache with new repository
	apt update
	apt install pia-vpn-client

if everything goes well

	sudo pia



Manual Installation:
====================
install dependencies

	# be sure to install the last versions
	sudo apt-get update
	apt-get install openvpn openssl iptables curl unzip

make a place for files

	mkdir pia
	cd  pia

clone the repository

	# you need git package
	sudo apt-get install git
	# clone
	git clone https://github.com/taigasan/pia .

or download as zip

	# you need wget and unzip packages
	sudo apt-get install wget unzip
	# download archive
	wget https://github.com/taigasan/pia/archive/master.zip -O pia.zip
	# extract
	unzip pia.zip

install

	make install

uninstallation

	# keep config files
	make remove
	# remove config files
	make purge

pia will now be installed and can be run from any directory with

	sudo pia



Usage:
==========
	Usage: pia [options]

	-s	- Server number to connect to.
	-l	- List available servers.
	-u	- Update PIA openvpn files before connecting.
	-p	- Forward a port.
	-n	- Change to another random port.
	-d	- Change DNS servers to PIA.
	-f	- Enable firewall to block all non tunnel traffic.
	-e	- Allow LAN through firewall.
	-m	- Enable PIA MACE ad blocking.
	-k	- Enable internet killswitch.
	-x	- Encrypt the credetials file.
	-v	- Display verbose information.
	-h	- Display this help.

	Examples: 
	pia -dps 6    - Change DNS, forward a port and connect to CA_Montreal.
	pia -nfv      - Forward a new port, run firewall and be verbose.



Troubleshootings:
=================
For questions, help, demands, requests or give me advices, mail me at <taigasan@sdf.org>.

have a nice week-end..
and don't forget to rock'n roll !!