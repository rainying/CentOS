yum -y install epel-release
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
rpm -Uvh http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
yum -y update

yum -y install bzip2 kernel-devel kernel-headers gcc make dkms
   
mkdir /media/cdrom

mount /dev/cdrom /media/cdrom/




/media/cdrom/VBoxLinuxAdditions.run

reboot 

ls /media/
cdrom sf_Project

ls /media/sf_Project