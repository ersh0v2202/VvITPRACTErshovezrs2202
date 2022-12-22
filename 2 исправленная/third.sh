read filename
ls > $filename.txt
man -k . | sed -n /'(2)'/p >> $filename.txt
man grep | grep -o grep | wc -l >> $filename.txt
ps -e -U root | sed -n '4,$p' | wc -l >> $filename.txt