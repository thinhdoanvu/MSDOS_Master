@echo OFF
set /p masv=<MSSV.txt
set /p HOTEN=<Hoten.txt
REM XOa ky tu trang o cuoi Ho va ten
set HOTEN=%HOTEN: =%
set dd1=%HOTEN%_%masv%
set dd=C:\Users\%username%\Desktop\%dd1%
cd %dd%

echo Nhom hoc phan(01~99):
set /p nhom=

del *Yeucau_Word*.docx
xcopy *docx "\\10.6.11.25\Users\Public\dthinh\Baithi\THTH"%nhom%
xcopy *xlsx "\\10.6.11.25\Users\Public\dthinh\Baithi\THTH"%nhom%

REM dir /o:-d \\10.6.11.25\Users\Public\dthinh\Baithi\THTH%nhom%
REM sort by date (newest first)
REM if you want to output lines 1 to 16, use:
REM dir/o-d|findstr/n ^^|findstr "^[1-9]: ^1[0-6]:"
REM if you want to output lines 16 to 45, use:
REM dir/o-d|findstr/n ^^|findstr "^1[6-9]: ^[2-3][0-9]: ^4[0-5]:"
echo Kiem tra tap tin da copy
echo ======================================================================
dir /o:-d \\10.6.11.25\Users\Public\dthinh\Baithi\THTH%nhom%|findstr/n ^^|findstr "^[8-9]:"
echo ======================================================================
dir /o:-d \\10.6.11.25\Users\Public\dthinh\Baithi\THTH%nhom% >log
REM dem so dong co chua 2 tap tin vua copy
findstr /s /n %HOTEN% log | find /v /c "" >log2
set /p counter=<log2

//Kiem tra file co dung noi dung yeu cau
if %counter% EQU 2 goto Xoa
if %counter% EQU 1 goto Thoat

:Thoat
echo Tap tin khong ton tai
SET /p exit=Bam phim Enter de Thoat 
exit

:Xoa
echo Xoa cac tap tin trong thu muc bai thi cua SV
DEL  /Q *.* 
cd .. 
RD %HOTEN%_%masv%
dir 
SET /p exit=Bam phim Enter de Thoat
shutdown -s -f -t 1
exit