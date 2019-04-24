#!/bin/bash
sudo apt-get update -y>/dev/null
sudo apt-get upgrade -y>/dev/null
cd ~/DelovoiNAS/Plex
wget https://downloads.plex.tv/plex-media-server-new/1.15.4.993-bb4a2cb6c/debian/plexmediaserver_1.15.4.993-bb4a2cb6c_armhf.deb
mv plex*.deb Plex.deb
sudo dpkg -i Plex.deb>/dev/null
sudo systemctl start plexmediaserver>/dev/null
sudo systemctl enable plexmediaserver>/dev/null
cd ..
