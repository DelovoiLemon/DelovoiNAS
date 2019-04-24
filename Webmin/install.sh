#!/bin/bash
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl libdigest-md5-perl>/dev/null
echo 'Installing SSH tools...'
sudo apt-get install -y openssh-server>/dev/null
echo 'Installing SSH tools complite!'
sudo echo 'deb http://download.webmin.com/download/repository sarge contrib'>>/etc/apt/sources.list
sudo echo 'deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib'>>/etc/apt/sources.list
rm jcameron-key.asc>/dev/null
wget http://www.webmin.com/jcameron-key.asc>/dev/null
sudo apt-key add jcameron-key.asc>/dev/null
sudo apt update -y>/dev/null
sudo apt-get install -y webmin>/dev/null
sudo systemctl enable webmin>/dev/null
