#bin/bash
#
# using https://opensource.com/article/18/5/you-dont-know-bash-intro-bash-arrays
# left off on "What else you got?" 

array1=("a" "b" "c" "d")

echo ${array1[2]}
# using $array1 would output only index 0

echo ${array1[@]}
# output all elements of the array

for i in ${array1[@]}; do 
	echo $i
done
# loops through the array where $i is the arrays elements

for i in ${!array1[@]}; do 
	echo ${array1[$i]}
done
# loops through the array where $i is the array index

newArray1=()
# declare a new empty array that can be populated

for i in ${array1[@]}; do 
	runtime=$(./output.sh --out $i) #hypothetical script that expects $i
	# output this iteration goes into $runtime
	newArray1+=( $runtime )
	# and is used to populate $newArray1
done
# untested


for i in ${array1[@]}; do 
	echo $i
done
# returns element (no bang)

for i in ${!array1[@]}; do 
	echo $i
done
#returns index number (yes bang)
