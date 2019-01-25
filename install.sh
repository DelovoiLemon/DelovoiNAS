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
cd transmission-daemon
./install.sh
cd ..
echo 'Transmission-daemon setup complite!'
echo 'Webmin installing starting...'
cd Webmin/
./install.sh
cd ..
echo 'Webmin install complite!'
echo 'Plex installing starting...'
cd Plex
./install.sh
cd ..
echo 'Plex install complite!'
echo 'Instaliation complite!'
