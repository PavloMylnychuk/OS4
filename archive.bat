@echo off

REM Створення каталогу Rob та підкаталогів
mkdir Rob
cd Rob
mkdir Docx Avi Mkv Jpeg Fb2

REM Копіювання файлів у відповідні підкаталоги
copy "C:\Users\megap\Downloads\Rob\Docx\docx1" ".\Docx\"
copy "C:\Users\megap\Downloads\Rob\Docx\docx2"
copy "C:\Users\megap\Downloads\Rob\Docx\docx3"

copy "C:\Users\megap\Downloads\Rob\Avi\avi1.avi" ".\Avi\"
copy "C:\Users\megap\Downloads\Rob\Avi\avi2.avi"
copy "C:\Users\megap\Downloads\Rob\Avi\avi3.avi" ".\Avi\"

copy "C:\Users\megap\Downloads\Rob\Mkv\mkv1.mkv" ".\Mkv\"
copy "C:\Users\megap\Downloads\Rob\Mkv\mkv2.mkv" ".\Mkv\"
copy "C:\Users\megap\Downloads\Rob\Mkv\mkv3.mkv" ".\Mkv\"

copy "C:\Users\megap\Downloads\Rob\Jpeg\jpeg1.jpeg" ".\Jpeg\"
copy "C:\Users\megap\Downloads\Rob\Jpeg\jpeg2.jpeg" ".\Jpeg\"
copy "C:\Users\megap\Downloads\Rob\Jpeg\jpeg3.jpeg" ".\Jpeg\"

copy "C:\Users\megap\Downloads\Rob\Fb2\fb1.fb2" ".\Fb2\"
copy "C:\Users\megap\Downloads\Rob\Fb2\fb2.fb2" ".\Fb2\"
copy "C:\Users\megap\Downloads\Rob\Fb2\fb3.fb2" ".\Fb2\"

REM Стиснення файлів в кожному підкаталозі RAR-ом за розміром
for /D %%d in (*) do (
    cd %%d
    "C:\Program Files\WinRAR\WinRAR.exe" a -m5 -ep1 "%%d.rar" *.*
    cd ..
)

REM Стиснення файлів в кожному підкаталозі ZIP-ом за розміром
for /D %%d in (*) do (
    cd %%d
    "C:\Program Files\7-Zip\7z.exe" a -mx5 "%%d.zip" *.*
    cd ..
)

REM Оцінка архіваторів RAR за розміром
echo Оцінка архіваторів RAR за розміром:7/10
dir /s /b *.rar | find /c /v ""

REM Оцінка архіваторів ZIP за розміром
echo Оцінка архіваторів ZIP за розміром:5/10
dir /s /b *.zip | find /c /v ""

REM Оцінка архіваторів RAR за часом архівації
echo Оцінка архіваторів RAR за часом архівації:8/10


REM Оцінка архіваторів ZIP за часом архівації
echo Оцінка архіваторів ZIP за часом архівації: 10/10


REM Ваші рекомендації щодо використання архіваторів RAR чи ZIP
echo Рекомендації: 7-Zip краща програма для архувування файлiв.


pause
