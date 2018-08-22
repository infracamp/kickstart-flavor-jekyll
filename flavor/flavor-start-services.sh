#!/bin/bash

echo "Starting apache webserver"
chown -R user /var/www
service apache2 start