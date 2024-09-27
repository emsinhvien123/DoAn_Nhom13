-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 28, 2024 lúc 01:55 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_ban_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `MaDanhMuc` varchar(10) NOT NULL,
  `TenDanhMuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `MaDonHang` varchar(10) NOT NULL,
  `MaSach` varchar(10) NOT NULL,
  `MaKhachHang` varchar(10) NOT NULL,
  `NgayDatHang` date NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `PhuongThucTT` int(11) NOT NULL,
  `TrangThaiTT` int(11) NOT NULL,
  `NgayGiaoDuKien` date NOT NULL,
  `NgayHoanThanh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_kho`
--

CREATE TABLE `tbl_kho` (
  `MaKho` varchar(10) NOT NULL,
  `TenKho` varchar(50) NOT NULL,
  `DiaDiem` varchar(100) NOT NULL,
  `KichThuoc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khuyenmai`
--

CREATE TABLE `tbl_khuyenmai` (
  `MaGiamGia` varchar(30) NOT NULL,
  `TenGiamGia` varchar(30) NOT NULL,
  `SoTien` int(11) NOT NULL,
  `TuNgay` date NOT NULL,
  `DenNgay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhacungcap`
--

CREATE TABLE `tbl_nhacungcap` (
  `MaNhaCungCap` varchar(10) NOT NULL,
  `TenNhaCungCap` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `MaNhanVien` varchar(10) NOT NULL,
  `TenNhanVien` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` int(11) NOT NULL,
  `QueQuan` varchar(50) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NgayNhanViec` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhapkho`
--

CREATE TABLE `tbl_nhapkho` (
  `MaKho` varchar(10) NOT NULL,
  `MaSach` varchar(10) NOT NULL,
  `SoLuongNhap` int(11) NOT NULL,
  `MaNhaCungCap` varchar(10) NOT NULL,
  `NgayNhap` date NOT NULL,
  `MaNhanVien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sach`
--

CREATE TABLE `tbl_sach` (
  `MaSach` varchar(10) NOT NULL,
  `MaDanhMuc` varchar(10) NOT NULL,
  `TenSach` varchar(50) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Anh` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_taikhoankhachhang`
--

CREATE TABLE `tbl_taikhoankhachhang` (
  `MaKhachHang` varchar(10) NOT NULL,
  `TenKhachHang` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` int(11) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `TenDangNhap` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_taikhoannhanvien`
--

CREATE TABLE `tbl_taikhoannhanvien` (
  `MaTaiKhoan` varchar(10) NOT NULL,
  `MaNhanVien` varchar(10) NOT NULL,
  `TenTaiKhoan` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tonkho`
--

CREATE TABLE `tbl_tonkho` (
  `MaKho` varchar(10) NOT NULL,
  `MaSach` varchar(10) NOT NULL,
  `SoLuongTonKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_xuatkho`
--

CREATE TABLE `tbl_xuatkho` (
  `MaKho` varchar(10) NOT NULL,
  `MaSach` varchar(10) NOT NULL,
  `SoLuongXuat` int(11) NOT NULL,
  `NgayXuat` date NOT NULL,
  `MaNhanVien` varchar(10) NOT NULL,
  `LyDo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`MaDonHang`),
  ADD UNIQUE KEY `MaSach` (`MaSach`),
  ADD UNIQUE KEY `MaKhachHang` (`MaKhachHang`);

--
-- Chỉ mục cho bảng `tbl_kho`
--
ALTER TABLE `tbl_kho`
  ADD PRIMARY KEY (`MaKho`);

--
-- Chỉ mục cho bảng `tbl_khuyenmai`
--
ALTER TABLE `tbl_khuyenmai`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Chỉ mục cho bảng `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `tbl_nhapkho`
--
ALTER TABLE `tbl_nhapkho`
  ADD UNIQUE KEY `MaKho` (`MaKho`),
  ADD UNIQUE KEY `MaSach` (`MaSach`),
  ADD UNIQUE KEY `MaNV` (`MaNhanVien`),
  ADD UNIQUE KEY `MaNCC` (`MaNhaCungCap`);

--
-- Chỉ mục cho bảng `tbl_sach`
--
ALTER TABLE `tbl_sach`
  ADD PRIMARY KEY (`MaSach`),
  ADD UNIQUE KEY `MaDanhMuc` (`MaDanhMuc`);

--
-- Chỉ mục cho bảng `tbl_taikhoankhachhang`
--
ALTER TABLE `tbl_taikhoankhachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `tbl_taikhoannhanvien`
--
ALTER TABLE `tbl_taikhoannhanvien`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD UNIQUE KEY `MaNV` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `tbl_tonkho`
--
ALTER TABLE `tbl_tonkho`
  ADD UNIQUE KEY `MaKho` (`MaKho`),
  ADD UNIQUE KEY `MaSach` (`MaSach`);

--
-- Chỉ mục cho bảng `tbl_xuatkho`
--
ALTER TABLE `tbl_xuatkho`
  ADD UNIQUE KEY `MaKho` (`MaKho`),
  ADD UNIQUE KEY `MaSach` (`MaSach`),
  ADD UNIQUE KEY `MaNV` (`MaNhanVien`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `tbl_donhang_ibfk_1` FOREIGN KEY (`MaSach`) REFERENCES `tbl_sach` (`MaSach`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_donhang_ibfk_2` FOREIGN KEY (`MaKhachHang`) REFERENCES `tbl_taikhoankhachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_nhapkho`
--
ALTER TABLE `tbl_nhapkho`
  ADD CONSTRAINT `tbl_nhapkho_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `tbl_nhanvien` (`MaNhanVien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_nhapkho_ibfk_2` FOREIGN KEY (`MaKho`) REFERENCES `tbl_kho` (`MaKho`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_nhapkho_ibfk_3` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `tbl_nhacungcap` (`MaNhaCungCap`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_sach`
--
ALTER TABLE `tbl_sach`
  ADD CONSTRAINT `tbl_sach_ibfk_1` FOREIGN KEY (`MaDanhMuc`) REFERENCES `tbl_danhmuc` (`MaDanhMuc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_taikhoannhanvien`
--
ALTER TABLE `tbl_taikhoannhanvien`
  ADD CONSTRAINT `tbl_taikhoannhanvien_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `tbl_nhanvien` (`MaNhanVien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_tonkho`
--
ALTER TABLE `tbl_tonkho`
  ADD CONSTRAINT `tbl_tonkho_ibfk_1` FOREIGN KEY (`MaSach`) REFERENCES `tbl_sach` (`MaSach`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_tonkho_ibfk_2` FOREIGN KEY (`MaKho`) REFERENCES `tbl_kho` (`MaKho`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_xuatkho`
--
ALTER TABLE `tbl_xuatkho`
  ADD CONSTRAINT `tbl_xuatkho_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `tbl_nhanvien` (`MaNhanVien`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
