#!/bin/sh
###
# 請以root身份登入
##

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

yum -y install php70w 
yum -y install php70w-mysql php70w-xml php70w-soap php70w-xmlrpc php70w-mbstring php70w-json php70w-gd php70w-mcrypt php70w-imap

vi /etc/httpd/conf/httpd.conf

echo "<?php phpinfo() ?>" >> /var/www/html/info.php

service httpd restart  

yum -y install curl
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

mkdir /var/www/html/restsystem
cd /var/www/html/restsystem

composer require silex/silex "~2.0"

mkdir public 
cd public 

vi indx.php 

