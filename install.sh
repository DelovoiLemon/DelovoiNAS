#!/bin/bash
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
echo 'Starting transmission-daemon setup...'
sudo apt-get install -y transmission-daemon>/dev/null
sudo service transmission-daemon stop>/dev/null
sudo cp ~/DelovoiNAS/transmission-daemon/settings.json /etc/transmission-daemon/settings.json>/dev/null
sudo service transmission-daemon start>/dev/null
echo 'Transmission-daemon setup complite!'
echo 'Webmin installing starting...'
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl libdigest-md5-perl
echo 'Installing SSH tools...'
sudo apt-get install openssh-server
echo 'Installing SSH tools complite!'
cd Webmin/
./install.sh
cd ..
echo 'Webmin install complite!'
echo 'Plex installing starting...'
cd ~/DelovoiNAS/Serviio/
./install.sh
echo 'Plex install complite!'
echo 'Instaliation complite!'
