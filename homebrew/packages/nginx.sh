#!/bin/sh
brew list | grep nginx-full > /dev/null
if [ $? -eq 1 ]; then

	brew tap homebrew/nginx
	brew install nginx-full --with-fancyindex-module  --with-geoip \
		--with-gzip-static --with-gunzip --with-upload-module  \
		--with-upload-progress-module --with-http2 --with-realip \
		--with-txid --devel

		mkdir "$(brew --prefix)/etc/nginx/{sites-enabled,sites-available,ssl}"

		rm -rf "$(brew --prefix)/etc/nginx/servers"

		#shellcheck disable=SC2154
		$setupHome/bin/createCAandCert.sh -c blahblahblah -b

	else
		echo "nginx is already installed"
	fi
