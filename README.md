# Copy file from Server <-> Client
Computer name: xxx0 or xxx1
0: even machine
1: odd machine

IP sever: 10.6.11.25
Folder public: "\\10.6.11.25\Users\Public\...\

## Copy file from Server
xcopy "path from Server" to_folder_client

BT.bat = Sao chép bài tập về máy
SET.bat = Thiết lập đề thi chẵn hay lẻ
CP.bat = Copy đề thi về máy
SV.bat = Tải bài thi lên Server

===========
# Thứ tự thực hiện: 
1. Đổi tên DanhsachThi_THTHxx.txt = DanhsachThi.txt
2. SET - CP - SV

==========
# Cấu trúc tập thi danh sách thi:
1. Tài danh sách từ qldt.ntu.edu.vn
2. Chuyển các tên Tiếng việt sang tiếng Anh (dùng chức năng của Unikey)
3. Xoá khoảng trắng các từ (Ctrl + H)
4. Thay thế \t thành dấu phẩy ,

==========
# Định dạng mẫu:
Stt,MSSV,Hovaten,,Ngaysinh,Lop
1,61131656,TonNuVan,Chau,12-04-2001,61.KTPT
2,62130176,HangHuy,Chinh,29-05-2002,62.CKDL
3,60130217,LeThi,Ha,23-10-2000,60.QTKS-6
