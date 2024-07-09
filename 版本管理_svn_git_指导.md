# git指南

by zhangao

### gitlab是基于git的在线仓库版本管理

#### 1. 创建新账号，对远程仓库中已有的项目进行开发：

1. 本地创建git仓库: git init
2. 配置远程仓库地址： git remote add origin http://192.168.150.188/dev/reli.git
3. 将项目分支拉取到本地： git pull origin develop:origin/develop （develop是远程仓库中需要开发的分支，冒号后的origin/develop是在本地创建的新分支的名字），在没有分支的情况下，使用这条指令将创建一个新的分支。如：git pull origin develop:my_branch，将创建一个名为my_branch的分支，并将代码pull到这个本地分支中（当本地有多个分支时，可以通过checkout在不同分支的文件视图间进行切换。如：checkout了master，那在文件管理器中看到的就是master下的文件和路径）
4. 对拉取到本地的分支进行开发，开发后将代码提交到本地仓库分支：git add . （添加所有文件到暂存区）； git commit -m“ ”（提交到本地仓库）
5. 将修改后的代码push到远程仓库对应分支：git push origin origin/develop:develop

# svn

by zhangao

svn是中心式的版本管理工具

在这里讲一点平时不好处理的情况的处理方式：

##### 当提交出现冲突时

1. 首先要确保，每次提交之前要先update，对于git，每次push前要先pull

2. 将需要保存的修改文件备份好，将提示冲突的文件路径删掉，再update（目的是回退到之前稳定版本）

3. 将需要修改的文件添加上去，再提交（本质上是先退回稳定版本，再在其基础上提交，来解决冲突）

4. 当冲突太多，难以解决时，如果冲突代码不需要保存，就直接删掉smartnic，再重新checkout一份。

   在smartnic的上一级目录下：

   rm -fr smartnic/

   svn co svn://192.168.9.16/smartnic

   就能得到一份全新的代码
5. 当某个svn中心仓库中的文件被修改的时候，可以在本地的那个文件夹中查看svn log，然后在本地单独将这个文件回退到之前的版本，然后再提交。（不影响其他文件）如果删除了，可能需要对整个路径回退。

   

原始信息：

使用时需要本地和远程仓库结合起来使用。

首先将代码拿到之后，在本地创建git仓库

在仓库路径下使用：git init

将项目的远程仓库地址配置好： git remote add origin http://192.168.150.188/dev/reli.git

代码修改完毕之后，使用：git add . （添加所有文件到暂存区）

之后： git commit -m“ ”（提交到本地仓库）

本地仓库提交之后：git push origin <本地分支名>:<远程分支名> （推送到远程仓库）

对于本项目： git push origin master:develop

但是这时可能会遇到报错：![image-20240625161802454](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240625161802454.png)

这是因为git不支持http协议，只支持https协议。

解决方式：

git remote set-url origin https://192.168.150.188/dev/reli.git

（改变远程仓库的url）

需要从远程仓库拉新代码时：git pull origin <远程分支名>:<本地分支名>