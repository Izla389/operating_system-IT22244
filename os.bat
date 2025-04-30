::sum of prime numbers between 1 to 100

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

------------------------------------------------------------------
::print pattern

[2021ict30@fedora ~]$ touch p2.sh
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

-------------------------------------------------------------------
::Fibonacci series

0 1 1 2 3 5 8 13 21 34
Sum of the first 10 fibbonacci numbers is: 88

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

---------------------------------------------------------------------------------
::palindrome string
 
{ ~ }  » touch palin.sh                                                                         ~
{ ~ }  » vi palin.sh 

::code

read -p "Enter a string: " str
rev=0
n=$str
while [ $n -gt 0 ]; do
 digit=$((n % 10))
 rev=$((rev * 10 + digit))
 n=$((n / 10))
done
if [ $str -eq $rev ]; then
 echo "$str is a Palindrome"
else
 echo "$str is NOT a Palindrome"
fi

::output

{ ~ }  » ./palin.sh                                                                             ~
Enter a string:
madam
"madam" is a palindrome.
{ ~ }  » ./palin.sh                                                                             ~
Enter a string:
school
"school" is not a palindrome.

------------------------------------------------------------------------------
 
 
 
 
 
 
 
 
 
 
 