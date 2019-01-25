#!/bin/bash
sudo apt-get install -y transmission-daemon>/dev/null
sudo service transmission-daemon stop>/dev/null
sudo cp ~/DelovoiNAS/transmission-daemon/settings.json /etc/transmission-daemon/settings.json>/dev/null
sudo service transmission-daemon start>/dev/null
