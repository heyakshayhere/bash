#!/bin/bash

# #printing the statement
# echo Hello world ! 
# echo "Hello world !"

# # -e flag "enables interpretation of backslash escapes" 
# echo -e "Hello world \n"

# #arithmatic operations 
# #####BEWARE putting spaces cause an error#####

# a=5
# b=4
# c=6

# echo "addition is $((a+b+5))"
# echo "substraction is $((a-b-5))"
# echo "multiplication is $((a*b*5))"
# echo "division is $((a/b/5))"
# echo exponent is $((a**2))

# #increment
# a=5
# echo $((++a))  # first add then print ++ means add 1
# a=5
# echo $((a++))  # first print then add 
# echo $a

# #decrement 
# a=5
# echo $((--a))  # first add then print -- means substract 1
# a=5
# echo $((a--))  # first print then add
# echo $a

# a=3
# echo $((a*=3)) # a = a * 3
# a=3
# echo $((a/=3)) # a = a / 3
# a=3
# echo $((a+=3)) # a = a + 3
# a=3
# echo $((a-=3)) # a = a - 3


# echo $((1/4))   #this prints 0

# g=$(echo 1/4 | bc -l)   #this prints floating point numbers

# echo $g

# # programs follow the convention of exiting with 0 as OK
# # 0 -> True and 1 ->False
# # expressions
# [[ "cat" == "cat" ]]
# echo $?

# [[ "dog" == "cat" ]]
# echo $?

# #if else loop
# a=3

# if [ $a -gt 5 ]; then
#     echo $a is greater than 5
# elif [ $a -ge 5  ] ; then
#     echo $a is equal to 5
# else 
#     echo $a is less than 5
# fi

# #for loop with if..elif..else
# for x in {1..10}    #both are included 1 and 10 #{start..stop..step}
# do
#     if [ $x -gt 5 ] 
#     then
#         echo $x is greater than 5
#     elif [ $x -ge 5  ] ; then
#         echo $x is equal to 5
#     else 
#         echo $x is less than 5
#     fi
# done

# #while loop 
# x=1
# counter=0

# while [ $counter -le 5 ]    
# do
#     if [ $x -gt 5 ] 
#     then
#         echo $x is greater than 5
#     elif [ $x -ge 5  ] ; then
#         echo $x is equal to 5
#     else 
#         echo $x is less than 5
#     fi
#     ((counter+=1))
# done

# #pattern printing

# rows=4
# for((i=1; i<=rows; i++))
# do
#   for((j=1; j<=i; j++))
#   do
#     echo -n "* "
#   done
#   echo
# done








