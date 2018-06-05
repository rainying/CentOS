#!/bin/sh
###
# 請以root身份登入
##

yum -y update

yum -y install epel-release

yum -y update

/etc/init.d/iptables stop