#! /bin/bash
#safe copy & move script
#user input and validation 
echo "Welcome to safe mv cp program"
if [[ -z "$1" ]];then
	echo "run the script in this format: ./safe_copy.sh --copy/mv/compress/dry-run source_path destination_path" 	
	exit 1
elif [[ ! -e "$2" ]];then
echo "source path doesnt exist"
exit 1 
elif [[ ! -w "$3" ]];then
echo "des path isnt writable"
exit 1
else echo "ok"
fi

#space check
#calculating the total size of source file:
total_size=$(du -h $2 | awk '{print $1}')
echo "The total size of soure path is: $total_size"
#calculating avialable space at destination file:
avail_space=$(df -h $3 | awk '{print $4}' | tail -n 1)
echo "The available space on des path is: $avail_space"

if 


read -p "Proceed with operation? (y/n): " ans
if [[ $ans == 'y' ]];then
echo "great, starting..."
if [[ $1 == "--copy" ]];then
cp "$2" "$3"
elif [[ $1 == "--move" ]];then
mv "$2" "$3"
echo "done, check destination path"
exit 1
fi
elif [[ $ans == 'n' ]];then
echo "ok, cancelling.."
else echo "invalid input"
fi

if [[ $1 == "--compress" ]];then
echo "alright"
else echo "bye"
fi


#compressing
