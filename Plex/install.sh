#!/bin/bash
sudo apt-get update -y>/dev/null
sudo apt-get upgrade -y>/dev/null
cd ~/DelovoiNAS/Plex>/dev/null
wget https://downloads.plex.tv/plex-media-server-new/1.15.6.1079-78232c603/debian/plexmediaserver_1.15.6.1079-78232c603_amd64.deb>/dev/null
mv plex*.deb Plex.deb>/dev/null
sudo dpkg -i Plex.deb>/dev/null
sudo systemctl start plexmediaserver>/dev/null
sudo systemctl enable plexmediaserver>/dev/null
cd ..
