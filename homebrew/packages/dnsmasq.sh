#!/bin/sh

# http://passingcuriosity.com/2013/dnsmasq-dev-osx/

brew list | grep dnsmasq > /dev/null
if [ $? -eq 1 ]; then
	brew install dnsmasq
	# Copy the default configuration file.
	cp $(brew list dnsmasq | grep /dnsmasq.conf.example$) /usr/local/etc/dnsmasq.conf
	# Copy the daemon configuration file into place.
	sudo cp $(brew list dnsmasq | grep /homebrew.mxcl.dnsmasq.plist$) /Library/LaunchDaemons/
	# Start Dnsmasq automatically.
	echo "address=/dev/127.0.0.1" >> /usr/local/etc/dnsmasq.conf
	# Then to load dnsmasq now:
	sudo mkdir -p /etc/resolver/
	echo "nameserver 127.0.0.1\ndomain dev" | sudo tee -a /etc/resolver/dev
	echo "nameserver 127.0.0.1\ndomain ."   | sudo tee -a /etc/resolver/offline
	sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
else
	echo "dnsmasq is already installed"
fi
