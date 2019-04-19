cat /etc/passwd | cut -d ":" -f 6 | while read -r line; 
do 
	
	if [ -f "$line/.bash_history" ] 
	then 
		echo "$line/.bash_history"; 
		cat  /dev/null >"$line/.bash_history"; 
	
	fi 
done 

find /var/log/ -type f 2>/dev/null | while read -r line; 
do 
	echo "$line";
	cat /dev/null >"$line";
done;

rm -rf /tmp/*
