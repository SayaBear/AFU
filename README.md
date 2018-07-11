# AFU

本脚本集成了来自STCN的minimax4233、wolaiwozhengfu的脚本内容并加以修改，向上述二位大佬表示感谢！
---
已适配Ubuntu各个版本、Debian各个版本，Centos或其他Linux内核不适用！
----
使用方法：
----
使用xshell、putty或其他任何一种SSH软件连接您的主机，之后输入命令：  
wget -N --no-check-certificate https://raw.githubusercontent.com/SayaBear/AFU/master/AFU.bash && chmod +x AFU.bash && bash AFU.bash  
之后回车，跟随屏幕提示输入账号、密码  
可能会出现类似Do you want to continue? [Y/n] 的内容，系安装.net core依赖所致，输入Y回车或直接回车继续安装即可  
安装完成后，屏幕会自动跳转至已经开启的Screen界面，即屏幕仅显示类似root@abc:~/ASF# 的内容，复制或输入下列两条指令：  
chmod +x ArchiSteamFarm  
./ArchiSteamFarm  
之后回车，输入手机令牌，即可开始挂卡！

常见问题
----
Q：出现wget: command not found报错  
A：系统过于精简，未安装wget命令，使用sudo apt-get install wget安装即可。

Q：出现sudo：command not found报错  
A：系统极为精简，未安装sudo命令，使用apt-get install sudo安装即可。

Q：无法进入ASF挂卡界面，出现Couldn't find a valid ICU package提示  
A：在Ubuntu较旧版本（12.04、14.04）可能会出现，系未安装ICU Package所致，使用sudo apt-get install libicu-dev安装即可。

Q：ASF提示无法读取徽章？  
A：系无法进入steamcommunity所致，可使用zyfworks大佬的小工具（ https://github.com/zyfworks/AnotherSteamCommunityFix ）。

Q：我还有其它问题……  
A：欢迎留言，虽然我不一定能处理好……
