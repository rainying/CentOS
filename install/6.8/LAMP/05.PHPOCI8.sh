#!/bin/sh
###
# 請以root身份登入
##

cd ~

yum -y install git 

git clone http://cns:cnsmis9958@172.17.1.139/cnsmis/IRD_Send_Message_System.git ~/init
mv /etc/selinux/config /etc/selinux/config_old
cp ~/init/etc/centos/selinuxConfig /etc/selinux/config

yum -y install git perl gcc wget
yum -y install php70w-pear php70w-httpd-devel php70w-devel.x86_64 libmcrypt libmcrypt-devel
rpm -ivh  ~/init/file/oci8/oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm
rpm -ivh  ~/init/file/oci8/oracle-instantclient12.1-devel-12.1.0.2.0-1.x86_64.rpm
rpm -ivh  ~/init/file/oci8/oracle-instantclient12.1-sqlplus-12.1.0.2.0-1.x86_64.rpm
echo "/usr/lib/oracle/12.1/client64/lib" > /etc/ld.so.conf.d/oracle_client.conf
/sbin/ldconfig

mkdir ~/init/file/php
cd ~/init/file/php
wget http://tw1.php.net/get/php-7.0.14.tar.gz/from/this/mirror
mv mirror php-7.0.14.tar.gz
gunzip php-7.0.14.tar.gz
tar xvf php-7.0.14.tar

cd php-7.0.14/ext/oci8
phpize
./configure
make
make test
make install

echo "extension=oci8.so" > /etc/php.d/oci8.ini

service httpd restart 

cp ~/init/etc/oci8/oci.php /var/www/html/oci8.php

cd ~

reboot