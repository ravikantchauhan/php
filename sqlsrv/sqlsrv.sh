#!/bin/bash
#this is scitp for sqlsrv driver install in ubuntu 16.04 with php 7.4
sudo su
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install php7.4 php7.4-dev php7.4-xml -y --allow-unauthenticated
#Install the Microsoft ODBC driver for SQL
#Microsoft ODBC 17
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install msodbcsql17
sudo apt-get install unixodbc-dev
##################
sudo apt-get -y install php-pear php7.4-dev
sudo update-alternatives --set php /usr/bin/php7.4
sudo update-alternatives --set phar /usr/bin/phar7.4
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4
sudo update-alternatives --set phpize /usr/bin/phpize7.4
sudo update-alternatives --set php-config /usr/bin/php-config7.4
######sqlsrv
sudo pecl uninstall -r sqlsrv 
sudo pecl uninstall -r pdo_sqlsrv 
sudo pecl -d php_suffix=7.4 install sqlsrv
sudo pecl -d php_suffix=7.4 install pdo_sqlsrv
sudo su
printf "; priority=20\nextension=sqlsrv.so\n" > /etc/php/7.4/mods-available/sqlsrv.ini
printf "; priority=30\nextension=pdo_sqlsrv.so\n" > /etc/php/7.4/mods-available/pdo_sqlsrv.ini
sudo phpenmod -v 7.4 sqlsrv pdo_sqlsrv
sudo service apache2 restart
#########
