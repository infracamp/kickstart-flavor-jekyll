#!/bin/bash

#
# This file is called from Kickstart to
# finalize the container installation
#

set -e

apt-get update
apt-get -y install libxml2-dev ruby-full ruby-bundler gem apache2

gem install "jekyll:~>3.0" jekyll-optional-front-matter

cd /kickstart/flavor && bundle install


echo


cat <<\EOF >> /etc/apache2/apache2.conf

<Directory /var/www/html>
        Options FollowSymLinks
        AllowOverride All
        ErrorDocument 404 /404.html
</Directory>


EOF



chown -R user /var/www
rm -f /var/www/html/*

