delay=200
clear
echo Simple Autopost bot
min=$(($delay / 60))
files=(./lib/*)
a=${#files[@]}
RED='\033[0;31m'
RES=`tput sgr0`
until [ "$a" -eq 1 ]
do
files=(./lib/*) #creates an array of all the files within src/ */ 
filecount="${#files[@]}" #determines the length of the array 
echo "Files in folder:"${#files[@]}
randomid=$((RANDOM % filecount)) #uses $RANDOM to choose a random number between 0 and $filecount 
filetomove="${files[$randomid]}" #the random file wich we'll move 
mv "$filetomove" now/ #does
echo "Copied "$filetomove" To ./now"
telegram-send --config channel.conf --image ./now/*
echo $filetomove" Posted"
rm -r ./now/*.png
echo $filetomove" Deleted"
echo "Sleeping for" $min "min."
sleep $delay
a=${#files[@]}
if [ "${#files[@]}" -eq 1 ]
then
echo -e "${RED}No files left, sending notification${RES}"
telegram-send --config user.conf "No files left"
fi
done
echo -e "No files in lib, ${RED}exiting${RES}"
