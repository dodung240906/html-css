-- 1. Tạo Cơ sở dữ liệu
CREATE DATABASE IF NOT EXISTS QuanLyBanHang;
USE QuanLyBanHang;

-- 2. Tạo bảng KhachHang
CREATE TABLE KhachHang (
    MaKH INT AUTO_INCREMENT PRIMARY KEY,
    TenKH VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    SoDienThoai VARCHAR(15),
    DiaChi VARCHAR(255)
);

-- 3. Tạo bảng SanPham
CREATE TABLE SanPham (
    MaSP INT AUTO_INCREMENT PRIMARY KEY,
    TenSP VARCHAR(150) NOT NULL,
    Gia DECIMAL(10, 2) NOT NULL,
    SoLuongTon INT DEFAULT 0
);

-- 4. Chèn dữ liệu mẫu
INSERT INTO KhachHang (TenKH, Email, SoDienThoai, DiaChi) VALUES
('Nguyen Van A', 'a.nguyen@email.com', '0901234567', 'Ha Noi'),
('Tran Thi B', 'b.tran@email.com', '0912345678', 'TP HCM');

INSERT INTO SanPham (TenSP, Gia, SoLuongTon) VALUES
('Laptop Dell XPS', 25000000.00, 10),
('Chuot Khong Day', 350000.00, 50);
