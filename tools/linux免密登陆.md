## Linux免密登陆 (ssh) ##
>假设有两台机器：host01,host02,现在需要在host01上免密登陆host02机器

### 1. host01机器上生产密钥 ###
`ssh-keygen -t rsa`  （一路回车即可）

### 2. host02机器上创建文件authorized_keys，文件在~/.ssh/目录下

``` shell
[hadoop@host02 ~]$ ls -rlta ~/.ssh
总用量 16
-rw-r--r--. 1 hadoop hadoop  395 7月  26 01:03 id_rsa.pub
-rw-------. 1 hadoop hadoop 1679 7月  26 01:03 id_rsa
-rw-------. 1 hadoop hadoop 1580 7月  26 01:04 authorized_keys
-rw-r--r--. 1 hadoop hadoop  736 7月  26 01:05 known_hosts
drwx------. 8 hadoop hadoop  189 8月   9 00:19 ..
drwx------. 2 hadoop hadoop   80 10月 28 03:15 .
```
>若没有.ssh目录或authorized_keys文件请用当前用户创建

```
cd ~
mkdir .ssh
cd .ssh
touch authorized_keys
```

>若存在则需要确保确保读、写、执行权限只限当前用户；把分组和其他用户的读、写、执行权限去掉 `chmod go-rwx .ssh`


### 3. 将host01上生产的公钥复制到host02的authorized_keys文件中 ###
方式一：
``` shell
ssh-copy-id -i ~/.ssh/id_rsa.pub hadoop@host02
#回车输入密码
```

方式二：

``` shell
#host01上
cat id_rsa.pub
#复制内容追加到host02上的authorized_keys文件中
```

### 4. 在host01上`ssh hadoop@host02`即可免密登陆host02  ###
---

>补充说明：公钥：加密，私钥：解密

** 大概流程过程 （详细网上找 SSH建立连接过程 ）**
1. SSH client生成密钥，将公钥复制到SSH Server上
2. SSH client第一次请求SSH Server,SSH Server会将自己的公钥发送给SSH client
3. SSH client收到SSH Server的公钥保存在.ssh/known_hosts文件中
4. SSH client 请求内容通过SSH Server的公钥加密后发送SSH Server
5. SSH Server 使用自己的私钥解密接收到SSH client的请求内容
6. SSH Server将响应内容使用SSH client的公钥加密后发送到SSH client
7. SSH client收到SSH Server的响应内容通过自己的私钥解密


---
《全文完》

---
