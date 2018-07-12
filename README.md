# AFU

本脚本集成了来自STCN的minimax4233、wolaiwozhengfu的脚本内容并加以修改，向上述二位大佬表示感谢！
---
已适配Ubuntu12.04-18.04各个版本、Debian8 & 9各个版本，Centos或其他Linux内核不适用！仅支持64位系统！
----
使用方法
----
使用xshell、putty或其他任何一种SSH软件连接您的主机，之后输入命令：  
`wget -N --no-check-certificate https://raw.githubusercontent.com/SayaBear/AFU/master/AFU.bash && chmod +x AFU.bash && bash AFU.bash`  
之后回车，跟随屏幕提示输入账号、密码  
可能会出现类似`Do you want to continue? [Y/n]`的内容，系安装.net core依赖所致，输入Y回车或直接回车继续安装即可  
安装完成后，屏幕会自动跳转至已经开启的Screen界面，即屏幕仅显示类似`root@abc:~/ASF#`的内容，复制或输入下列两条指令：  
`chmod +x ArchiSteamFarm`  
`./ArchiSteamFarm`  
之后回车，输入手机令牌，即可开始挂卡！

常见问题
----
Q：出现`wget: command not found`报错  
A：系统过于精简，未安装wget命令，使用`sudo apt-get install wget`安装即可。

Q：出现`sudo：command not found`报错  
A：系统极为精简，未安装sudo命令，使用`apt-get install sudo`安装即可。

Q：无法进入ASF挂卡界面，出现`Couldn't find a valid ICU package`提示  
A：在Ubuntu较旧版本（12.04、14.04）可能会出现，系未安装ICU Package所致，使用`sudo apt-get install libicu-dev`安装即可。

Q：ASF提示无法读取徽章？  
A：系无法进入steamcommunity所致，可使用zyfworks大佬的小工具 `https://github.com/zyfworks/AnotherSteamCommunityFix` 以解决这一问题。

Q：我还有其它问题……  
A：欢迎留言，虽然我不一定能处理好……

Q：重新运行screen时依旧显示乱码  
A：因为编码问题所致，使用`screen -U -r [会话代码]`命令即可。

相关说明
--
* 本人非科班出身，脚本内容基本上现学现卖，因此很有可能存在很多疏漏，敬请谅解，也欢迎各路大佬拍砖。  
* 本脚本的服务对象是没有太多ASF经验或者只是单纯挂卡而无其他要求的萌新，对ASF已经很熟悉很了解的大佬应该也不需要我的这个脚本，对吧？（奸笑
* 使用V3.2.0.2的原因是它是目前为止最为稳定的一个版本，往往脚本更新速度赶不上ASF的发布速度，为了避免出现意想不到的情况，暂且使用这个版本了
* 晚上写的时候尝试了很多screen命令下直接执行创建新窗口+赋权+运行程序的方式，然而学艺不精，还是没搞成功，因此最后两句只能自己复制运行了……
* AFU的意思是ASF For Ubuntu，念起来还蛮好玩的……
