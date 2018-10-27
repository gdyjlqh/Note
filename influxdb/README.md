## InfluxDB ##
---
>是一个开源分布式时序、时间与指标数据库，使用go语言编写

**下载资源**
```
https://repos.influxdata.com/rhel/6Server/x86_64/stable/
wget https://dl.influxdata.com/influxdb/releases/influxdb-1.6.0.x86_64.rpm
```

### 名词 ###

| name           | desc     |
| :------------- | :------------- |
| database       | 数据库        |
| measurement    | 数据库中的表   |
| points         | 表里的一行数据  |
| time           | 每个数据记录时间，是数据库中的主索引(会自动生成)      |
| fields         | 各种记录值（没有索引的属性）也就是记录的值         |
| tags           | 各种有索引的属性      |


### 启动/停止命令 ###
```
service influxdb start

service influxdb start
```

### 配置 ###
>/etc/influxdbinfluxdb.conf

```  shell
# Bind address to use for the RPC service for backup and restore.
# bind-address = "127.0.0.1:8088"

[http]
# The bind address used by the HTTP service.
# bind-address = ":8086"

```
>查看端口

``` shell
[root@localhost ~]# netstat -ntlp|grep influxd
tcp        0      0 127.0.0.1:8088          0.0.0.0:*               LISTEN      7328/influxd        
tcp6       0      0 :::8086                 :::*                    LISTEN      7328/influxd        
[root@localhost ~]#
```


### 控制台操作 ###

``` shell
influx [-port xxx]

[influxdb@localhost ~]$influx -port 8086
Connected to http://localhost:8086 version 1.6.3
InfluxDB shell version: 1.6.3
>

```

#### 命令 ####

> 1.查看数据库： `show dtaabases;`

```
> show databases;
name: databases
name
----
_internal
>
```

> 2.创建数据库：`create database testdb;`

> 3.删除数据库： `drop database testdb`

> 4.选择数据库： `use testdb`

> 5.新增数据： `insert <tablename>,<tags> <values> [timestamp]`
