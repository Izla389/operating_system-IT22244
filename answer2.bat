touch q2.csv

vi q2.csv

chmod 777 q2.csv

more q2.csv

Name,Age,Department,GPA
John,22,Physicalscience,3.5
Priya,21,Environmentscience,3.7
Meera,22,IT,3.1
Carol,23,Physicalscience,3.99
David,21,IT,3.98
Riya,22,Physicalscience,3.6
Rahman,21,Environmentscience,3.7
Rose,22,IT,2
Anna,23,Physicalscience,3.78
Riyas,21,IT,3.76

::filter the rows where the GPA greater than 3.5
echo "Students with GPA > 3.5:"
awk -F ',' '$4>3.5' q2.csv

[a2021ict30@fedora ~]$ awk -F ',' '$4>3.5' q2.csv
Name,Age,Department,GPA
Priya,21,Environmentscience,3.7
Carol,23,Physicalscience,3.99
David,21,IT,3.98
Riya,22,Physicalscience,3.6
Rahman,21,Environmentscience,3.7
Anna,23,Physicalscience,3.78
Riyas,21,IT,3.76

:: Calculate the average GPA of all Students
total=$(awk -F, '{sum+=$4; count++} END {print sum}' q2.csv)
count=$(awk -F, 'END {print NR}' q2.csv)
average=$(echo "$total / $count" | bc -l)

echo "Average GPA: $average"

Average GPA: 29.80000000000000000000










 