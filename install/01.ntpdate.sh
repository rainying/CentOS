#!/bin/sh
###
# 請以root身份登入
##

yum -y install ntpdate
echo "# 每日校時" >> /var/spool/cron/root
echo "10 5 * * * /usr/sbin/ntpdate tock.stdtime.gov.tw" >> /var/spool/cron/root
echo "" >> /var/spool/cron/root