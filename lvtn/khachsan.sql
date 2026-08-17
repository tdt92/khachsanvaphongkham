-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 07, 2026 lúc 07:14 AM
-- Phiên bản máy phục vụ: 8.2.0
-- Phiên bản PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khachsan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdatphong`
--

DROP TABLE IF EXISTS `chitietdatphong`;
CREATE TABLE IF NOT EXISTS `chitietdatphong` (
  `MaPhieuDat` int NOT NULL,
  `MaPhong` int NOT NULL,
  `MaKhachHang` int DEFAULT NULL,
  PRIMARY KEY (`MaPhieuDat`,`MaPhong`),
  KEY `FK_CTDat_Phong` (`MaPhong`),
  KEY `FK_CTDat_KhachHang` (`MaKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdatphong`
--

INSERT INTO `chitietdatphong` (`MaPhieuDat`, `MaPhong`, `MaKhachHang`) VALUES
(116, 7, NULL),
(116, 9, NULL),
(117, 5, 1),
(117, 6, 1),
(129, 1, 2),
(109, 1, 5),
(123, 1, 6),
(123, 5, 6),
(124, 9, 6),
(124, 10, 6),
(139, 5, 6),
(139, 6, 6),
(115, 1, 9),
(130, 5, 12),
(134, 7, 13),
(138, 1, 13),
(125, 7, 15),
(125, 8, 15),
(133, 9, 15),
(136, 1, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietthuephong`
--

DROP TABLE IF EXISTS `chitietthuephong`;
CREATE TABLE IF NOT EXISTS `chitietthuephong` (
  `MaPhieuThue` int NOT NULL,
  `MaPhong` int NOT NULL,
  `MaKhachHang` int DEFAULT NULL,
  `DonGia` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`MaPhieuThue`,`MaPhong`),
  KEY `FK_CTThue_Phong` (`MaPhong`),
  KEY `FK_CTThue_Khach` (`MaKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietthuephong`
--

INSERT INTO `chitietthuephong` (`MaPhieuThue`, `MaPhong`, `MaKhachHang`, `DonGia`) VALUES
(168, 1, 6, 300000.00),
(171, 1, 6, 300000.00),
(171, 2, 6, 300000.00),
(172, 1, 9, 300000.00),
(177, 5, 3, 400000.00),
(178, 6, 3, 400000.00),
(183, 1, 3, 300000.00),
(184, 2, 1, 300000.00),
(185, 1, 1, 300000.00),
(187, 1, 10, 300000.00),
(188, 5, 1, 400000.00),
(188, 6, 5, 400000.00),
(189, 2, 10, 300000.00),
(192, 1, 3, 300000.00),
(195, 2, 10, 300000.00),
(196, 5, 10, 400000.00),
(197, 6, 2, 400000.00),
(198, 2, 10, 300000.00),
(199, 1, 1, 300000.00),
(199, 5, 6, 400000.00),
(200, 9, 1, 800000.00),
(200, 10, 3, 800000.00),
(201, 1, 10, 300000.00),
(202, 7, 15, 500000.00),
(202, 8, 13, 500000.00),
(203, 9, 9, 800000.00),
(204, 1, 12, 300000.00),
(205, 2, 3, 300000.00),
(206, 7, 4, 500000.00),
(207, 12, 13, 1000000.00),
(208, 1, 1, 300000.00),
(209, 5, 2, 400000.00),
(210, 7, 13, 500000.00),
(211, 11, 10, 1000000.00),
(212, 11, 6, 1000000.00),
(213, 5, 12, 400000.00),
(213, 6, 13, 400000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
CREATE TABLE IF NOT EXISTS `dichvu` (
  `MaDichVu` int NOT NULL AUTO_INCREMENT,
  `TenDichVu` varchar(100) DEFAULT NULL,
  `DonGia` decimal(18,2) DEFAULT NULL,
  `DonViTinh` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `MaVatDung` int DEFAULT NULL,
  PRIMARY KEY (`MaDichVu`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `TenDichVu`, `DonGia`, `DonViTinh`, `GhiChu`, `MaVatDung`) VALUES
(1, 'ăn sáng', 100000.00, 'buổi', 'bữa sáng 3 món', NULL),
(2, 'ăn tối', 100000.00, 'buổi', 'bữa tối  3 món', NULL),
(3, 'giặt đồ', 25000.00, '1kg', '', NULL),
(5, 'Nước suối Lavie', 10000.00, 'Chai', 'Mini Bar', NULL),
(6, 'Coca Cola', 15000.00, 'Lon', 'Mini Bar', NULL),
(7, 'Mì Ly', 20000.00, 'Ly', 'Ăn uống', NULL),
(8, 'Nước suối ga', 10000.00, 'Chai', 'Mini Bar', NULL),
(9, 'khuyến mãi: combo vé tham quan và spa', 0.00, '1 lần', '', NULL),
(10, 'khuyến mãi: bữa sáng tuyệt vời', 0.00, 'buổi', '', NULL),
(11, 'khuyến mãi: bữa tối tuyệt vời', 0.00, 'buổi', '', NULL),
(12, 'hư hỏng chăn gối ', 200000.00, 'chiếc', '', NULL),
(13, 'hư hỏng nhẹ', 100000.00, 'chiếc', '', NULL),
(14, 'hư hỏng nặng', 500000.00, 'chiếc', '', NULL),
(15, 'check out muộn', 100000.00, 'giờ', '', NULL),
(16, 'giường lớn', 150000.00, 'chiếc', '', NULL),
(17, 'giường nhỏ', 100000.00, 'chiếc', '', NULL),
(18, 'ghế lười', 100000.00, 'chiếc', '', NULL),
(19, 'ghế dựa', 100000.00, 'chiếc', '', NULL),
(20, 'ghế cho con nít', 50000.00, 'chiếc', '', NULL),
(21, 'gối và chăn', 20000.00, 'chiếc', '', NULL),
(22, 'bộ dụng cụ sinh hoạt', 0.00, 'chiếc', '', NULL),
(23, 'khuyến mãi: tiệc trà chiều', 0.00, 'buổi', '', NULL),
(24, 'khăn lạnh', 2000.00, 'Cái', 'khăn ướt', NULL),
(25, 'phụ phi thêm người P.thường', 500000.00, 'người', '', NULL),
(26, 'phụ phi thêm người P.Vip', 800000.00, 'người', '', NULL),
(27, 'hư hỏng WC', 200000.00, 'chiếc', '', NULL),
(28, 'sinh nhật thành viên tặng 1 bánh sinh nhật tự chọn', 0.00, '1 lần', '', NULL),
(29, 'khai trương: vé tham quan khu vui chơi và tiệc buffe', 0.00, 'lần', '', NULL),
(30, 'snack', 15000.00, 'bịch', '', NULL),
(32, 'socola', 15000.00, 'bịch', '', NULL),
(33, 'lạc rang', 15000.00, 'bịch', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `MaHoaDon` int NOT NULL AUTO_INCREMENT,
  `MaPhieuThue` int DEFAULT NULL,
  `MaNhanVien` int DEFAULT NULL,
  `NgayLap` datetime DEFAULT CURRENT_TIMESTAMP,
  `TongTien` decimal(18,2) DEFAULT '0.00',
  `HinhThucThanhToan` varchar(50) DEFAULT NULL,
  `TrangThaiThanhToan` varchar(50) DEFAULT 'Chua thanh toan',
  `GhiChu` varchar(500) DEFAULT NULL,
  `TienKhachTra` double DEFAULT '0',
  `TienConLai` double DEFAULT '0',
  PRIMARY KEY (`MaHoaDon`),
  KEY `FK_HoaDon_Phieu` (`MaPhieuThue`),
  KEY `FK_HoaDon_NhanVien` (`MaNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaPhieuThue`, `MaNhanVien`, `NgayLap`, `TongTien`, `HinhThucThanhToan`, `TrangThaiThanhToan`, `GhiChu`, `TienKhachTra`, `TienConLai`) VALUES
(61, 168, 1, '2026-07-04 01:21:07', 300000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 300000, 0),
(62, 171, 1, '2026-07-04 23:21:39', 630100.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 11711111, 11081011),
(63, 172, 1, '2026-07-04 23:58:50', 300000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 300000, 0),
(68, 177, 1, '2026-07-06 11:18:54', 400000.00, '', 'Đã thanh toán', '', 400000, 0),
(69, 178, 1, '2026-07-06 23:17:03', 800000.00, '', 'Đã thanh toán', '', 0, 800000),
(74, 183, 1, '2026-07-07 01:34:07', 300000.00, '', 'Đã thanh toán', '', 300000, 0),
(75, 184, 1, '2026-07-07 01:36:09', 300000.00, '', 'Đã thanh toán', '', 300000, 0),
(76, 185, 1, '2026-07-09 23:13:36', 300000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 300000, 0),
(77, 187, 1, '2026-07-09 23:16:45', 900000.00, '', 'Đã thanh toán', '', 600000, 300000),
(78, 188, 1, '2026-07-10 00:02:40', 800000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 800000, 0),
(79, 189, 1, '2026-07-10 00:06:02', 400000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 101800000, 99900000),
(82, 192, 1, '2026-07-10 00:23:36', 1630000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 1630000, 0),
(85, 195, 1, '2026-07-11 01:03:37', 300000.00, '', 'Đã thanh toán', '', 0, 300000),
(86, 196, 1, '2026-07-11 01:11:43', 700000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 700000, 0),
(87, 197, 1, '2026-07-11 02:03:36', 500000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 511111, 11111),
(88, 198, 1, '2026-07-16 22:28:28', 500000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 500000, 0),
(89, 199, 1, '2026-07-16 22:35:53', 1000000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 1000000, 0),
(90, 200, 1, '2026-07-16 22:40:09', 1600000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 1600000, 0),
(91, 201, 1, '2026-07-17 00:20:33', 300000.00, '', 'Đã thanh toán', '', 300000, 0),
(92, 202, 1, '2026-07-17 00:24:12', 1200000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 1300000, 100000),
(93, 203, 1, '2026-07-21 23:10:31', 800000.00, '', 'Đã thanh toán', '', 800000, 0),
(94, 204, 1, '2026-07-22 14:04:57', 310000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 310000, 0),
(95, 205, 1, '2026-07-24 01:00:59', 435000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 100299999, 99864999),
(96, 206, 1, '2026-07-24 01:11:36', 800000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 10499999, 9699999),
(97, 207, 1, '2026-07-24 01:26:18', 1000000.00, '', 'Đã thanh toán', '', 1000000, 0),
(98, 208, 1, '2026-07-24 01:29:29', 300000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 300000, 0),
(99, 209, 1, '2026-07-24 01:47:04', 660000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 660000, 0),
(100, 210, 1, '2026-08-06 21:55:33', 500000.00, 'Tiền mặt', 'Đã thanh toán', 'Đã thanh toán tiền phòng khi nhận phòng', 500000, 0),
(101, 211, 1, '2026-08-06 22:18:29', 1200000.00, '', 'Đã thanh toán', 'Đã thanh toán tiền phòng và dịch vụ', 1200000, 0),
(102, 212, 1, '2026-08-07 10:12:54', 1000000.00, '', 'ĐÃ THANH TOÁN', '', 1000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKhachHang` int NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(100) DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `QuocTich` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaKhachHang`),
  UNIQUE KEY `CCCD` (`CCCD`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `CCCD`, `SoDienThoai`, `Email`, `DiaChi`, `QuocTich`) VALUES
(1, 'tuan anh', '093287365231', '0923723625', '123', 'ád', 'vn'),
(2, 'yến', '029392929222', '0913496740', '123', '', 'vn'),
(3, 'tuantu', '121212121213', '0912121212', '123', 'ád', 'vn'),
(4, 'vy', '123123444223', '0913332323', 'HAaa@gmail.com', 'ád', 'vn'),
(5, 'anh tuan', '121212121212', '0931111111', 'H@gmail.com', 'ád', 'vn'),
(6, 'Hải Anh', '555556666665', '0931231231', 'taimanh924@gmail.com', '', 'v n'),
(9, 'Hưng', '123123123124', '0913323232', '', '', 'VN'),
(10, 'tài', '123123123123', '0931233211', 'taimanh921@gmail.com', '', 'VN'),
(12, 'thu', '111111111111', '0989898989', '', '', 'vn'),
(13, 'tony', 'AM33442233', '0989898989', '', '', 'vn'),
(15, 'anh ZU', '09123123213', '0912131233', 'vuduyanhvu22@gmail.com', '', 'VN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphong`
--

DROP TABLE IF EXISTS `loaiphong`;
CREATE TABLE IF NOT EXISTS `loaiphong` (
  `MaLoaiPhong` int NOT NULL AUTO_INCREMENT,
  `TenLoaiPhong` varchar(100) DEFAULT NULL,
  `DonGia` decimal(18,2) DEFAULT NULL,
  `SoNguoiToiDa` int DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiPhong`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiphong`
--

INSERT INTO `loaiphong` (`MaLoaiPhong`, `TenLoaiPhong`, `DonGia`, `SoNguoiToiDa`, `MoTa`) VALUES
(1, 'thường đơn-02', 300000.00, 2, '1 giường đôi, phòng tắm sang trọng, Phòng không hút thuốc, WiFi miễn phí, Spa & trung tâm chăm sóc sức khỏe, Chỗ đỗ xe miễn phí'),
(2, 'thường đôi-04', 400000.00, 4, '2 giường đôi , phòng tắm sang trọng, Phòng không hút thuốc, WiFi miễn phí, Spa & trung tâm chăm sóc sức khỏe, Chỗ đỗ xe miễn phí'),
(5, 'vip đơn-02', 500000.00, 2, '1 giường đôi lớn, phòng tắm sang trọng, tủ lạnh đầy đủ đô ăn nước uống, tivi lớn, Phòng không hút thuốc, WiFi miễn phí, Spa & trung tâm chăm sóc sức khỏe, Chỗ đỗ xe miễn phí'),
(6, 'vip đôi-04', 800000.00, 4, '2 giường đôi, phòng tắm sang trọng, Phòng không hút thuốc, WiFi miễn phí, tivi máy chiếu tại phòng, Spa & trung tâm chăm sóc sức khỏe, Chỗ đỗ xe miễn phí'),
(7, 'gia đình', 1000000.00, 6, '2 giường đơn 2 giường đôi, phòng tắm sang trọng, Phòng không hút thuốc,tivi tại phòng, ghế massa, trà và cà phê, WiFi miễn phí, Spa & trung tâm chăm sóc sức khỏe, Chỗ đỗ xe miễn phí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNhanVien` int NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(100) NOT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `ChucVu` varchar(50) DEFAULT NULL,
  `NgayVaoLam` date DEFAULT NULL,
  `MaTaiKhoan` int DEFAULT NULL,
  `CCCD` bigint DEFAULT NULL,
  PRIMARY KEY (`MaNhanVien`),
  UNIQUE KEY `MaTaiKhoan` (`MaTaiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HoTen`, `GioiTinh`, `NgaySinh`, `SoDienThoai`, `Email`, `DiaChi`, `ChucVu`, `NgayVaoLam`, `MaTaiKhoan`, `CCCD`) VALUES
(1, 'ad', 'Nam', '2000-01-01', '0922222222', 'r@a', '', 'quanly', '2026-07-05', 1, 121212121212),
(2, 'lt', 'Nam', '2004-07-01', '0923232323', 'lt@gmail.com', 'aaa', 'letan', '2026-07-04', 3, 1231234),
(8, 'kho', 'Nam', '2002-05-02', '4323', 'ads', 'ad', 'kho', '2026-06-01', NULL, 2345),
(10, 'kho2', 'Nam', '2002-05-02', '0111111111', '', 'ad', 'kho', '2026-07-07', NULL, 121232121212),
(18, 'aaa', 'Nam', '2003-07-01', '0202232222', 'tat@gmail', '', 'quanly', '2026-07-18', 12, 121234223212),
(19, 'tai', 'Nam', '2002-07-17', '0912121212', '', '', 'quanly', '2026-07-22', 13, 111111111111),
(20, 'nhan', 'Nam', '2002-07-18', '0999888777', 'a@gmail.com', 'a', 'letan', '2026-07-23', 14, 111333222111),
(21, 'manh tài', 'Nam', '2003-08-01', '0121211212', 'tai@gmail.COM', '', 'letan', '2026-08-07', 15, 343434343434),
(22, 'DANH', 'Nam', '2001-08-03', '0987655656', 'danh@gmail.com', '', 'letan', '2026-08-07', 16, 123434343434);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong`
--

DROP TABLE IF EXISTS `phancong`;
CREATE TABLE IF NOT EXISTS `phancong` (
  `MaPhanCong` int NOT NULL AUTO_INCREMENT,
  `MaNhanVien` int NOT NULL,
  `MaPhong` int NOT NULL,
  `TenVaiTro` varchar(50) DEFAULT NULL,
  `NgayPhanCong` date DEFAULT NULL,
  `GioBatDau` time DEFAULT NULL,
  `GioKetThuc` time DEFAULT NULL,
  `GhiChu` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MaPhanCong`),
  KEY `FK_PhanCong_Phong` (`MaPhong`),
  KEY `FK_PhanCong_NV` (`MaNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phancong`
--

INSERT INTO `phancong` (`MaPhanCong`, `MaNhanVien`, `MaPhong`, `TenVaiTro`, `NgayPhanCong`, `GioBatDau`, `GioKetThuc`, `GhiChu`) VALUES
(3, 8, 4, 'kho', '2026-06-02', '07:00:00', '15:00:00', ''),
(5, 2, 0, 'letan', '2026-07-11', '07:00:00', '15:00:00', ''),
(6, 2, 0, 'letan', '2026-07-12', '07:00:00', '15:00:00', ''),
(7, 2, 0, 'letan', '2026-07-13', '07:00:00', '15:00:00', ''),
(8, 2, 0, 'letan', '2026-07-14', '07:00:00', '15:00:00', ''),
(9, 2, 0, 'letan', '2026-07-17', '07:00:00', '14:00:00', ''),
(11, 2, 0, 'letan', '2026-07-20', '07:00:00', '17:00:00', ''),
(12, 2, 0, 'letan', '2026-07-21', '07:00:00', '17:00:00', ''),
(13, 2, 0, 'letan', '2026-07-30', '07:00:00', '15:00:00', ''),
(14, 2, 0, 'letan', '2026-07-31', '07:00:00', '15:00:00', ''),
(15, 20, 0, 'letan', '2026-07-25', '07:00:00', '11:00:00', ''),
(16, 20, 0, 'letan', '2026-07-26', '07:00:00', '11:00:00', ''),
(17, 20, 0, 'letan', '2026-08-07', '07:00:00', '11:00:00', ''),
(21, 21, 0, 'letan', '2026-08-07', '07:00:00', '15:00:00', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatphong`
--

DROP TABLE IF EXISTS `phieudatphong`;
CREATE TABLE IF NOT EXISTS `phieudatphong` (
  `MaPhieuDat` int NOT NULL AUTO_INCREMENT,
  `MaKhachHang` int NOT NULL,
  `NgayDat` datetime DEFAULT NULL,
  `NgayNhanPhong` date DEFAULT NULL,
  `NgayTraPhong` date DEFAULT NULL,
  `TienCoc` decimal(18,2) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  `MaPhieuThue` int DEFAULT NULL,
  `GhiChu` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MaNhanVien` int DEFAULT NULL,
  PRIMARY KEY (`MaPhieuDat`),
  KEY `FK_PhieuDat_PhieuThue` (`MaPhieuThue`),
  KEY `FK_PhieuDat_KhachHang` (`MaKhachHang`),
  KEY `FK_PhieuDat_NhanVien` (`MaNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudatphong`
--

INSERT INTO `phieudatphong` (`MaPhieuDat`, `MaKhachHang`, `NgayDat`, `NgayNhanPhong`, `NgayTraPhong`, `TienCoc`, `TrangThai`, `MaPhieuThue`, `GhiChu`, `MaNhanVien`) VALUES
(109, 5, '2026-07-04 23:24:01', '2026-07-04', '2026-07-05', 300000.00, 'DA_NHAN', 172, '', NULL),
(115, 9, '2026-07-07 01:35:33', '2026-07-08', '2026-07-09', 300000.00, 'DA_NHAN', 185, '', NULL),
(116, 4, '2026-07-07 01:36:44', '2026-07-10', '2026-07-11', 1300000.00, 'DA_NHAN', 186, '', NULL),
(117, 1, '2026-07-09 23:58:20', '2026-07-09', '2026-07-10', 800000.00, 'DA_NHAN', 188, '', NULL),
(123, 6, '2026-07-16 22:24:48', '2026-07-16', '2026-07-17', 700000.00, 'DA_NHAN', 199, 'aaaa', NULL),
(124, 6, '2026-07-16 22:38:08', '2026-07-16', '2026-07-17', 1600000.00, 'DA_NHAN', 200, 'tttt', NULL),
(125, 15, '2026-07-17 00:18:50', '2026-07-17', '2026-07-18', 1000000.00, 'DA_NHAN', 202, '', NULL),
(129, 2, '2026-07-24 00:47:35', '2026-07-24', '2026-07-25', 300000.00, 'DA_NHAN', 208, 'aaa', 20),
(130, 12, '2026-07-24 01:08:34', '2026-07-24', '2026-07-25', 400000.00, 'DA_NHAN', 209, '', 2),
(133, 15, '2026-08-06 21:53:29', '2026-08-12', '2026-08-13', 800000.00, 'DA_DAT', NULL, '', 2),
(134, 13, '2026-08-06 21:54:14', '2026-08-06', '2026-08-07', 500000.00, 'DA_NHAN', 210, '', 2),
(136, 15, '2026-08-07 10:11:33', '2026-08-28', '2026-08-29', 300000.00, 'DA_DAT', NULL, '', 2),
(138, 13, '2026-08-07 10:14:36', '2026-08-31', '2026-09-01', 300000.00, 'DA_DAT', NULL, '', 2),
(139, 6, '2026-08-07 10:33:56', '2026-08-07', '2026-08-08', 800000.00, 'DA_NHAN', 213, '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuthuephong`
--

DROP TABLE IF EXISTS `phieuthuephong`;
CREATE TABLE IF NOT EXISTS `phieuthuephong` (
  `MaPhieuThue` int NOT NULL AUTO_INCREMENT,
  `MaKhachHang` int NOT NULL,
  `MaNhanVien` int NOT NULL,
  `NgayNhanPhong` datetime DEFAULT NULL,
  `NgayTraPhongDuKien` date DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaPhieuThue`),
  KEY `FK_PhieuThue_KhachHang` (`MaKhachHang`),
  KEY `FK_PhieuThue_NhanVien` (`MaNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuthuephong`
--

INSERT INTO `phieuthuephong` (`MaPhieuThue`, `MaKhachHang`, `MaNhanVien`, `NgayNhanPhong`, `NgayTraPhongDuKien`, `TrangThai`) VALUES
(168, 6, 1, '2026-07-04 01:07:12', '2026-07-01', 'DA_TRA'),
(171, 6, 1, '2026-07-04 23:21:14', '2026-07-05', 'DA_TRA'),
(172, 9, 1, '2026-07-04 23:58:20', '2026-07-05', 'DA_TRA'),
(177, 3, 1, '2026-07-06 11:18:54', '2026-07-07', 'DA_TRA'),
(178, 3, 1, '2026-07-06 23:17:02', '2026-07-08', 'DA_TRA'),
(183, 3, 1, '2026-07-07 01:34:06', '2026-07-08', 'DA_TRA'),
(184, 1, 1, '2026-07-07 01:36:08', '2026-07-08', 'DA_TRA'),
(185, 1, 1, '2026-07-09 23:06:26', '2026-07-09', 'DA_TRA'),
(187, 10, 1, '2026-07-09 23:16:43', '2026-07-10', 'DA_TRA'),
(188, 1, 1, '2026-07-10 00:01:39', '2026-07-10', 'DA_TRA'),
(189, 10, 1, '2026-07-10 00:06:02', '2026-07-11', 'DA_TRA'),
(192, 3, 1, '2026-07-10 00:23:35', '2026-07-13', 'DA_TRA'),
(195, 10, 1, '2026-07-11 01:03:36', '2026-07-12', 'DA_TRA'),
(196, 10, 1, '2026-07-11 01:11:42', '2026-07-12', 'DA_TRA'),
(197, 2, 1, '2026-07-11 02:03:35', '2026-07-12', 'DA_TRA'),
(198, 10, 1, '2026-07-16 22:28:27', '2026-07-17', 'DA_TRA'),
(199, 1, 1, '2026-07-16 22:29:00', '2026-07-17', 'DA_TRA'),
(200, 1, 1, '2026-07-16 22:39:45', '2026-07-17', 'DA_TRA'),
(201, 10, 1, '2026-07-17 00:20:31', '2026-07-18', 'DA_TRA'),
(202, 15, 1, '2026-07-17 00:21:22', '2026-07-18', 'DA_TRA'),
(203, 9, 1, '2026-07-21 23:10:29', '2026-07-22', 'DA_TRA'),
(204, 12, 1, '2026-07-22 14:04:55', '2026-07-23', 'DA_TRA'),
(205, 3, 1, '2026-07-24 01:00:58', '2026-07-25', 'DA_TRA'),
(206, 4, 1, '2026-07-24 01:11:33', '2026-07-25', 'DA_TRA'),
(207, 13, 1, '2026-07-24 01:26:17', '2026-07-25', 'DA_TRA'),
(208, 1, 1, '2026-07-24 01:27:12', '2026-07-25', 'DA_TRA'),
(209, 2, 1, '2026-07-24 01:41:33', '2026-07-25', 'DA_TRA'),
(210, 13, 1, '2026-08-06 21:55:00', '2026-08-07', 'DA_TRA'),
(211, 10, 1, '2026-08-06 22:18:28', '2026-08-07', 'DA_TRA'),
(212, 6, 1, '2026-08-07 10:12:52', '2026-08-08', 'DANG_THUE'),
(213, 12, 1, '2026-08-07 10:40:06', '2026-08-08', 'DANG_THUE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

DROP TABLE IF EXISTS `phong`;
CREATE TABLE IF NOT EXISTS `phong` (
  `MaPhong` int NOT NULL AUTO_INCREMENT,
  `SoPhong` varchar(10) NOT NULL,
  `MaLoaiPhong` int NOT NULL,
  `Tang` int DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaPhong`),
  UNIQUE KEY `SoPhong` (`SoPhong`),
  KEY `FK_Phong_LoaiPhong` (`MaLoaiPhong`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaPhong`, `SoPhong`, `MaLoaiPhong`, `Tang`, `TrangThai`) VALUES
(1, 'TD02-P01', 1, 2, 'TRONG'),
(2, 'TD02-P02', 1, 2, 'TRONG'),
(5, 'TD04-P03', 2, 1, 'DANG_THUE'),
(6, 'TD04-P04', 2, 1, 'DANG_THUE'),
(7, 'VD02-P05', 5, 2, 'TRONG'),
(8, 'VD02-P06', 5, 2, 'TRONG'),
(9, 'VD04-P07', 6, 2, 'TRONG'),
(10, 'VD04-P08', 6, 3, 'TRONG'),
(11, 'GD06-P09', 7, 3, 'TRONG'),
(12, 'GD06-P10', 7, 3, 'TRONG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sudungdichvu`
--

DROP TABLE IF EXISTS `sudungdichvu`;
CREATE TABLE IF NOT EXISTS `sudungdichvu` (
  `MaSuDung` int NOT NULL AUTO_INCREMENT,
  `MaPhieuThue` int NOT NULL,
  `MaDichVu` int NOT NULL,
  `SoLuong` int DEFAULT NULL,
  `ThanhTien` decimal(18,2) DEFAULT NULL,
  `NgaySuDung` datetime DEFAULT NULL,
  `MaPhong` int NOT NULL,
  `MaNhanVien` int DEFAULT NULL,
  PRIMARY KEY (`MaSuDung`),
  KEY `FK_SDDV_Phieu` (`MaPhieuThue`),
  KEY `FK_SDDV_DichVu` (`MaDichVu`),
  KEY `FK_SDDV_Phong` (`MaPhong`),
  KEY `FK_SDDV_NhanVien` (`MaNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `sudungdichvu`
--

INSERT INTO `sudungdichvu` (`MaSuDung`, `MaPhieuThue`, `MaDichVu`, `SoLuong`, `ThanhTien`, `NgaySuDung`, `MaPhong`, `MaNhanVien`) VALUES
(33, 171, 5, 2, 20000.00, '2026-07-04 23:24:43', 1, NULL),
(34, 171, 5, 1, 10000.00, '2026-07-04 23:24:34', 2, NULL),
(36, 171, 3, 1, 100.00, '2026-07-04 23:25:24', 1, NULL),
(38, 189, 1, 1, 100000.00, '2026-07-10 01:09:41', 2, NULL),
(39, 192, 1, 2, 200000.00, '2026-07-10 01:09:44', 1, NULL),
(40, 196, 1, 1, 100000.00, '2026-07-11 02:04:04', 5, NULL),
(41, 196, 12, 1, 200000.00, '2026-07-11 02:04:22', 5, NULL),
(44, 192, 6, 2, 30000.00, '2026-07-11 02:31:16', 1, NULL),
(45, 197, 1, 1, 100000.00, '2026-07-11 02:41:06', 6, NULL),
(46, 192, 16, 1, 150000.00, '2026-07-11 02:45:07', 1, NULL),
(47, 192, 6, 1, 15000.00, '2026-07-11 23:54:39', 1, NULL),
(48, 192, 6, 5, 75000.00, '2026-07-12 00:09:31', 1, NULL),
(49, 192, 1, 1, 100000.00, '2026-07-12 00:06:03', 1, NULL),
(52, 192, 18, 1, 100000.00, '2026-07-12 00:10:15', 1, NULL),
(53, 192, 10, 1, 0.00, '2026-07-12 00:10:53', 1, NULL),
(54, 192, 20, 1, 50000.00, '2026-07-12 00:11:05', 1, NULL),
(55, 192, 24, 5, 10000.00, '2026-07-12 00:37:26', 1, NULL),
(56, 198, 1, 1, 100000.00, '2026-07-16 22:30:23', 2, NULL),
(57, 198, 15, 1, 100000.00, '2026-07-16 22:30:33', 2, NULL),
(58, 199, 1, 1, 100000.00, '2026-07-16 22:34:50', 1, NULL),
(59, 199, 12, 1, 200000.00, '2026-07-16 22:34:56', 5, NULL),
(60, 202, 15, 2, 200000.00, '2026-07-17 00:22:59', 7, NULL),
(61, 203, 9, 1, -199000.00, '2026-07-21 23:11:10', 9, NULL),
(62, 204, 5, 1, 10000.00, '2026-07-22 14:05:41', 1, NULL),
(63, 205, 1, 1, 100000.00, '2026-07-24 01:04:03', 2, 2),
(64, 205, 5, 2, 20000.00, '2026-07-24 01:10:39', 2, 20),
(65, 205, 6, 1, 15000.00, '2026-07-24 01:10:10', 2, 20),
(66, 206, 1, 1, 100000.00, '2026-07-24 01:27:35', 7, 2),
(68, 206, 24, 100, 200000.00, '2026-07-24 01:28:07', 7, 2),
(72, 209, 1, 1, 100000.00, '2026-07-24 01:45:24', 5, 2),
(73, 209, 5, 11, 110000.00, '2026-07-24 01:45:45', 5, 2),
(74, 209, 7, 1, 20000.00, '2026-07-24 01:46:00', 5, 2),
(76, 209, 6, 2, 30000.00, '2026-07-24 01:46:47', 5, 2),
(77, 211, 12, 1, 200000.00, '2026-08-07 10:38:12', 11, 2),
(78, 213, 1, 1, 100000.00, '2026-08-07 10:40:39', 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaTaiKhoan` int NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `MaVaiTro` int NOT NULL,
  `TrangThai` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`MaTaiKhoan`),
  UNIQUE KEY `TenDangNhap` (`TenDangNhap`),
  KEY `FK_TaiKhoan_VaiTro` (`MaVaiTro`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `MaVaiTro`, `TrangThai`) VALUES
(1, 'ad', '1', 1, 1),
(3, 'lt', '1', 2, 1),
(8, '1', '123456tt', 2, 1),
(10, 'ad1', '1', 1, 1),
(11, '22', '2', 1, 1),
(12, 'a', '1', 1, 0),
(13, 'tai', '1', 2, 0),
(14, 'nhan', '123456789TAI', 2, 1),
(15, 'tai1', '1', 2, 1),
(16, 'danh', '1', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro`
--

DROP TABLE IF EXISTS `vaitro`;
CREATE TABLE IF NOT EXISTS `vaitro` (
  `MaVaiTro` int NOT NULL AUTO_INCREMENT,
  `TenVaiTro` varchar(50) NOT NULL,
  PRIMARY KEY (`MaVaiTro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `vaitro`
--

INSERT INTO `vaitro` (`MaVaiTro`, `TenVaiTro`) VALUES
(1, 'quanly'),
(2, 'letan');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD CONSTRAINT `FK_CTDat_KhachHang` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CTDat_Phieu` FOREIGN KEY (`MaPhieuDat`) REFERENCES `phieudatphong` (`MaPhieuDat`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CTDat_Phong` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Các ràng buộc cho bảng `chitietthuephong`
--
ALTER TABLE `chitietthuephong`
  ADD CONSTRAINT `FK_CTThue_Khach` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CTThue_Phieu` FOREIGN KEY (`MaPhieuThue`) REFERENCES `phieuthuephong` (`MaPhieuThue`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CTThue_Phong` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_HoaDon_NhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `FK_HoaDon_Phieu` FOREIGN KEY (`MaPhieuThue`) REFERENCES `phieuthuephong` (`MaPhieuThue`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `FK_NhanVien_TaiKhoan` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `FK_PhanCong_NV` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`);

--
-- Các ràng buộc cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `FK_PhieuDat_KhachHang` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `FK_PhieuDat_NhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`);

--
-- Các ràng buộc cho bảng `phieuthuephong`
--
ALTER TABLE `phieuthuephong`
  ADD CONSTRAINT `FK_PhieuThue_KhachHang` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `FK_PhieuThue_NhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_Phong_LoaiPhong` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `loaiphong` (`MaLoaiPhong`);

--
-- Các ràng buộc cho bảng `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  ADD CONSTRAINT `FK_SDDV_DichVu` FOREIGN KEY (`MaDichVu`) REFERENCES `dichvu` (`MaDichVu`),
  ADD CONSTRAINT `FK_SDDV_NhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `FK_SDDV_Phieu` FOREIGN KEY (`MaPhieuThue`) REFERENCES `phieuthuephong` (`MaPhieuThue`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SDDV_Phong` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_TaiKhoan_VaiTro` FOREIGN KEY (`MaVaiTro`) REFERENCES `vaitro` (`MaVaiTro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
