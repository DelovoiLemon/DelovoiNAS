#!/bin/bash
sudo apt-get update -y>/dev/null
sudo apt-get upgrade -y>/dev/null
cd ~/DelovoiNAS/Plex
wget https://downloads.plex.tv/plex-media-server/1.14.1.5488-cc260c476/plexmediaserver_1.14.1.5488-cc260c476_amd64.deb
mv plexmediaserver_1.14.1.5488-cc260c476_amd64.deb Plex.deb
sudo dpkg -i Plex.deb>/dev/null
sudo systemctl start plexmediaserver>/dev/null
sudo systemctl enable plexmediaserver>/dev/null
cd ..