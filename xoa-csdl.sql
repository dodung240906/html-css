-- 1. Thao tác xóa bảng nếu bảng tồn tại
USE QuanLyBanHang;

DROP TABLE IF EXISTS SanPham;
DROP TABLE IF EXISTS KhachHang;

-- 2. Thao tác xóa toàn bộ Cơ sở dữ liệu nếu CSDL tồn tại
DROP DATABASE IF EXISTS QuanLyBanHang;

-- 3. Tạo lại CSDL trống để kiểm tra (tùy chọn)
CREATE DATABASE QuanLyBanHang_Demo;
DROP DATABASE QuanLyBanHang_Demo;
