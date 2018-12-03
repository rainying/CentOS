# VirboxTool #

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


備註：有時候會遇上kernel-devel 版本不符合問題，可以使用以下指令(yum -y install kernel-devel-3.10.0-862.el7.x86_64)

備註：有時候使用Virbox會遇到Port問題，請至防火牆將Virbox相關程式防火牆開啟
