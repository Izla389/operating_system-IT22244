@echo off
set /p birth_year=Enter your birth year:
set /a age=%date:~10,4% - %birth_year%
echo your age is:%age%
pause
