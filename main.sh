retry="y"

while [ $retry = "y" ]
do
	echo "Input first number: "
	read n1
	
	echo "Input operator: "
	read op
	
	echo "Input second number: "
	read n2
	
	ans=0
	if [ $op = "+" ]
	then
		ans=$((n1+n2))
	fi
	if  [ $op = "-" ]
	then
		ans=$((n1-n2))
	fi
	if [ "$op" = "*" ]
	then
		ans=$((n1*n2))
	fi
	if [ $op = "/" ]
	then
		ans=$((n1/n2))
	fi
	
	echo "$n1 $op $n2 = $ans"
	
	
	echo "Retry? (y/n)"
	read retry
done
