retry="y"

while [ $retry = "y" ]
do
	echo_out=1
	
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
		if [ $n2 = 0 ]
		then
			echo "Can't divide by zero!"
			echo_out=0
		else
			ans=$((n1/n2))
		fi
	fi
	
	if [ $echo_out = 1 ]
	then
		echo "$n1 $op $n2 = $ans"
	fi
	
	echo "Retry? (y/n)"
	read retry
done
