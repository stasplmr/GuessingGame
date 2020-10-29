function start {
	echo "Enter the number of files in the current directory:"
	read number
	files=$(ls -l |wc -l)
}
start
while [[ $number -ne $files ]]
do
	if [[ $number -lt $files ]]
	then
		echo "Too low"
	else
		echo "Too high"
	fi
	start
done
echo "It's correct answer"
