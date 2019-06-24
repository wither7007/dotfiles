ps | sed 1d | while read line;
do
				echo "kill" $line 
done
