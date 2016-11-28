# CentOS #

CentOS 基本安裝工具 

## 步驟 ##

```
yum -y install git 
```

```
rm -rf ~/github/centos
```

```
git clone https://github.com/rainying/CentOS.git ~/github/centos
```

```
chmod +x ~/github/centos/install/*.sh
```

```
sh ~/github/centos/install/01.disabledselinux.sh
```

```
sh ~/github/centos/install/02.ntpdate.sh
```

```
sh ~/github/centos/install/10.upgrade.sh
```

```
sh ~/github/centos/install/11.ifconfig.sh
```

```
sh ~/github/centos/install/12.zip.sh
```

```
sh ~/github/centos/install/31.git.sh
```