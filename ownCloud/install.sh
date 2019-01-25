#!/bin/bash
sudo apt install apache2
sudo sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf
sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
sudo apt-get install mariadb-server mariadb-client
sudo systemctl stop mysql.service
sudo systemctl start mysql.service
sudo systemctl enable mysql.service
sudo mysql_secure_installation
sudo systemctl restart mysql.service
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.* libapache2-mod-php7.* php7.*-common libapache2-mod-php7.* php7.*-mbstring php7.*-xmlrpc php7.*-soap php7.*-apcu php7.*-smbclient php7.*-ldap php7.*-redis php7.*-gd php7.*-xml php7.*-intl php7.*-json php7.*-imagick php7.*-mysql php7.*-cli php7.*-mcrypt php7.*-ldap php7.*-zip php7.*-curl
sudo nano /etc/php/7.1/apache2/php.ini
sudo mysql -u root -p
CREATE DATABASE owncloud;
CREATE USER 'ownclouduser'@'localhost' IDENTIFIED BY 'new_password_here';
GRANT ALL ON owncloud.* TO 'ownclouduser'@'localhost' IDENTIFIED BY 'user_password_here' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;
cd /tmp && wget https://download.owncloud.org/community/owncloud-10.0.3.zip
unzip owncloud-10.0.3.zip
mount -o /data /var/www/html/owncloud/
sudo mv owncloud /var/www/html/owncloud/
sudo chown -R www-data:www-data /var/www/html/owncloud/
sudo chmod -R 755 /var/www/html/owncloud/
sudo a2ensite owncloud.conf
sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod env
sudo a2enmod dir
sudo a2enmod mime
sudo systemctl restart apache2.service
