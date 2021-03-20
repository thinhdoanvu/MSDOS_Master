@echo OFF
echo Nhap ma de thi (01~15)
echo Nhap ma de le (01, 03, 05, 07, 09, 11, 13, 15):
set /p dele=
echo De%dele%>dele.txt
echo Nhap ma de chan (02, 04, 06, 08, 10, 12, 14):
set /p dechan=
echo De%dechan%>dechan.txt
echo Xem noi dung de le
type dele.txt
echo Xem noi dung de chan
type dechan.txt
echo -------------------------------
set /p exit=Bam phim Enter de Thoat
exit
