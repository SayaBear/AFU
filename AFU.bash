#!/bin/bash
echo "本脚本集成了来自STCN的minimax4233、wolaiwozhengfu的脚本内容并加以修改，向上述二位大佬表示感谢！"
echo "请确保填写的信息准确，填错了脚本不会有任何提示。";
echo "ASF安装完成后，运行方式是chmod +x ArchiSteamFarm，sudo ./ArchiSteamFarm";
echo "按Enter继续";
echo "输入你的帐号";
read Account
echo "输入你的密码";
read Code
sudo apt-get update
sudo apt-get install libicu-dev
sudo apt install unzip
sudo apt install screen
wget https://github.com/JustArchi/ArchiSteamFarm/releases/download/3.3.0.3/ASF-linux-x64.zip
unzip ASF-linux-x64.zip -d ASF/
echo -e "是否需要开启通过steam组输入指令功能？ \n1.开启 \n2.不开启"
read -r -p "请输入数字" GP
case $GP in
  1)echo "输入你的steam64位id"
    read ID
    echo "输入你的组id"
    read Group
    cd ASF/config
    touch bot.json
    echo -e "{
    "\"Enabled\"": true,
    "\"SteamLogin\"": "\"$Account\"",
    "\"SteamPassword\"": "\"$Code\"",
    "\"IsBotAccount\"": false,
    "\"s_SteamMasterClanID\"": "\"$Group\"",
    "\"SteamUserPermissions\"": {
      "\"$ID\"": 3
    }
  }" > /root/ASF/config/bot.json
  ;;
  2)cd ASF/config
    touch bot.json
    echo -e "{
    "\"Enabled\"": true,
    "\"SteamLogin\"": "\"$Account\"",
    "\"SteamPassword\"": "\"$Code\"",
    "\"IsBotAccount\"": false
  }" > /root/ASF/config/bot.json
  ;;
esac
echo -e "{
  "\"CurrentCulture\"": "\"zh-CN\"",
  "\"UpdateChannel\"": 0,
}" > /root/ASF/config/ASF.json
cd /root/ASF
screen -U -S ASF
