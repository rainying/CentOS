#!/bin/sh
###
# 請以root身份登入
##

vi  /etc/httpd/conf/httpd.conf

DocumentRoot "/var/www/html/restsystem/public/"

<Directory /var/www/html/restsystem/public/>
    AllowOverride All
</Directory>