@echo OFF
set /p dechan=<dechan.txt
set /p dele=<dele.txt
echo Nhap MSSV cua ban:
set /p MSSV=
echo %MSSV% >MSSV.txt
set str=%COMPUTERNAME%
set dd=C:\Users\%username%\Desktop\
cd %dd%
set dd=%dd%%MSSV% 
REM DESKTOP-K684ST9 co 14 ky tu
echo.%str%
mkdir %MSSV%
REM cd %MSSV%

REM 03/19/2021
echo.Date   : %date%
REM echo.Weekday: %date:~0,2%
REM echo.Month  : %date:~3,2%
REM echo.Year    : %date:~6,4%
echo %time%
REM Ham MID
REM set mid_char=%str:~14,1%

REM lay ky tu cuoi
set last_char=%str:~-1%
REM echo.%last_char%

if %last_char% EQU 1 goto copyle
if %last_char% EQU 0 goto copychan  

:copyle
xcopy "\\10.6.11.25\Users\Public\dthinh\PWM\"%dele% %dd%
goto thoat

:copychan
xcopy "\\10.6.11.25\Users\Public\dthinh\PWM\"%dechan% %dd%
goto thoat

:thoat
REM SET /p exit=Bam phim Enter de Thoat 
exit
