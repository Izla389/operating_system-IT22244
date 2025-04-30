Q1) get the days based on the user input number
	output:-
		Enter the number 5
		friday
		
		Enter the number = -9
		Unrecognized number
		
[2021ict30@fedora ~]$ touch q4.sh
[2021ict30@fedora ~]$ vi q4.sh

::code
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

::output
[2021ict30@fedora ~]$ ./q4.sh
Enter the numnber
5
Friday
[2021ict30@fedora ~]$ ./q4.sh
Enter the numnber
10
unregognized number

------------------------------------------------------------------------------------------------------
	
Q2) verify whether your user name is correct or not.
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

::code	

--
valid_username="2021ict30"

read -p "enter user name: " entered _username

if [ "$entered_username" == "$valid_username"]; then
        echo "Username is correct"
else
        echo "User name is incorrect"
fi

::output
{ ~ }  » chmod 777 q5.sh                                                                        ~
{ ~ }  » ./q5.sh                                                                                ~
Enter user name:
2021ict30
Username is correct
{ ~ }  » ./q5.sh                                                                                ~
Enter user name:
mohan
Username is incorrect

-----------------------------------------------------------------------------------------------
		
Q3) output:- Enter two numbers:
			 7 5
			 7 is greater than 5
			 
	output:- enter two numbers:
			 1 9 
			 1 is less than 9
			 
[2021ict30@fedora ~]$ vi q6.sh

::code
echo "Entered two numbers"
read num1 num2

if [ "$num1" -gt "$num2" ]; then
echo "$num1 is greater thn $num2"
elif [ "$num1" -lt "$num2" ]; then
echo "$num1 is less thsn $num2"
else
echo "$num1 is equsal to $num2"
fi


::output
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
 
Q4) create simple calculator using "expr"  command same as the question 3

[2021ict30@fedora ~]$ touch q3_expr.sh
[2021ict30@fedora ~]$ vi q3_expr.sh

::code
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

::output
[2021ict30@fedora ~]$ ./q3_expr.sh
Enter the first number:
20
Enter the second number:
12
Summation: 32
Substraction: 8
Division: 1
Multiplication: 240