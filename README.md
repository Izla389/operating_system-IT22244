Operating Systems IT 2244 
Day 01 Practical

COMMAND PROMPT PRACTICAL

Practical 01: Creating a Batch Script for Directory Structure Creation
----------------------------------------------------------------------

Objective:
-----------
The objective of this practical is to create a batch script that automates the process of creating a structured directory hierarchy. 
The script will create directories based on predefined criteria and standards for each criterion.

Pre-requisites:
---------------
A text editor (e.g., Notepad++, Visual Studio Code) to write the batch script. We have used Notepad++
Basic understanding of Windows Batch scripting and file system structure.
Windows OS (since the batch script is for Windows environments).

Steps to Create the Batch Script:
--------------------------------
1.Open a Text Editor:

2.Open your preferred text editor (e.g., Notepad++, Visual Studio Code, or Notepad).
  We have used Notepad++

3.Write the Script:

In the text editor, type the following script. This script uses basic batch commands like mkdir (make directory) and cd (change directory) to create a structured hierarchy.

mkdir criteria_1
cd criteria_1
mkdir standard_1
mkdir standard_2
cd..
mkdir criteria_2
cd criteria_2
mkdir standard_1
mkdir standard_2
cd..
mkdir criteria_3
cd criteria_3
mkdir standard_1
mkdir standard_2
mkdir standard_3
cd..
mkdir criteria_4
cd criteria_4
mkdir standard_1
mkdir standard_2
mkdir standard_3
cd..
mkdir criteria_5
cd criteria_5
mkdir standard_1
mkdir standard_2
mkdir standard_3
cd..
mkdir criteria_6
cd criteria_6
mkdir standard_1
mkdir standard_2
mkdir standard_3


Running the Batch Script:
---------------------------
1.Save the Script:

After typing the script, save the file with a .bat extension. For example, save it as create_directories.bat

2.Execute the Script:

Locate the .bat file in File Explorer.
Double-click on the file to execute the script.
The script will automatically create the directory structure in the location where the .bat file is executed.

Batch Script Commands Used:
----------------------------
mkdir: Creates directories.
cd: Changes the current working directory


Conclusion:
--------------
In this practical, we learned how to create a batch script to automate the creation of a specific directory structure. 
By using commands like mkdir and cd, we ensured that the directories were organized hierarchically, which is beneficial 
for maintaining consistent folder structures across projects or teams


Practical 02: Creating a Batch Script for Age Calculation
-----------------------------------------------------------

Objective:
-----------
The objective of this batch script is to prompt the user for their birth year and calculate their current age based on the current date. 
It uses the %date% variable to retrieve the current year and then calculates the difference between the current year and the user's input.

Steps for the script
---------------------

1.Open a Text Editor:
2.Write the  following Script:

@echo off
set /p birth_year=Enter your birth year:
set /a age=%date:~10,4% - %birth_year%
echo your age is:%age%
pause

Running the Batch Script:
-------------------------
1.Save the Script:

After typing the script, save the file with a .bat extension.

2.Execute the Script:

Locate the .bat file in File Explorer.
Double-click on the file to execute the script.
It will ask you to input your birth year, and then it will calculate and display your age.

Explanation of the Script:
---------------------------

@echo off					: Hides the command execution details for cleaner output.
set /p birth_year=...		: Prompts the user to input their birth year and stores it in the birth_year variable.
%date:~10,4%				: Extracts the current year from the system's date.
set /a age=%date:~10,4% - %birth_year%: Calculates the user's age by subtracting their birth year from the current year.
echo Your age is: %age%		: Displays the calculated age to the user.
pause						: Pauses the script so the user can view the result before closing the window.

Expected Output:
-----------------
Enter your birth year: 1990
Your age is: 35
Press any key to continue...


Conclusion:
In this practical, we created a batch script that calculates a user's age based on their birth year and the current year. 
We used basic batch scripting commands such as set, echo, and pause to interact with the user and perform arithmetic calculations.



