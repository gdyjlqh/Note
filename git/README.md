## git常用命令 ##

1. ** 创建版本库： **

  `git init`

1. ** 添加文件到暂存区 **  

  `git add file`

1. ** 提交文件到仓库 **

  `git commit -m '备注'`

1. ** 查看文件是否未提交 **

  `git status`

1. ** 比较修改未提交文件 **

  `git diff file`

1. ** 查看历史记录 **

  `git log` 或 `git log --pretty=oneline`

1. ** 版本回退 **

  回退上一个版本`git reset --hard HEAD^`

  回退上上一个版本`git reset --hard HEAD^^` 或 `git reset --hard HEAD~2`

  回退某版本号`git reset --hard 版本号`，回退某版本其中的一个文件，`git reset --hard 版本号 文件名`

1. ** 查看版本号 **

  `git reflog`

1. **  撤销工作区的修改 **

  `git checkout -- file`  
> 注意：这里必须有 ** -- ** 且前后有空格; `git checkout master` 切换分支，`git checkout -b xxx` 创建分支且切换分区。

1. **  git push origin master **

1. ** `git remote add origin git@github.com:<youruser>/projectname.git`

1. ** `git remote rm orgin`
