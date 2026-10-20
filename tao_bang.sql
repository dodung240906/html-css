-- Tạo CSDL thử nghiệm
CREATE DATABASE IF NOT EXISTS QuanLyHocSinh;
USE QuanLyHocSinh;

-- 1. Tạo bảng Lớp Học
CREATE TABLE LopHoc (
    MaLop INT AUTO_INCREMENT PRIMARY KEY,
    TenLop VARCHAR(50) NOT NULL UNIQUE,
    NamHoc VARCHAR(20) NOT NULL
);

-- 2. Tạo bảng Học Sinh (Có khóa ngoại liên kết tới bảng LopHoc)
CREATE TABLE HocSinh (
    MaHS INT AUTO_INCREMENT PRIMARY KEY,
    HoTen VARCHAR(100) NOT NULL,
    NgaySinh DATE,
    GioiTinh VARCHAR(10),
    Email VARCHAR(100) UNIQUE,
    MaLop INT,
    FOREIGN KEY (MaLop) REFERENCES LopHoc(MaLop)
);

-- 3. Chèn dữ liệu thử nghiệm
INSERT INTO LopHoc (TenLop, NamHoc) VALUES ('10A1', '2025-2026');
INSERT INTO HocSinh (HoTen, NgaySinh, GioiTinh, Email, MaLop) VALUES 
('Nguyen Van B', '2008-05-15', 'Nam', 'vanb@gmail.com', 1);
