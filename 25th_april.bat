
Q1) print multiplication table using for loop 
1 x 2 = 2
2 x 2 = 4
......

[2021ict30@fedora ~]$ touch multi.sh
[2021ict30@fedora ~]$ vi multi.sh

::code

echo "Multiplication table"
 read n
for((i=1; i<=10; i+=1)); do
 mul=$(($i*$n))
 echo "$i x $n = $mul"
done

::output

[2021ict30@fedora ~]$ chmod 777 multi.sh
[2021ict30@fedora ~]$ ./multi.sh

[2021ict30@fedora ~]$ ./multi.sh
Multiplication table
2
1 x 2 = 2
2 x 2 = 4
3 x 2 = 6
4 x 2 = 8
5 x 2 = 10
6 x 2 = 12
7 x 2 = 14
8 x 2 = 16
9 x 2 = 18
10 x 2 = 20

----------------------------------------------------------------------------------
Q2)

        *
      * * *
    * * * * *
  * * * * * * *
* * * * * * * * *
  * * * * * * *
    * * * * *
      * * *
        *
	  

::code

n=5
echo -e "\nPattern 5:"
for ((i=1; i<=n; i++)); do
    for ((j=i; j<n; j++)); do
        echo -n " "
    done
    for ((k=1; k<=((2*i-1)); k++)); do
        echo -n "*"
    done
    echo
done
 

for ((i=n-1; i>=1; i--)); do
    for ((j=n; j>i; j--)); do
        echo -n " "
    done
    for ((k=1; k<=((2*i-1)); k++)); do
        echo -n "*"
    done
    echo
done

::output

[2021ict30@fedora ~]$ ./pat.sh

Pattern 5:
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

--------------------------------------------------
Q3) print the following pattern

*****
*   *
*   *
*   *
*****

2021ict30@fedora ~]$ touch p2.sh
[2021ict30@fedora ~]$ vi p2.sh

::code

for i in 1 2 3 4 5
do
    if [ "$i" -eq 1 ] || [ "$i" -eq 5 ]; then
        echo "*****"
    else
        echo "*   *"
    fi
done

::output

[2021ict30@fedora ~]$ chmod 777 p2.sh
[2021ict30@fedora ~]$ ./p2.sh
*****
*   *
*   *
*   *
*****

-----------------------------------------------------------------------------------------------------------------
Q4) Fibonacci series:
0 1 1 2 3 5 8 13 21 34
sum of the first 10 fibonacci numbers is: 88

[2021ict30@fedora ~]$ touch fbsum.sh
[2021ict30@fedora ~]$ vi fbsum.sh

::code

a=0
b=1
sum=0
count=0

while [ $count -lt 10 ]
do
    echo -n "$a "
    sum=`expr $sum + $a`
    fn=`expr $a + $b`
    a=$b
    b=$fn
    count=`expr $count + 1`
done

echo
echo "Sum of the first 10 fibonacci numbers is: $sum"

::output
 
[2021ict30@fedora ~]$ chmod 777 fbsum.sh
[2021ict30@fedora ~]$ ./fbsum.sh
0 1 1 2 3 5 8 13 21 34
Sum of the first 10 fibonacci numbers is: 88


-------------------------------------------------------------------------------------------------------------------
Q5) sum of prime numbers between 1 and 100 is: 1060

[2021ict30@fedora ~]$ touch prmsum.sh
[2021ict30@fedora ~]$ vi prmsum.sh

::code

sum=0

is_prime() {
    n=$1
    if [ "$n" -lt 2 ]; then
        return 1
    fi
    i=2
    while [ "$i" -le `expr $n / 2` ]; do
        if [ `expr $n % $i` -eq 0 ]; then
            return 1
        fi
        i=`expr $i + 1`
    done
    return 0
}

for num in `seq 1 100`; do
    if is_prime $num; then
        sum=`expr $sum + $num`
    fi
done

echo "Sum of prime numbers between 1 to 100 is: $sum"

::output

[2021ict30@fedora ~]$ chmod 777 prmsum.sh
[2021ict30@fedora ~]$ ./prmsum.sh
Sum of prime numbers between 1 to 100 is: 1060

























