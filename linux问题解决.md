#### 1.wget

通过wget使用服务器下载文件，下载好之后使用scp命令将文件通过内网拷贝到本地指定目录下，加快速度。scp也可以从本地向服务器传输数据

#### 2.SCP

scp命令的要点很简单：第一个参数是待传输的文件路径，第二个参数传输的目标路径、-r参数用来传输文件夹
wget -b 命令使用后台下载

#### 3.tar

使用tar把文件打包之后再传输，能提高传输速度，tar也是用来解包的命令

![image-20240314192357584](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240314192357584.png)

tar: 命令用于归档和提取文件。

-c: 创建一个新的归档文件。

-z: 使用gzip进行压缩或解压缩。

-v: 显示详细的压缩/解压缩过程。

-f: 指定归档文件的名称

得到文件：

![image-20240314192443979](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240314192443979.png)

解压缩命令：

![image-20240314192724965](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240314192724965.png)

#### 4.文件转移

使用mkdir、mv、cp等命令在linux中对文件进行解压和提取工作，rm进行删除

#### 5. ./与../

linux命令中涉及到路径问题时要注意"/"开头的是绝对路径的写法，必须从根目录开始写。"./"开头或者"../"开头这种是相对路径的写法，表示从当前路径(./)或者上一层(../)
开始算。另外路径结尾加不加/都可以：比如./code/pkt_buffer或者./code/pkt_buffer/都可以

#### 6.ssh

使用ssh命令直接在终端连接服务器，键盘快捷键"CTRL+D"或者文本输入exit或者logout即可断开连接

#### 7.gzip

对于.gz压缩文件的操作，使用gzip命令

#### 8.脚本

脚本有很多种，使用不同语言的脚本最终会使用不同的程序去执行。比如python脚本最终会使用python命令来执行，shell脚本最终会使用sh命令来执行

#### 9.命令与脚本与可执行文件

8.对于linux命令，如ls，其本质上是执行名为ls的可执行文件，因为ls被加入到了系统的环境变量中，系统在执行这些可执行文件的时候会根据一定的顺序去在不同的路径下去查找
首先是在默认路径下找。因为ls被加入了环境变量，因此直接执行ls，系统往默认路径下一找就能找到，就能正常执行。但是在安装软件的时候，经常需要执行可执行文件：
“configure”，全称为configure.ac（是软件安装包里自带的可执行文件，用来生成makefile脚本）因此这个可执行文件就不在默认路径下，因此执行的时候需要加上路径，
比如相对路径：./configure这样子。脚本与可执行文件的区别：脚本需要对应的程序去执行，可执行文件直接能自己运行

#### 10.服务器后台执行程序

后台执行文件：几个要点：1.最后加上&代表在后台开进程执行当前任务；2.nohup表示无视控制台输入，将输出记录到nohup.out中；3.>是将结果重定向到log中
make &(后台执行，但是执行结果输出到控制台) nohup make &（输出到日志）
使用jobs查看后台进程执行情况

#### 11.bash

什么是bash，bash是bourne-again shell的简称，即一种shell程序，shell程序是将shell命令转换成操作系统能够识别的二进制文件的程序，是linux终端的操作接口。sh脚本
是按照shell语法规则编写的文本文件。

#### 12.docker：

docker是一种使用Go语言开发的开源项目，是container容器技术的一种具体实现方式。可以类比成集装箱，其中包含了程序和程序运行所需的所有依赖，整个一套
打包可以支持程序在不同的环境下执行。

#### 13. git clone

git clone下载代码时遇到：

![image-20240312144920831](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240312144920831.png)

问题原因是：本地（或者服务器上）没有生成ssh key，百度上有教程：

[Github无法远程拉取仓库“Permission denied (publickey). fatal: Could not read from remote repository”的解决方案_fatal: could not read from remote repository. plea-CSDN博客](https://blog.csdn.net/weixin_65688914/article/details/133523027)

#### 14.minicom

使用minicom进行远程串口管理，连接不上时的解决方案：

1.dmesg命令来查看连接上去的是哪个USB口。（如下图是连接到USB1上）

![image-20240312211507958](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240312211507958.png)

2.知道了之后使用：minicom -s命令进入minicom配置界面

![image-20240312211550267](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240312211550267.png)

选择其中的Serial port setup

![image-20240312211629192](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240312211629192.png)

在其中对波特率、USB口等参数进行配置（注意是使用选项前面的字母进行选择的）

3.配置完之后按enter保存，选其中的save setup as dfl，然后按esc退出即配置完成，再重新打开一个窗口 minicom即可

#### 15.pkill -9 xx

xx为进程名称，例：pkill -9 minicom