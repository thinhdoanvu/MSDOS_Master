@echo OFF
set /p masv=<MSSV.txt
set dd=C:\Users\%username%\Desktop\%masv%
cd %dd%
echo Nhom hoc phan(01~99):
set /p nhom=

xcopy *docx "\\10.6.11.25\Public\BAI_THI\HK2_2020_2021\THTH"%nhom%
xcopy *xlsx "\\10.6.11.25\Public\BAI_THI\HK2_2020_2021\THTH"%nhom%
REM dir /o:-d \\10.6.11.25\Public\BAI_THI\HK2_2020_2021\THTH%nhom%
REM sort by date (newest first)
REM if you want to output lines 1 to 16, use:
REM dir/o-d|findstr/n ^^|findstr "^[1-9]: ^1[0-6]:"
REM if you want to output lines 16 to 45, use:
REM dir/o-d|findstr/n ^^|findstr "^1[6-9]: ^[2-3][0-9]: ^4[0-5]:"
echo Kiem tra tap tin da copy
dir /o:-d \\10.6.11.25\Public\BAI_THI\HK2_2020_2021\THTH%nhom%|findstr/n ^^|findstr "^[8-9]:"

SET /p exit=Bam phim Enter de Thoat 
exit
