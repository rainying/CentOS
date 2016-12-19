#!/bin/sh
###
# 請以root身份登入
##

mv /etc/selinux/config /etc/selinux/config_old

echo "SELINUX=disabled" >> /etc/selinux/config
echo "SELINUXTYPE=targeted" >> /etc/selinux/config

reboot