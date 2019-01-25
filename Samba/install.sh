#!/bin/bash
sudo apt-get install -y samba>/dev/null
sudo cp Samba/smb.conf /etc/samba/smb.conf>/dev/null
sudo service smbd restart>/dev/null
