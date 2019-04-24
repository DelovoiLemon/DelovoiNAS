#!/bin/bash
sudo apt-get install -y samba>/dev/null
sudo cp smb.conf /etc/samba/smb.conf
sudo service smbd restart>/dev/null
sudo service nmbd restart>/dev/null
cd ..
