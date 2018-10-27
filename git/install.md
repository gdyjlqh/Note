## 源码编译安装Git ##

1. *** 检查版本：git --version ***
2. *** yun remove git *** 移除就版本


1. ** 下载github最新的Git源码，命令为：
 `wget https://github.com/git/git/archive/v2.19.1.tar.gz` **

1. ** 压缩包解压，命令为： tar -zxvf v2.19.1.tar.gz **

1. ** 安装编译源码所需依赖，命令为： yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker 耐心等待安装，出现提示输入y即可 **

1. ** 进入解压后的文件夹`·`git-2.29.1`,执行编译，命令: make prefix=/usr/local/git all **

1. ** 安装命令: `make prefix=/usr/local/git install` **

1. ** 打开环境变量配置文件`/etc/profile` **

1. ** 输入命令 `git --version` ，查看安装的git版本，校验通过，安装成功 **
