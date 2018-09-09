目录

[TOC]

## 1. 强调 ##

---
>星号与下划线都可以，单是斜体，双是粗体，符号可跨行，符号可加空格

```
__ 下划线 __

** 星号**

_下划线
换行_

*星号*
```

__ 下划线 __

** 星号**

_下划线
换行_

*星号*



## 2. 分割线 ##
---
>三个或更多- _ * ，必须单独一行，可含空格

```
***
___
___
```

***
___
___

## 3. 引用 ##
---

```
> http://www.baidu.com/

> markdown
```

> http://www.baidu.com/

> markdown

## 4. 标题 ##
---

```
# 一级标题 #

## 二级标题 ##

### 三级标题 ###

#### 四级标题 ####

##### 五级标题 #####

###### 六级标题 ######
```

# 一级标题 #

## 二级标题 ##

### 三级标题 ###

#### 四级标题 ####

##### 五级标题 #####

###### 六级标题 ######


## 5. 无序列表 ##
---
>符号之后的空格不能少，- + * 效果一样，但不能混合使用，因混合是嵌套列表，内容可超长

```
- 任务1
- 任务2
- 任务3


* 任务1
* 任务2
* 任务3

+ 任务1
+ 任务2
+ 任务3

嵌套方式：

- 任务1
 * 任务1.1
 * 任务1.2
   + 任务1.2.1
   + 任务1.2.2
      - 任务1.2.2.1
- 任务2
```
- 任务1
- 任务2
- 任务3


* 任务1
* 任务2
* 任务3

+ 任务1
+ 任务2
+ 任务3

嵌套方式：

- 任务1
 * 任务1.1
 * 任务1.2
   + 任务1.2.1
   + 任务1.2.2
      - 任务1.2.2.1
- 任务2


## 6. 有序列表 ##
---
>数字不能省略但可无序，点号之后的空格不能少

```
1. 任务1
2. 任务2
3. 任务3
6. 任务6
-  任务7
```
1. 任务1
2. 任务2
3. 任务3
6. 任务6
-  任务7

## 7. 文字超链 ##
---

> tooltips方式,tips可省略

```
[github](https://github.com "hello word")
```

[github](https://github.com "hello word")

> 图片超链：多个感叹号，Tooltips可省略，要设置大小只能借助HTML标记
```
![GitHub Mark](http://github.global.ssl.fastly.net/images/modules/logos_page/GitHub-Mark.png "GitHub Mark")
```

![GitHub Mark](http://github.global.ssl.fastly.net/images/modules/logos_page/GitHub-Mark.png "GitHub Mark")

## 8. 索引超链：Reference方式 ##
---

>索引，1 可以是任意字符

```
[GitHub][1]

[1]:https://github.com
```
[GitHub][1]

[1]:https://github.com


## 9. 自动链接 ##
---

> 尖括号

```
< https://github.com >
```
<https://github.com>


## 10. 代码 ##
---

> 片段代码

``` java
(``` java
public void class Trade{
    private int id;
    private String name;
}
```)
```
>注意： 为了防止转译，前后三个反引号处加了小括号，实际是没有的。这里只是用来演示，实际中去掉两边小括号即可。

``` java
public void class Trade{
    private int id;
    private String name;
}
```

>单行代码
```
单行代码 (`) ps -ef|grep abc(`)
```
单行代码 ` ps -ef|grep abs`

## 11. 表格 ##
---

```
| head1         | head2         | head3 |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |
```

| head1         | head2         | head3 |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

> 或

```
商品                |价格
--------------------|---------
鼠标                | ￥30
键盘                | ￥50
```

商品                |价格
--------------------|---------
鼠标                | ￥30
键盘                | ￥50

## 12. 空格 ##
---

```
空格&ensp;或&#8194;空格
```

空格&ensp;或&#8194;空格


## 13. 字体 ##
---

``` html
<font face="黑体">我是黑体字</font><br/>
<font face="微软雅黑">我是微软雅黑</font><br/>
<font face="STCAIYUN">我是华文彩云</font><br/>
<font color=#0099ff size=12 face="黑体">黑体</font><br/>
<font color=#00ffff size=3>null</font><br/>
<font color=gray size=5>gray</font><br/>
```

<font face="黑体">我是黑体字</font><br/>
<font face="微软雅黑">我是微软雅黑</font><br/>
<font face="STCAIYUN">我是华文彩云</font><br/>
<font color=#0099ff size=12 face="黑体">黑体</font><br/>
<font color=#00ffff size=3>null</font><br/>
<font color=gray size=5>gray</font><br/>


## 14. TODO待办 ##
---
```
- [x] 设计
+ [ ] 开发
* [ ] 测试
```

- [x] 设计
+ [ ] 开发
* [ ] 测试
