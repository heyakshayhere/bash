#!/bin/bash

#printing the statement
echo Hello world ! 
echo "Hello world !"

# -e flag "enables interpretation of backslash escapes" 
echo -e "Hello world \n"

#arithmatic operations 
#####BEWARE putting spaces cause an error#####

a=5
b=4
c=6

echo "addition is $((a+b+5))"
echo "substraction is $((a-b-5))"
echo "multiplication is $((a*b*5))"
echo "division is $((a/b/5))"
echo exponent is $((a**2))

#increment
a=5
echo $((++a))  # first add then print ++ means add 1
a=5
echo $((a++))  # first print then add 
echo $a

#decrement 
a=5
echo $((--a))  # first add then print -- means substract 1
a=5
echo $((a--))  # first print then add
echo $a

a=3
echo $((a*=3)) # a = a * 3
a=3
echo $((a/=3)) # a = a / 3
a=3
echo $((a+=3)) # a = a + 3
a=3
echo $((a-=3)) # a = a - 3


echo $((1/4))   #this prints 0

g=$(echo 1/4 | bc -l)   #this prints floating point numbers

echo $g

# programs follow the convention of exiting with 0 as OK
# 0 -> True and 1 ->False
# expressions
[[ "cat" == "cat" ]]
echo $?

[[ "dog" == "cat" ]]
echo $?

#if else loop
a=3

if [ $a -gt 5 ]; then
    echo $a is greater than 5
elif [ $a -ge 5  ] ; then
    echo $a is equal to 5
else 
    echo $a is less than 5
fi

#for loop with if..elif..else
for x in {1..10}    #both are included 1 and 10 #{start..stop..step}
do
    if [ $x -gt 5 ] 
    then
        echo $x is greater than 5
    elif [ $x -ge 5  ] ; then
        echo $x is equal to 5
    else 
        echo $x is less than 5
    fi
done

#while loop 
x=1
counter=0

while [ $counter -le 5 ]    
do
    if [ $x -gt 5 ] 
    then
        echo $x is greater than 5
    elif [ $x -ge 5  ] ; then
        echo $x is equal to 5
    else 
        echo $x is less than 5
    fi
    ((counter+=1))
done

#pattern printing

rows=4
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done

#for loop to the array
#it is necessary to not make it as a string because it will print the variables in a line 
container=(apple orange banana)

for i in ${container[@]}
    do
        echo $i 
    done

#for loop to the array
declare -a mahabharata

mahabharata[0]="Krishna"
mahabharata[1]="Yudhishthira"
mahabharata[2]="Bheema"
mahabharata[3]="Arjuna"
mahabharata[4]="Draupadi"
mahabharata[5]="Duryodhana"

length=${#mahabharata[@]}

echo "Bash array '\${mahabharata}' has total ${length} element(s) (length)"

#to get the length of the elements we use hash
container=(apple orange banana)

length=${#container[@]}

echo $length

#for loop to the array
declare -a mahabharata

mahabharata[0]="Krishna"
mahabharata[1]="Yudhishthira"
mahabharata[2]="Bheema"
mahabharata[3]="Arjuna"
mahabharata[4]="Draupadi"
mahabharata[5]="Duryodhana"
#if we replace the indices with other numbers oreder changes

for i in ${mahabharata[@]}
do
    echo $i
done

#for loop to the array
declare -a mahabharata

mahabharata[0]="Krishna"
mahabharata[1]="Yudhishthira"
mahabharata[2]="Bheema"
mahabharata[3]="Arjuna"
mahabharata[4]="Draupadi"
mahabharata[5]="Duryodhana"
#if we replace the indices with other numbers oreder changes

for i in ${!mahabharata[@]}
do
    echo "$i : ${mahabharata[$i]}"
done

#this is still same
for i,j in ${!mahabharata[@]}
do
    echo "$i : $j"
done

#case is used to add multiple conditions and in the end case is written as backwards
a="krishna"
case $a in
    krishna)echo "found krishna";;
    Bheema|Arjuna|Draupadi) echo "found pandavs";;
    Duryodhana|Yudhishthira) echo "found kauravas";;
    *)echo "not found";;
esac

#making functions 
function greet {
    echo "hey its me"
}

#we call the function without $ and echo
greet

#there is a little trick how to assign the data to the functions
function greet_1 {
    echo -e "hey $1 its me.\nGood Morning !\ni got your number $2\nThank you !!"
}

greet_1 Akshay 1234567890
echo
greet_1 Anni 0987654321

# to take the number of arguments
function numbers {
    for f in $@
    do
        echo $f
    done
}

# to take the number of arguments
function numbers_index {
    i=1 #index starts from 1
    for f in $@
    do
        echo $i:$f
        ((i+=1))
    done
}

numbers 1 2 3 4 5 6 

numbers_index 1 2 3 4 5 6 

#select in bash to create the options
select option in start stop quit
do
    case $option in 
    start) echo "program started";;
    stop) echo "program stopped";;
    quit) break 
    esac
done













