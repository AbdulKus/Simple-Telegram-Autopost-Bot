echo Installing requirements
apt install python3 --assume-yes
apt install python --assume-yes
apt install python3-pip --assume-yes
pip3 install telegram-send
clear
echo Setting up
telegram-send --config channel.conf --configure-channel
clear
echo Setting up
telegram-send --config user.conf --configure
clear 
mkdir lib
mkdir now
RED='\033[0;31m'
NC='\033[0m'
echo -e "You can enter a ${RED}delay${NC} between posts in the first line of bot.sh"
echo DONE
