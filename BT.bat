@echo OFF
echo Nhap ten nhom hoc phan (01 ~ 99). Chi go 2 ky tu so, sau do nhan phin Enter de ket thuc
echo NhomHP =
set /p NhomHP=
set dd=C:\Users\%username%\Desktop\
cd %dd%
set dd=%dd%Nhom%NhomHP% 
set temp=Nhom%NhomHP% 
REM DESKTOP-K684ST9 co 14 ky tu
mkdir %temp%

xcopy /S/Q "\\10.6.11.25\Users\Public\dthinh\BaiTap" %dd%
exit