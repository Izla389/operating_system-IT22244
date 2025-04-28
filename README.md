Q1) get the celander and date

[2021ict30@fedora ~]$ cal
     April 2025
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30



[2021ict30@fedora ~]$ date +%d
04

------------------------------------------------------------------------------------------------------

Q2)get the student name and marks for the 3 subjects from 
user then calculate the total and average
	output:-
		Enter the name: Isuru
		Enter the marks for subject1 : 80
		Enter the marks for subject2 : 90
		Enter the marks for subject3 : 70
		Total
	

[2021ict30@fedora ~]$ touch q2.sh
[2021ict30@fedora ~]$ vi q2.sh

echo " enter the name: "
read name
echo "Enter the mark for subject1: "
read sub1
echo "Enter the mark for subject2: "
read sub2
echo "Enter the mark for subject3: "
read sub3
sum=$(($sub1+$sub2+$sub3))
avg=$(($sum/3))
echo "Total = " $sum
echo "Average = "$avg

[2021ict30@fedora ~]$ chmod 777 q2.sh

[2021ict30@fedora ~]$ ./q2.sh
 enter the name:
izla
Enter the mark for subject1:
4
Enter the mark for subject2:
6
Enter the mark for subject3:
8
Total =  18
Average = 6

---------------------------------------------------------------------------------	
		
Q3) create calculator with arithmetic operators
	output:-
		Enter the first number: 4
		Enter the second number: 2
		summation:6
		substraction:2
		Division:2
		Multiplication: 8
		
	[2021ict30@fedora ~]$ touch q3.sh
	[2021ict30@fedora ~]$ vi q3.sh
	
echo  "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
sum=$(($num1+num2))
sub=$(($num1-$num2))
div=$(($num1/num2))
mul=$((num1*num2))
echo "Summation: " $sum
echo "Substraction: " $sub
echo "Division: " $div
echo "Multiplication: " $mul

[2021ict30@fedora ~]$ chmod 777 q3.sh

[2021ict30@fedora ~]$ ./q3.sh
Enter the first number:
20
Enter the second number:
4
Summation:  24
Substraction:  16
Division:  5
Multiplication:  80

----------------------------------------------------------------------------------------
		
Q4) get the days based on the user input number
	output:-
		Enter the number 5
		friday
		
		Enter the number = -9
		Unrecognized number
		
[2021ict30@fedora ~]$ touch q4.sh
[2021ict30@fedora ~]$ vi q4.sh

echo "Enter the numnber"
read num

case $num in
1) echo "Monday" ;;
2) echo "Tuesday" ;;
3) echo "Wednesday" ;;
4) echo "Thursday" ;;
5) echo "Friday" ;;
6) echo "Saturday" ;;
7) echo "Friday" ;;
*)echo "unregognized number";;
esac


[2021ict30@fedora ~]$ chmod 777 q4.sh

[2021ict30@fedora ~]$ ./q4.sh
Enter the numnber
5
Friday
[2021ict30@fedora ~]$ ./q4.sh
Enter the numnber
10
unregognized number

------------------------------------------------------------------------------------------------------
	
Q5) verify whether your user name is correct or not.
(use your name as a input..........)
	output :-
		Enter username:
		Mino
		Username is correct 
		Enter username:
		pasi
		usrename is incorrect
		
[2021ict30@fedora ~]$ touch q5.sh
[2021ict30@fedora ~]$ vi q5.sh

		
valid_username="2021ict30"

read -p "enter user name: " entered _username

if [ "$entered_username" == "$valid_username"]; then
        echo "Username is correct"
else
        echo "User name is incorrect"
fi

-----------------------------------------------------------------------------------------------
		
Q6) output:- Enter two numbers:
			 7 5
			 7 is greater than 5
			 
	output:- enter two numbers:
			 1 9 
			 1 is less than 9
			 
[2021ict30@fedora ~]$ vi q6.sh


echo "Entered two numbers"
read num1 num2

if [ "$num1" -gt "$num2" ]; then
echo "$num1 is greater thn $num2"
elif [ "$num1" -lt "$num2" ]; then
echo "$num1 is less thsn $num2"
else
echo "$num1 is equsal to $num2"
fi

[2021ict30@fedora ~]$ chmod 777 q6.sh
[2021ict30@fedora ~]$ ./q6.sh
Entered two numbers
8 4
8 is greater thn 4
[2021ict30@fedora ~]$ ./q6.sh
Entered two numbers
3 8
3 is less thsn 8

-----------------------------------------------------------------------------------------------

		 
Q7) create simple calculator using "expr"  command same as the question 3

[2021ict30@fedora ~]$ touch q3_expr.sh
[2021ict30@fedora ~]$ vi q3_expr.sh

echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

sum=$(expr $num1 + $num2)
sub=$(expr $num1 - $num2)
div=$(expr $num1 / $num2)
mul=$(expr $num1 \* $num2)

echo "Summation: $sum"
echo "Substraction: $sub"
echo "Division: $div"
echo "Multiplication: $mul"

[2021ict30@fedora ~]$ chmod 777 q3_expr.sh

[2021ict30@fedora ~]$ ./q3_expr.sh
Enter the first number:
20
Enter the second number:
12
Summation: 32
Substraction: 8
Division: 1
Multiplication: 240

