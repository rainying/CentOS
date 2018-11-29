# CentOS #

安裝VirboxTool，注意事項，必須要一開始就裝不然可能導致套件版本衝突。 

## 步驟 ##
```
放VirboxTool.ios映像檔至機器中
```

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
chmod +x ~/github/centos/install/other/VirboxTool/*.sh
```

```
sh ~/github/centos/install/other/VirboxTool/VirboxTool.sh
```
