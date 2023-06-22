flag=0
while true
do
if [ "$flag" == "0" ]
then
	echo "flag is false"
	#Start Task
	flag=1
else
	echo "flag is true"
	#End Task
	flag=0
fi
sleep 2
done
