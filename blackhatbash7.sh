#!/bin/bash
grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

 ps | grep TTY

  ps | grep -i tty

grep -v "35.237.4.214" log.txt

awk '{print $1}' log.txt

awk '{print $1,$2,$3}' log.txt

awk '{print $2}' log.txt

awk '{print $3}' log.txt

awk '{print $1,$NF}' log.txt

sed 's/Mozilla/Godzilla/g' log.txt
grep "zilla" log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep "zilla" log.txt

sed -i '1d' newlog.txt
grep "157.48.153.185" newlog.txt
grep "157.48.153.185" log.txt
git diff newlog.txt
git diff log.txt
sed -i '1d' log.txt
sed -i '1d' newlog.txt
sed 's/ //g' log.txt
sed 's/ //g' log.txt > newlog1.txt
sed '8,10d' newlog1.txt

sleep 100 &
ps -ef | grep sleep
jobs
sleep 300 &
jobs
fg %1
bg %1


nohup ./exercise_solution.sh hola nostarch.com &
ps aux | grep "28013"