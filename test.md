> Proxyee Down 是一款开源的免费 HTTP 高速下载器，底层使用`netty`开发，支持自定义 HTTP 请求下载且支持扩展功能，可以通过安装扩展实现特殊的下载需求。

 ## 使用教程

 ## 下载程序

   1. [OneDrive 下载](https://imhx-my.sharepoint.com/:f:/g/personal/pd_imhx_onmicrosoft_com/EnPrybHS3rVFuy_HdcP7RLoBwhb0k5ayJdIzwjU0hCM9-A?e=he0oIz)  
     感谢 [惶心 技术博客](https://tech.hxco.de) 提供账号。
   2. [官网下载](http://pdown.org/releases.html)  
     目前官网带宽非常低所以下载很慢，所以推荐用**OneDriver**下载。(如果有服务器或者CDN赞助的话可以联系我~)

 ## 使用说明

 - **Windows**:   
   下载 Windows 版本的压缩包以后，将压缩包解压至任意目录，执行文件夹里的`Proxyee Down.exe`文件即可。  
   > 注意：360 可能会报毒，请将报毒文件加入白名单，或者直接卸载 360

   ![](https://upload.cc/i1/2018/09/14/ZcgU9L.png)
 - **macOS**:  
   下载 `macOS` 版本的压缩包之后，解压至任意目录，将目录内的 `Proxyee Down` 应用复制到 `Application`（或者 `应用程序`，取决于系统版本以及语言设定）文件夹，双击运行即可。  
   > 注意：如果启动闪退，把 APP 复制到其他目录即可正常运行；且 `macOS` 切换代理以及安装证书需要管理员权限，在应用启动时会提示输入密码

   ![](https://upload.cc/i1/2018/09/14/2ftXlP.png)
 - **Linux**:  
   Linux 系统目前没有打原生包，要自行下载 jar 包运行，需安装 `JRE` 或 `JDK`(要求版本不低于 `1.8`)，下载完成后在命令行中运行：
   ```
   java -jar proxyee-down-main.jar
   ```
   > 注意：如果使用 `openjdk` 的话需要安装 `openjfx`


 ## 任务模块

 用于管理下载任务，可以在此页面创建、查看、删除、暂停、恢复下载任务。

 - **进阶**
   - [自定义下载请求](https://github.com/proxyee-down-org/proxyee-down/blob/v2.5/.guide/common/create/read.md)
   - [刷新任务下载链接](https://github.com/proxyee-down-org/proxyee-down/blob/v2.5/.guide/common/refresh/read.md)

 ## 扩展模块

 在开启扩展模块时一定要手动安装一个由 `Proxyee Down` 随机生成的一个 CA 证书用于`HTTPS MITM`的支持。

 - **安装证书**

   进入扩展页面，如果软件检测到没有安装 Proxyee Down CA 证书时，会有对应的安装提示，接受的话点击安装按照系统指引即可安装完毕。
   ![安装证书](https://upload.cc/i1/2018/09/14/hzCZbJ.png)

 - **扩展商店**

   安装完证书后会进入扩展商店页面，目前扩展商店只有一款百度云下载扩展，以后会陆续开发更多的扩展(_例如：各大网站的视频下载扩展、其他网盘的下载扩展等等_)。
   ![扩展商城](https://upload.cc/i1/2018/09/14/jZ5lUI.png)

 - **扩展安装**

   在操作栏找到安装按钮，点击安装即可安装扩展。
   ![](https://upload.cc/i1/2018/09/14/JgZXj4.png)

 - **全局代理**

   全局代理默认是不开启的，开启 `Proxyee Down` 会根据启用的扩展进行对应的系统代理设置，可能会与相同机制的软件发生冲突(例如：Shadowsocks, ShadowsocksR)。
   如果不使用全局代理，可以点击 `复制PAC链接` ，配合 [SwitchyOmega 插件](https://www.switchyomega.com/) 来使用。

 - **其他相关**

   - **SwitchyOmega 设置教程**  
     1. 新建情景模式，选择 `PAC` 情景模式类型。

       ![](https://upload.cc/i1/2018/09/14/1Uj25H.png)

     2. 把复制的 `PAC` 链接粘贴进来并点击立即更新情景模式然后保存

       ![](https://upload.cc/i1/2018/09/14/ZKdqrU.png)

     3. 切换情景模式进行下载  

       ![](https://upload.cc/i1/2018/09/14/h4qP9F.png)

   - **参与扩展开发**  
     详见 [proxyee-down-extension](https://github.com/proxyee-down-org/proxyee-down-extension)

   - **扩展实现原理**  
     扩展功能是由 `MITM` (中间人攻击)技术实现的，使用 [proxyee](https://github.com/monkeyWie/proxyee) 框架拦截和修改 `HTTP` 或 `HTTPS` 的请求和响应报文，从而实现对应的扩展脚本注入。
 [点击查看教程](https://github.com/proxyee-down-org/proxyee-down/wiki/%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B)

 ## 交流群
