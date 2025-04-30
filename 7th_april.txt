Q1) write a code for small astrology based on your life path number for 
that get Date of birth from user then calculate life path number.(use switch case)
Example:-
	Date 23
	calculate for life path number:
					a=date%10	3
					b=date/10	2
					c=a+b		5
	if life path number:
					1:Lucky
					2:carefully do your work
					3:Stronger
					4:happy
					5:can get help
					6:doubt
					7:sad
					8:Like
					9:courage
					
[2021ict30@fedora ~]$ touch qn.sh

[2021ict30@fedora ~]$ vi qn.sh

::code

echo "Enter a birth number: "
read  date
 a=$((date % 10))
 b=$((date / 10))
 c=$(($a +$b))

 case "$c" in
    1) echo "Lucky" ;;
    2) echo "Carefully do your work" ;;
    3) echo "Stronger" ;;
    4) echo "Happy" ;;
    5) echo "Can get help" ;;
    6) echo "Doubt" ;;
    7) echo "Sad" ;;
    8) echo "Like" ;;
    9) echo "Courage" ;;
    *) echo "Invalid life path number" ;;
  esac


[2021ict30@fedora ~]$ chmod 777 qn.sh

::output

[2021ict30@fedora ~]$ ./qn.sh
Enter a birth number:
12
Stronger
[2021ict30@fedora ~]$ ./qn.sh
Enter a birth number:
8
Like

---------------------------------------------------------------------------------------
Q2)Give list of numbers then calculate the summation and multiplication using for loop.
Example:
	1 2 3 4 5
		summation: 15
		Multiplication = 120
		

[2021ict30@fedora ~]$ touch qn2.sh
[2021ict30@fedora ~]$ vi qn2.sh

::code	

read -p "Enter numbers: " -a numbers

sum=0
mul=1

for num in "${numbers[@]}"; do
  sum=$((sum + num))
  mul=$((mul * num))
done

echo "Summation: $sum"
echo "Multiplication: $mul"

[2021ict30@fedora ~]$ chmod 777 qn2.sh

::output

[2021ict30@fedora ~]$ ./qn2.sh
Enter numbers: 1 2 3 4 5
Summation: 15
Multiplication: 120

[2021ict30@fedora ~]$ ./qn2.sh
Enter numbers: 5 6 4 5 8
Summation: 28
Multiplication: 4800


-------------------------------------------------------
Q3) print the integer from 1 to 10 using while loop


[2021ict30@fedora ~]$ touch qn3.sh
[2021ict30@fedora ~]$ vi qn3.sh

::code

let i=1
while  [ $i -le 10 ]
do
	echo $i 
	i=$(($i+1))
done


::output

[2021ict30@fedora ~]$ chmod 777 qn3.sh

[2021ict30@fedora ~]$ ./qn3.sh
1
2
3
4
5
6
7
8
9
10

----------------------------------------------------
Q4) print below pattern using nested loop 
columns =7, rows=7
	i).			*
				* *
				* * *
				* * * *
				* * * * *
				* * * * * *
				* * * * * * *
				
	ii).  * * * * * * *
		  * * * * * * 
		  * * * * * 
		  * * * *
		  * * * 
		  * * 
		  * 
		  
[2021ict30@fedora ~]$ touch qn4.sh
[2021ict30@fedora ~]$ vi qn4.sh

::code

echo "Enter the number: "
read num

for((i=1; i<=num; i++))
do
for((j=0; j<i; j++))
do 
echo -n "*"
done 
echo ""
done

echo ""


for((i=1; i<=num; i++))
do
for((j=num; j>i; j--))
do 
echo -n "*"
done 
echo ""
done	

[2021ict30@fedora ~]$ vi qn4.sh

::output

[2021ict30@fedora ~]$ ./qn4.sh
Enter the number:
7
*
**
***
****
*****
******
*******

******
*****
****
***
**
*
			



		



