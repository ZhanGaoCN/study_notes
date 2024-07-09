# minicom配置要点

minicom作为串口（serial 转 USB）工具，对交换机等设备的调试非常重要

## minicom下载

ubuntu一般使用：

sudo apt-get install minicom

centos、rocky一般使用：

yum install minicom

即可直接安装，各种依赖都能直接安装好

### minicom配置

安装好minicom之后，第一次使用需要先：

minicom -s

进入配置页面，对minicom配置进行设置

配置前提：

（1）知道设备连的USB的名称（如ttyUSB0）

 这个可以通过命令：

dmsg | grep ttyUSB

来查看

（2）知道串口参数：如波特率

配置界面如下：

![image-20240703164806336](C:\Users\Aopir\AppData\Roaming\Typora\typora-user-images\image-20240703164806336.png)

需要改的地方：

​	Serial port setup，上下方向键选择该项，回车进入

![image-20240703164947152](C:\Users\Aopir\AppData\Roaming\Typora\typora-user-images\image-20240703164947152.png)

在其中根据连接的USB名称，修改A（默认的是/dev/modern）改成/dev/ttyUSB0 （例)

波特率一般只有两个9600和115200，试一试就行

Hardware Flow Control关掉，然后回车保存，之后选save as default（这样以后使用minicom命令默认就是这套配置），也可以save as 然后起一个文件名，比如huawei 这样之后用命令 

minicom huawei

就是用保存的这个配置打开minicom

如果配置完成之后退出minicom(Exit from minicom)再minicom 进入之后没反应，一般就是波特率不对，改一下就行。

## minicom退出

ctrl+A  X即可