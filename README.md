Q1)Fibbonacci series
output : first 10 fibonacci numbers
0 1 1 2 3 5 8 13 21 34


[2021ict30@fedora ~]$ touch fib.sh
[2021ict30@fedora ~]$ vi fib.sh


echo "First fibonacci numbers"
read num
a=0
b=1

for((i=0;i<num; i++)); do
 echo -n "$a "
 fn=$((a+b))
 a=$b
 b=$fn
done

[2021ict30@fedora ~]$ chmod 777 fib.sh

[2021ict30@fedora ~]$ ./fib.sh
First fibonacci numbers
10
0 1 1 2 3 5 8 13 21 34 

[2021ict30@fedora ~]$ ./fib.sh
First fibonacci numbers
5
0 1 1 2 3 

----------------------------------------------------------------------------------------------
Q2)Factorial
output: factorial of 5 is :120 

[2021ict30@fedora ~]$ touch fib.sh
[2021ict30@fedora ~]$ vi fib.sh


echo "Enter a number: "
read n

fact=1
i=1
while [ $i -le $n ]; do
 fact=$((fact * i))
 i=$((i + 1))
done

echo "Factorial of $n is $fact"

[2021ict30@fedora ~]$ chmod 777 fib.sh
[2021ict30@fedora ~]$ ./fib.sh
Enter a number:
5
Factorial of 5 is 120

[2021ict30@fedora ~]$ ./facto.sh
Enter a number:
4
Factorial of 4 is 24


----------------------------------------------------------------------------------------------
Q3) Multiples of 3 between 1 and 50


[2021ict30@fedora ~]$ touch mul.sh
[2021ict30@fedora ~]$ vi mul.sh


 echo "Multiplication table"
 read n
for((i=n; i<50; i+=n)); do
 echo -n "$i "
 done
 
[2021ict30@fedora ~]$ chmod 777 mul.sh
[2021ict30@fedora ~]$ ./mul.sh

Multiplication table
5
5 10 15 20 25 30 35 40 45 

[2021ict30@fedora ~]$ ./mul.sh
Multiplication table
6
6 12 18 24 30 36 42 48

[2021ict30@fedora ~]$ ./mul.sh
Multiplication table
3
3 6 9 12 15 18 21 24 27 30 33 36 39 42 45 48 


