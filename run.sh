sudo su
pip install nb-cli bs4 imageio lxml setuptools psutil socketio aiohttp
pip install nonebot-adapter-cqhttp
sudo chmod 0777 /home
cd /home
git clone https://github.com/yi985432/CQBot
cd CQBot
unzip cq-bot.zip 
unzip Plugins.zip -d cq-bot/mybot/mybot/plugins
unzip Plugins2.zip -d cq-bot/mybot/mybot/plugins
chmod -Rf 0777 cq-bot/mybot/mybot/plugins/
cd cq-bot
chmod 0755 ./go-cqhttp_amd64
cd /home/CQBot/cq-bot
sudo ./go-cqhttp_amd64 &
cd mybot
python3 bot.py &
sleep 20700
sudo kill -2 $(pgrep go-cqhttp_amd64)
sudo kill -2 $(pgrep python3)
