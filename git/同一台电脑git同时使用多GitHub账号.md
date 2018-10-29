## 同一台电脑git同时使用多gitHub账户
>准备，windows，已经安装git,两个github账号：one@email.com,two@mail.com

1. 生成密钥分别保存

```shell
ssh-keygen -t rsa -b 4096 -C "one@email.com"
#回车后指定保存文件名,如:id_rsa_one
ssh-keygen -t rsa -b 4096 -C "two@mail.com"
#同理，id_rsa_two
```

2. 使用ssh-agent

```shell
eval $(ssh-agent -s)
#github官方的bash可以直接 ssh-agent -s
```

3. 添加私钥

```shell
ssh-add ~/.ssh/id_rsa_one
ssh-add ~/.ssh/id_rsa_tow
```

4. 起别名

```
cd ~/.ssh
touch config
#创建配置文件
```
>config文件配置如下：

```shell
#one(one@email.com)
Host one.githut.com
#port 22
User one
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_one


#two(two@email.com)
Host two.githut.com
#port 22
User two
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_two
```

5. 使用

```shell
git clone git@one.github.com/one.name/your.project

git clone git@one.github.com/two.name/your.project
```
