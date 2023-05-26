@echo OFF
echo Nhap SBD (01~42):
set /p SBD=
echo SBD%SBD%>SBD.txt

REM Copy bai thi ve may tinh

set str=%COMPUTERNAME%
set dd=C:\Users\%username%\Desktop\
cd %dd%
mkdir SBD_%SBD%
set dd=%dd%SBD_%SBD% 

:copyle
xcopy "\\10.6.11.25\Users\Public\Scratch\Dethi\*" %dd%

cls
set /p exit=Bam phim Enter de Thoat
exit