#!/bin/bash
sudo mkdir /data/
sudo mkdir /data/Media
sudo mkdir /data/Backups
sudo mkdir /data/Media/Torrents
sudo mkdir /data/Media/Videos
sudo mkdir /data/Media/Music
sudo mkdir /data/Media/Pictures
sudo chmod -R 7777 /data
sudo chmod -R 7777 /data/*
sudo chmod -R 7777 /data/Media/*
sudo chown -R nobody:nogroup /data
sudo chown -R nobody:nogroup /data/*
sudo chown -R nobody:nogroup /data/Media/*
sudo chmod -R 7777 */*.*
sudo chown -R nobody:nogroup */*.*
echo 'Starting installiation..,'
echo 'Starting system update...'
sudo apt-get update -y>/dev/null
echo 'System update complite!'
echo 'Starting system upgrade...'
sudo apt-get upgrade -y>/dev/null
echo 'System upgrade complite!'
echo 'Starting samba setup...'
cd Samba
sudo ./install.sh
cd ..
echo 'Samba setup complite!'
#echo 'Starting transmission-daemon setup...'
#cd transmission-daemon
#./install.sh
#cd ..
#echo 'Transmission-daemon setup complite!'
#echo 'Webmin installing starting...'
#cd Webmin/
#./install.sh
#cd ..
#echo 'Webmin install complite!'
#echo 'Plex installing starting...'
#cd Plex
#./install.sh
#cd ..
#echo 'Plex install complite!'
echo 'Ajenti installing starting..'
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2-bin apache2-common
sudo apt-get autoremove --purge
sudo rm -Rf /etc/apache2 /usr/lib/apache2 /usr/include/apache2
sudo -s
wget -O- https://raw.github.com/ajenti/ajenti/1.x/scripts/install-debian.sh | sh
service ajenti restart
apt-get install ajenti-v ajenti-v-nginx ajenti-v-mysql ajenti-v-ftp-pureftpd ajenti-v-php-fpm php7-curl
service ajenti restart
apt-get install php5-mysql imagemagick php5-imagick php5-gd
service ajenti restart
echo 'Instaliation complite!'
sudo reboot
