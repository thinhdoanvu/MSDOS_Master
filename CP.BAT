@echo OFF
set /p dechan=<dechan.txt
set /p dele=<dele.txt

echo Nhap MSSV cua ban:
set /p MSSV=
echo %MSSV% >MSSV.txt

REM Kiem tra MSSV co khop voi TenSV
findstr /s /n %MSSV% \\10.6.11.25\Public\BAI_THI\HK2_2020_2021\DanhSachThi.csv >log

REM moi thong tin tren 1 hang
echo ============================================================
findstr/n ^^ \\10.6.11.25\Public\BAI_THI\HK2_2020_2021\DanhSachThi.txt |findstr "^[0-1]:">log2
for /f "usebackq tokens=2-6 delims=;" %%a in ("log") do (echo %%a %%b %%c %%d %%e)>>log2
REM neu copy cau lenh nay chay truc tiep no se bao loi, phai bo bot % thanh %a %b %c %d
echo ============================================================

REM kiem tra dung thong tin chua?
echo Kiem tra Ho va Ten, MSSV da chinh xac chua?
echo Neu chua dung, vui long lien he voi giao vien.

REM lay thong tin HOVATEN SV
for /f "usebackq tokens=3-4 delims=;" %%a in ("log") do (echo %%a %%b) >HOTEN.txt
REM neu copy cau lenh nay chay truc tiep no se bao loi, phai bo bot % thanh %a %b %c %d

set /p HOTEN=<HOTEN.txt
REM Xoa ky tu trang cua Chuoi nhap vao

REM echo."%HOTEN"
set HOTEN=%HOTEN: =%
echo %HOTEN% >Hoten.txt
REM echo."%HOTEN%"


REM Copy bai thi ve may tinh
set str=%COMPUTERNAME%
set dd=C:\Users\%username%\Desktop\
cd %dd%
set dd=%dd%%HOTEN%_%MSSV% 
REM DESKTOP-K684ST9 co 14 ky tu
echo.%str%
mkdir %HOTEN%_%MSSV%

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
REM tao file Word co dinh dang: HoVaTenSV_MSSV.docx
cd %dd%
REN dulieu_%dele%.docx %HOTEN%_%MSSV%.docx
REM Doi ten file Excel co dinh dang: HoVaTenSV_MSSV.xslx
REN Excel_%dele%.xlsx %HOTEN%_%MSSV%.xlsx
goto thoat

:copychan
xcopy "\\10.6.11.25\Users\Public\dthinh\PWM\"%dechan% %dd%
cd %dd%
REM tao file Word co dinh dang: HoVaTenSV_MSSV.docx
REN dulieu_%dechan%.docx %HOTEN%_%MSSV%.docx
REM Doi ten file Excel co dinh dang: HoVaTenSV_MSSV.xslx
REN Excel_%dechan%.xlsx %HOTEN%_%MSSV%.xlsx
goto thoat

:thoat
cls
cd ../../
echo ============================================================
type log2
echo ============================================================
SET /p exit=Bam phim Enter de Thoat 
echo ============================================================
exit
