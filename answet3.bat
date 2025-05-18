touch q3.sh

vi q3.sh

::code

read -p "Enter String_1: " str1
read -p "Enter String_2: " str2

len1=${#str1}
len2=${#str2}

if [ $len1 -gt $len2 ]; then
    echo "$str1 is larger than $str2"
elif [ $len2 -gt $len1 ]; then
    echo "$str2 is larger than $str1"
else
    echo "$str1 and $str2 are equal in length"
fi


::output
chmod 777 q3.sh

./q3.sh
Enter String_1: apple
Enter String_2: banana
banana is larger than apple



