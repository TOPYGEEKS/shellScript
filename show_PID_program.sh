ps -o pid -e |grep -Ev "PID" >> index.text
filename='index.text'
echo Start
while read p; do 

ps -Flww -p $p  >> output.text 

done < $filename

