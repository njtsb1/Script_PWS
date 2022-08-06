#!/bin/bash

echo "Updating the server..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Downloading and copying application files..."

cd /tmp
wget https://github.com/njtsb1/Site_Linux_dio_me/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
