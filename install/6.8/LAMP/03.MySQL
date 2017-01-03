#!/bin/sh
###
# 請以root身份登入
##

wget http://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm

rpm -ivh mysql57-community-release-el6-9.noarch.rpm --force --nodeps

yum install -y mysql-community-server
 
//--------------------------------------------------------------------

service mysqld restart

chkconfig mysqld on

service mysqld stop

mysqld_safe --user=mysql --skip-grant-tables --skip-networking &

mysql -uroot mysql 

<mysql>
UPDATE user SET authentication_string=PASSWORD('password1234@SHARE') where USER='root';

quit
</mysql>

service mysqld restart

mysql -uroot -p

<mysql>
SET PASSWORD = PASSWORD('password1234@SHARE');

GRANT all ON *.* TO root@'localhost' IDENTIFIED BY 'password1234@SHARE'; 

create user 'vicying'@'%' identified by 'password1234@SHARE';  

exit
</mysql>

vi /etc/my.cnf 

<vi>
[client]
default-character-set =utf8
</vi>

service mysqld restart