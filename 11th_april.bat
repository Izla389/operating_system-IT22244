::patterns

1
2 2
3 3 3
4 4 4 4
5 5 5 5 5
6 6 6 6 6 6 
7 7 7 7 7 7 7

[2021ict30@fedora ~]$ touch ptrnnum.sh
[2021ict30@fedora ~]$ vi ptrnnum.sh

::code

rows=7

echo -e "\nPattern 3:"
for ((i=1; i<=rows; i++)); do
    for ((j=1; j<=i; j++)); do
        echo -n "$i "
    done
    echo
done


::ooutput

[2021ict30@fedora ~]$ chmod 777 ptrnnum.sh

[2021ict30@fedora ~]$ ./ptrnnum.sh
1
2 2
3 3 3
4 4 4 4
5 5 5 5 5
6 6 6 6 6 6
7 7 7 7 7 7 7

--------------------------------------------------------------
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
1 2 3 4 5 6 
1 2 3 4 5 6 7


[2021ict30@fedora ~]$ touch num2.sh
[2021ict30@fedora ~]$ vi num2.sh

::code
row=7
echo -e "\nPattern 4:"
for ((i=1; i<=rows; i++)); do
    for ((j=1; j<=i; j++)); do
        echo -n "$j "
    done
    echo
done

::output
[2021ict30@fedora ~]$ chmod 777 num2.sh
[2021ict30@fedora ~]$ ./num2.sh
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
1 2 3 4 5 6
1 2 3 4 5 6 7

-----------------------------------------------------------------

      *
     * *
    * * *
   * * * *
  * * * * *
 * * * * * *
* * * * * * *

[2021ict30@fedora ~]$ touch cn.sh
[2021ict30@fedora ~]$ vi cn.sh

::code
rows=7

echo -e "\nPattern 5:"
for ((i=1; i<=rows; i++)); do
    for ((j=i; j<rows; j++)); do
        echo -n " "
    done
    for ((k=1; k<=i; k++)); do
        echo -n "* "
    done
    echo
done

[2021ict30@fedora ~]$ chmod 777 cn.sh
[2021ict30@fedora ~]$ ./cn.sh

::output
[2021ict30@fedora ~]$ ./cn.sh

Pattern 5:
      *
     * *
    * * *
   * * * *
  * * * * *
 * * * * * *
* * * * * * *

