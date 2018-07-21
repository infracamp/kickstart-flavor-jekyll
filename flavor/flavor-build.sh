#!/bin/bash

#
# This file is called from Kickstart to
# finalize the container installation
#

set -e


apt-get -y install libxml2-dev ruby-full ruby-bundler gem

gem install jekyll jekyll-optional-front-matter





