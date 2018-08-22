#!/bin/bash

#
# This file is called from Kickstart to
# finalize the container installation
#

set -e


apt-get -y install libxml2-dev ruby-full ruby-bundler gem apache2

gem install jekyll jekyll-optional-front-matter

cd /kickstart/flavor && bundle install

echo "ErrorDocument 404 /errors/404.html" >> /etc/apache/
echo "ErrorDocument 500 /errors/500.html" >> /etc/apache/


chown -R user /var/www
rm -f /var/www/html/*

