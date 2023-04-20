

#Initializing an empty array
numbers=()

#Filling the array with random numbers
for ((i=0; i<10; i++));do
numbers[$i]=$((RANDOM%999+100))

done

echo "Generated array: ${numbers[@]}"

largest=${numbers[1]}
second_largest=${numbers[1]}
smallest=${numbers[1]}
second_smallest=${numbers[1]}

#2nd largest number
for number in "${numbers[@]}"; do
if [[ "$number" -gt "$largest" ]];
then
	second_largest="$largest"
	largest="$number"
elif [[ "$number" -gt "$second_largest" && "$number" -ne "$largest" ]]; then
	second_largest="$number"
fi

#2nd smallest number

if [[ "$number" -lt "$smallest" ]]; then
        second_smallest="$smallest"
        smallest="$number"
elif [[ "$number" -lt "$second_smallest" && "$number" -ne "$smallest" ]]; then
        second_smallest="$number"
fi
done
echo "Second largest number of the array is: $second_largest "
echo "Second smallest number of the array is: $second_smallest"
