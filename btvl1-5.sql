--1. Xác định các thực thể
    SinhVien
    MonHoc
    DangKy (bảng quan hệ)
--2. Xác định thuộc tính & khóa chính của từng thực thể
    .SinhVien
        
    MaSV (PK)
    HoTen
    NgaySinh
    GioiTinh
    
    .MonHoc
        
    MaMon (PK)
    TenMon
    SoTinChi
    
    .DangKy (bảng quan hệ N–N)
        
    MaSV (FK → SinhVien.MaSV)
    MaMon (FK → MonHoc.MaMon)
    (Có thể thêm: NgayDangKy, TrangThai, Điểm… nếu cần)
    Khóa chính của bảng này là (MaSV, MaMon)

--3. Xác định mối quan hệ giữa các thực thể
SinhVien – MonHoc
Một sinh viên đăng ký nhiều môn học → 1–N

Một môn học có nhiều sinh viên đăng ký → 1–N

Kết hợp lại → N–N

→ Giải bằng bảng trung gian DangKy.


--4Bội số quan hệ:

SinhVien ↔ DangKy: 1–N

MonHoc ↔ DangKy: 1–N

SinhVien ↔ MonHoc: N–N
