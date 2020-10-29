function start { 
    echo "Enter the number of files in the current directory:"
    read guess_amount
    if ! [[ $guess_amount =~ $re ]]
    then
	echo "Not a number!"
	start
    fi
}

function getAmount {
    files=$(ls -l |wc -l)-1
    echo $files
}

real_amount=$(getAmount)
re='^[0-9]+$'

start

while [[ $guess_amount -ne $real_amount ]]
do
	if [[ $guess_amount -lt $real_amount ]]
	then
		echo "Too low"
	else
		echo "Too high"
	fi
        start
done

echo "It's correct answer"
