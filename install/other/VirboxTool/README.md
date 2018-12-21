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

備註：網路設定

	一、點選VirtualBox Tool bar 的 檔案 -> 喜好設定 -> 網路
    二、新增新的Nat Network 
		2.1 網路名稱輸入-> NAT 192.168.200.*
		2.2 網路CIDR輸入-> 192.168.200.0/24 
		2.3 取消點選->不支援DHCP
	三、選擇相關的VirtualBox外部設定
	    3.1 選擇目標VirtualBox點選右鍵 -> 設定值
	    3.2 選擇網路 -> 介面卡1
	    3.3 附件到選擇 -> NAT 網路
	    3.4 名稱選擇 -> NAT 192.168.200.*
	四、選擇相關的VirtualBox內部設定 設定如下
	    BOOTPROTO=static
		IPADDR=192.168.200.101
		PREFIX=24
		GATEWAY=192.168.200.1
		DNS1=192.168.200.1