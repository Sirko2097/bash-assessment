amount_of_files=$(ls -1A | wc -l)

function check_variant {
	if [[ $1 -lt $amount_of_files ]]
	then
		echo "Too low. Try again"
	else
		echo "Too high. Try again"
	fi
}

while :
do
	echo "Gues, how many files in the directory? Input your variant: "
	read user_variant

	if [[ !($user_variant =~ ^[0-9]*$) ]]
	then
		echo "It is not a number. Try again"
		continue
	fi

	if [[ $user_variant -eq $amount_of_files ]]
	then
		echo "Yes. There are $user_variant files"
		break
	fi

	check_variant $user_variant
done
