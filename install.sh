echo Installing requirements
sudo apt install python3-pip --assume-yes
sudo pip3 install telegram-send
clear
echo Setting up
telegram-send --config channel.conf --configure-channel
clear
echo Setting up
telegram-send --config user.conf --configure
clear 
RED='\033[0;31m'
NC='\033[0m'
echo -e "You can enter a ${RED}delay${NC} between posts in the first line of bot.sh"
echo DONE
