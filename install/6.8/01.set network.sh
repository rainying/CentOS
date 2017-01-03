#!/bin/sh
###
# 請以root身份登入
##

sed -i 's/ONBOOT=no/ONBOOT=yes/g' /etc/sysconfig/network-scripts/ifcfg-eth0

ifup eth0