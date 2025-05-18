
:: Create directories on Desktop
cd %USERPROFILE%\Desktop
mkdir CSC2244 Marks Exam

:: Create subdirectories inside CSC2244
cd CSC2244
mkdir practical theory "exam papers"

:: Create sample files in each subdirectory
cd practical
echo a> practical.txt
echo a> practical.docx
echo a> practical.pptx

cd ..\theory
echo a> theory.txt
echo a> theory.docx
echo a> theory.pptx

cd ..\"exam papers"
echo a> exam_papers.txt
echo a> exam_papers.docx
echo a> exam_papers.pptx

:: Create Excel files on Desktop and move them
cd %USERPROFILE%\Desktop
echo a> "Icae Marks.xlsx"
echo a> "Final Exam Marks.xlsx"
move "Icae Marks.xlsx" Marks
move "Final Exam Marks.xlsx" Marks

:: Copy Marks into Exam and hide Exam directory
xcopy /E /I Marks Exam\Marks
attrib +h Exam

  

