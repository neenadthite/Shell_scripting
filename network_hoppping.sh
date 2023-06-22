IP="8.8.8.8" # Replace with the IP address you want to ping
COUNT=2 # Number of ping attempts
flag=0

while true 
do
	if ping -c $COUNT -I enp2s0 $IP > /dev/null 2>&1; then 
  		echo "Ping to $IP was successful."
			if [ "$flag" == "1" ]
			then
				echo "flag is true"
				#Initialize the secondary interface ex. ifconfig wlan0 up
				#sleep 2
			else
				echo "flag is false"	
			fi
	else 
  		echo "Ping to $IP failed."
		flag=1
		#Stop the secondary interface ex. ifconfig wlan0 down
	fi
	sleep 2
done
