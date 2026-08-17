-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 27, 2026 lúc 08:37 AM
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
-- Cơ sở dữ liệu: `dbphongkham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_phan_cong_ca_lam`
--

DROP TABLE IF EXISTS `bang_phan_cong_ca_lam`;
CREATE TABLE IF NOT EXISTS `bang_phan_cong_ca_lam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` int NOT NULL,
  `phong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_lam` time DEFAULT NULL,
  `gio_ket_thuc` time DEFAULT NULL,
  `thu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phancong_nhanvien` (`ma_nhan_vien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benh_nhan`
--

DROP TABLE IF EXISTS `benh_nhan`;
CREATE TABLE IF NOT EXISTS `benh_nhan` (
  `ma_benh_nhan` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nghe_nghiep` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nhom_mau` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `di_ung_thuoc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nguoi_giam_ho` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `so_dien_thoai_nguoi_giam_ho` varchar(20) DEFAULT NULL,
  `ghi_chu` text,
  `cccd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gioi_tinh` bit(2) NOT NULL,
  PRIMARY KEY (`ma_benh_nhan`),
  UNIQUE KEY `UNQ_cccd` (`cccd`),
  UNIQUE KEY `UNQ_sdt` (`so_dien_thoai`),
  UNIQUE KEY `UNQ_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_so_kham_tong_hop`
--

DROP TABLE IF EXISTS `chi_so_kham_tong_hop`;
CREATE TABLE IF NOT EXISTS `chi_so_kham_tong_hop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_kham` int NOT NULL,
  `ma_nhan_vien_nhap` int DEFAULT NULL,
  `nhiet_do` float DEFAULT NULL,
  `nhip_tim` int DEFAULT NULL,
  `nhip_tho` int DEFAULT NULL,
  `huyet_ap_tam_thu` int DEFAULT NULL,
  `huyet_ap_tam_truong` int DEFAULT NULL,
  `can_nang` float DEFAULT NULL,
  `chieu_cao` float DEFAULT NULL,
  `spo2` float DEFAULT NULL,
  `vong_dau` float DEFAULT NULL,
  `tinh_trang_dinh_duong` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tam_ly_hanh_vi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kham_tai_mui_hong_nhi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kham_ho_hap_nhi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kham_da_niem_mac_nhi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `co_quan_khac_nhi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tinh_trang_rang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sau_rang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cao_rang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viem_nuou` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khop_can` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `niem_mac_mieng` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `do_lung_lay` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phu_hinh_cu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `benh_ly_khac_rhm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thinh_luc_tai_trai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thinh_luc_tai_phai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinh_trang_mui` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinh_trang_hong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soi_tai_mui_hong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ong_tai` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mang_nhi_phai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mang_nhi_trai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vach_ngan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuon_mui` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khe_mui` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amidan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thanh_quan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cholesterol` float DEFAULT NULL,
  `hdl_cholesterol` float DEFAULT NULL,
  `ldl_cholesterol` float DEFAULT NULL,
  `triglyceride` float DEFAULT NULL,
  `duong_huyet` float DEFAULT NULL,
  `ecg_ket_qua` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sieu_am_tim` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ghi_chu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_phieukham_tonghop` (`ma_phieu_kham`),
  KEY `FK_MaNVnhap` (`ma_nhan_vien_nhap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_chi_dinh`
--

DROP TABLE IF EXISTS `chi_tiet_chi_dinh`;
CREATE TABLE IF NOT EXISTS `chi_tiet_chi_dinh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_chi_dinh` int NOT NULL,
  `ma_dich_vu` int NOT NULL,
  `so_luong` int DEFAULT '1',
  `don_gia` decimal(10,2) NOT NULL,
  `trang_thai_dv` varchar(20) DEFAULT 'CHUA_THUC_HIEN',
  `ma_nhan_vien_thuc_hien` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-maphieuchidinh` (`ma_phieu_chi_dinh`),
  KEY `fk-madv` (`ma_dich_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuc_vu`
--

DROP TABLE IF EXISTS `chuc_vu`;
CREATE TABLE IF NOT EXISTS `chuc_vu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_chuc_vu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_chuc_vu` (`ten_chuc_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_khoa`
--

DROP TABLE IF EXISTS `chuyen_khoa`;
CREATE TABLE IF NOT EXISTS `chuyen_khoa` (
  `ma_chuyen_khoa` int NOT NULL AUTO_INCREMENT,
  `ten_chuyen_khoa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mo_ta` text,
  `so_luong_toi_da` int DEFAULT NULL,
  PRIMARY KEY (`ma_chuyen_khoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_hoa_don`
--

DROP TABLE IF EXISTS `ct_hoa_don`;
CREATE TABLE IF NOT EXISTS `ct_hoa_don` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_hoa_don` int NOT NULL,
  `noi_dung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `loai_muc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_goc` int DEFAULT NULL,
  `so_luong` int DEFAULT '1',
  `don_gia` decimal(15,2) DEFAULT '0.00',
  `thanh_tien` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `FK_mahoadoan` (`ma_hoa_don`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_toa_thuoc`
--

DROP TABLE IF EXISTS `ct_toa_thuoc`;
CREATE TABLE IF NOT EXISTS `ct_toa_thuoc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_toa_thuoc` int NOT NULL,
  `ma_thuoc` int NOT NULL,
  `lieu_dung` varchar(100) DEFAULT NULL COMMENT 'VD: 3 lần/ngày',
  `sang` varchar(50) DEFAULT NULL COMMENT 'Sáng',
  `trua` varchar(50) DEFAULT NULL COMMENT 'Trưa',
  `chieu` varchar(50) DEFAULT NULL COMMENT 'Chiều',
  `toi` varchar(50) DEFAULT NULL COMMENT 'Tối',
  `so_ngay` int NOT NULL,
  `cach_dung` text COMMENT 'Ghi chú/Lời dặn chi tiết của bác sĩ',
  `thoi_diem_dung` varchar(100) DEFAULT NULL COMMENT 'VD: Sau ăn, Trước ngủ',
  PRIMARY KEY (`id`),
  KEY `FK_ToaThuoc_CTToaThuoc` (`ma_toa_thuoc`),
  KEY `FK_CTToaThuoc_MaThuoc` (`ma_thuoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_kham_benh`
--

DROP TABLE IF EXISTS `dang_ky_kham_benh`;
CREATE TABLE IF NOT EXISTS `dang_ky_kham_benh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_benh_nhan` int NOT NULL,
  `ma_nhan_vien` int DEFAULT NULL,
  `ma_chuyen_khoa` int NOT NULL,
  `so_thu_tu` int NOT NULL,
  `thoi_gian_dang_ky` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` enum('DA_THUC_HIEN_CLS','CHI_DINH_CLS','CHO_CLS','CHO_KHAM','DANG_KHAM','VANG_MAT','CHO_KHAM_BS','DA_KHAM','HUY','DOI_CHUYEN_KHOA') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'CHO_KHAM',
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ma_phieu_kham` int DEFAULT NULL,
  `ma_chi_tiet_chi_dinh` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dkbn_benhnhan` (`ma_benh_nhan`),
  KEY `fk_dkbn_nhanvien` (`ma_nhan_vien`),
  KEY `fk_dkbn_chuyenkhoa` (`ma_chuyen_khoa`),
  KEY `fk_dk_phieukham` (`ma_phieu_kham`),
  KEY `fk_dk_mactcd` (`ma_chi_tiet_chi_dinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
CREATE TABLE IF NOT EXISTS `dich_vu` (
  `ma_dich_vu` int NOT NULL AUTO_INCREMENT,
  `ten_dich_vu` varchar(50) NOT NULL,
  `don_gia` decimal(10,2) NOT NULL,
  `loai_dich_vu` varchar(50) DEFAULT NULL,
  `phong` int NOT NULL,
  `ma_chuyen_khoa` int DEFAULT NULL,
  PRIMARY KEY (`ma_dich_vu`),
  KEY `FK_PHONG_DV` (`phong`),
  KEY `FK_CK_CK` (`ma_chuyen_khoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `ma_hoa_don` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_kham` int NOT NULL,
  `ma_nhan_vien` int NOT NULL,
  `tong_tien` decimal(15,2) DEFAULT NULL,
  `ngay_thanh_toan` datetime DEFAULT CURRENT_TIMESTAMP,
  `ghi_chu` text,
  `trang_thai` varchar(20) NOT NULL DEFAULT '"chua thanh toan"',
  PRIMARY KEY (`ma_hoa_don`),
  KEY `ma_phieu_kham` (`ma_phieu_kham`),
  KEY `ma_thu_ngan` (`ma_nhan_vien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ket_qua_cdha`
--

DROP TABLE IF EXISTS `ket_qua_cdha`;
CREATE TABLE IF NOT EXISTS `ket_qua_cdha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_chi_tiet_chi_dinh` int NOT NULL,
  `mo_ta_hinh_anh` text,
  `ket_luan` text,
  `de_nghi` text,
  `duong_dan_anh_1` text,
  `duong_dan_anh_2` varchar(255) DEFAULT NULL,
  `ngay_thuc_hien` datetime DEFAULT CURRENT_TIMESTAMP,
  `ma_bac_si_thuc_hien` int DEFAULT NULL,
  `ma_nhan_vien_thuc_hien` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_MACT` (`id_chi_tiet_chi_dinh`),
  KEY `fk_mabs` (`ma_bac_si_thuc_hien`),
  KEY `FK_MANVTHUCHIEN` (`ma_nhan_vien_thuc_hien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kham_lam_sang`
--

DROP TABLE IF EXISTS `kham_lam_sang`;
CREATE TABLE IF NOT EXISTS `kham_lam_sang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_kham` int NOT NULL,
  `ly_do_kham` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tien_su_ban_than` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `benh_su` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chan_doan_so_bo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loi_dan_bac_si` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ket_qua_kham_can_lam_sang` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kham_lam_sang` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma_phieu_kham` (`ma_phieu_kham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_tai_kham`
--

DROP TABLE IF EXISTS `lich_tai_kham`;
CREATE TABLE IF NOT EXISTS `lich_tai_kham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_benh_nhan` int NOT NULL,
  `ma_chuyen_khoa` int NOT NULL,
  `ma_phieu_kham` int DEFAULT NULL,
  `ma_nhan_vien` int NOT NULL,
  `ngay_tai_kham` date NOT NULL,
  `ghi_chu` text,
  `trang_thai` enum('CHUA_DEN','DA_DEN','HOAN') DEFAULT 'CHUA_DEN',
  `da_gui_thong_bao` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ma_benh_nhan` (`ma_benh_nhan`),
  KEY `ma_phieu_kham` (`ma_phieu_kham`),
  KEY `fk_lichtaikhamnhanvien` (`ma_nhan_vien`),
  KEY `fk_idck` (`ma_chuyen_khoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `ma_nhan_vien` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gioi_tinh` bit(2) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `chuyen_khoa` varchar(30) DEFAULT NULL,
  `bang_cap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `chuc_vu` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ngay_vao_lam` date DEFAULT NULL,
  `cccd` varchar(20) NOT NULL,
  PRIMARY KEY (`ma_nhan_vien`),
  UNIQUE KEY `unique_cccd` (`cccd`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_sdt` (`so_dien_thoai`),
  KEY `FK_CV_NV` (`chuc_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
CREATE TABLE IF NOT EXISTS `nha_cung_cap` (
  `ma_nha_cung_cap` int NOT NULL AUTO_INCREMENT,
  `ten_nha_cung_cap` varchar(100) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `ghi_chu` text,
  `so_dien_thoai` varchar(20) NOT NULL,
  PRIMARY KEY (`ma_nha_cung_cap`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `so_dien_thoai` (`so_dien_thoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_chi_dinh`
--

DROP TABLE IF EXISTS `phieu_chi_dinh`;
CREATE TABLE IF NOT EXISTS `phieu_chi_dinh` (
  `ma_phieu_chi_dinh` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_kham` int NOT NULL,
  `ma_nhan_vien_chi_dinh` int NOT NULL,
  `ngay_chi_dinh` datetime DEFAULT CURRENT_TIMESTAMP,
  `tong_tien` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`ma_phieu_chi_dinh`),
  KEY `fk-manvv` (`ma_nhan_vien_chi_dinh`),
  KEY `fk-maphieukham` (`ma_phieu_kham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_kham`
--

DROP TABLE IF EXISTS `phieu_kham`;
CREATE TABLE IF NOT EXISTS `phieu_kham` (
  `ma_phieu_kham` int NOT NULL AUTO_INCREMENT,
  `ma_benh_nhan` int NOT NULL,
  `ma_nhan_vien` int NOT NULL,
  `ma_chuyen_khoa` int DEFAULT NULL,
  `ngay_kham` datetime DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Đang khám',
  `ghi_chu` text,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_phieu_kham`),
  KEY `ma_benh_nhan` (`ma_benh_nhan`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`),
  KEY `ma_chuyen_khoa` (`ma_chuyen_khoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_chuc_nang`
--

DROP TABLE IF EXISTS `phong_chuc_nang`;
CREATE TABLE IF NOT EXISTS `phong_chuc_nang` (
  `ma_phong` int NOT NULL AUTO_INCREMENT,
  `ten_phong` varchar(50) NOT NULL,
  `loai_phong` varchar(50) NOT NULL,
  `ma_chuyen_khoa` int DEFAULT NULL,
  `ma_chuc_vu` int DEFAULT NULL,
  PRIMARY KEY (`ma_phong`),
  UNIQUE KEY `ten_phong` (`ten_phong`),
  KEY `fk_phong_chuyenkhoa` (`ma_chuyen_khoa`),
  KEY `fk_phong_chucvu` (`ma_chuc_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE IF NOT EXISTS `tai_khoan` (
  `ma_tai_khoan` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `mat_khau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ma_nhan_vien` int NOT NULL,
  `vai_tro` varchar(50) DEFAULT NULL,
  `lan_dau_dang_nhap` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ma_tai_khoan`),
  KEY `FK_TK_NV` (`ma_nhan_vien`),
  KEY `FK_TaiKhoan_VaiTro` (`vai_tro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
CREATE TABLE IF NOT EXISTS `thuoc` (
  `ma_thuoc` int NOT NULL AUTO_INCREMENT,
  `ten_thuoc` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hoat_chat` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ham_luong` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dang_thuoc` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `loai_thuoc` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `don_vi_tinh` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `don_gia_nhap` decimal(15,2) DEFAULT '0.00',
  `don_gia_ban` decimal(15,2) DEFAULT '0.00',
  `ngay_san_xuat` date DEFAULT NULL,
  `han_su_dung` date DEFAULT NULL,
  `nha_san_xuat` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nuoc_san_xuat` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ghi_chu` text,
  PRIMARY KEY (`ma_thuoc`),
  UNIQUE KEY `ten_thuoc` (`ten_thuoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toa_thuoc`
--

DROP TABLE IF EXISTS `toa_thuoc`;
CREATE TABLE IF NOT EXISTS `toa_thuoc` (
  `ma_toa_thuoc` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_kham` int NOT NULL,
  `ghi_chu` text,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` varchar(30) DEFAULT 'CHO_THANH_TOAN',
  PRIMARY KEY (`ma_toa_thuoc`),
  KEY `ma_phieu_kham` (`ma_phieu_kham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

DROP TABLE IF EXISTS `vai_tro`;
CREATE TABLE IF NOT EXISTS `vai_tro` (
  `ma_vai_tro` varchar(50) NOT NULL,
  `ten_hien_thi` varchar(50) NOT NULL,
  PRIMARY KEY (`ma_vai_tro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bang_phan_cong_ca_lam`
--
ALTER TABLE `bang_phan_cong_ca_lam`
  ADD CONSTRAINT `fk_phancong_nhanvien` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chi_so_kham_tong_hop`
--
ALTER TABLE `chi_so_kham_tong_hop`
  ADD CONSTRAINT `FK_MaNVnhap` FOREIGN KEY (`ma_nhan_vien_nhap`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_maphieukham` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `chi_tiet_chi_dinh`
--
ALTER TABLE `chi_tiet_chi_dinh`
  ADD CONSTRAINT `Fk_MaDV` FOREIGN KEY (`ma_dich_vu`) REFERENCES `dich_vu` (`ma_dich_vu`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Fk_maphieuchidinh` FOREIGN KEY (`ma_phieu_chi_dinh`) REFERENCES `phieu_chi_dinh` (`ma_phieu_chi_dinh`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `ct_hoa_don`
--
ALTER TABLE `ct_hoa_don`
  ADD CONSTRAINT `fk_cthoadon` FOREIGN KEY (`ma_hoa_don`) REFERENCES `hoa_don` (`ma_hoa_don`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `ct_toa_thuoc`
--
ALTER TABLE `ct_toa_thuoc`
  ADD CONSTRAINT `Fk_MaThuoc` FOREIGN KEY (`ma_thuoc`) REFERENCES `thuoc` (`ma_thuoc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Fk_MaToaThuoc` FOREIGN KEY (`ma_toa_thuoc`) REFERENCES `toa_thuoc` (`ma_toa_thuoc`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `dang_ky_kham_benh`
--
ALTER TABLE `dang_ky_kham_benh`
  ADD CONSTRAINT `fk-mabn` FOREIGN KEY (`ma_benh_nhan`) REFERENCES `benh_nhan` (`ma_benh_nhan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-machuyenkhoa` FOREIGN KEY (`ma_chuyen_khoa`) REFERENCES `chuyen_khoa` (`ma_chuyen_khoa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-maphieukham` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_mactchidinh` FOREIGN KEY (`ma_chi_tiet_chi_dinh`) REFERENCES `chi_tiet_chi_dinh` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_manhanvien` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `dich_vu`
--
ALTER TABLE `dich_vu`
  ADD CONSTRAINT `fk-phongchucnang` FOREIGN KEY (`phong`) REFERENCES `phong_chuc_nang` (`ma_phong`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_machuyenkhoa12` FOREIGN KEY (`ma_chuyen_khoa`) REFERENCES `chuyen_khoa` (`ma_chuyen_khoa`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `fk-Manhanvien1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-mapk1` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `ket_qua_cdha`
--
ALTER TABLE `ket_qua_cdha`
  ADD CONSTRAINT `fk-mactchidinh1` FOREIGN KEY (`id_chi_tiet_chi_dinh`) REFERENCES `chi_tiet_chi_dinh` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-manv2` FOREIGN KEY (`ma_bac_si_thuc_hien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-manv3` FOREIGN KEY (`ma_nhan_vien_thuc_hien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `kham_lam_sang`
--
ALTER TABLE `kham_lam_sang`
  ADD CONSTRAINT `fk-mapk5` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `lich_tai_kham`
--
ALTER TABLE `lich_tai_kham`
  ADD CONSTRAINT `Fk_maBN` FOREIGN KEY (`ma_benh_nhan`) REFERENCES `benh_nhan` (`ma_benh_nhan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Fk_mack` FOREIGN KEY (`ma_chuyen_khoa`) REFERENCES `chuyen_khoa` (`ma_chuyen_khoa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Fk_manv` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Fk_mapk` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `phieu_chi_dinh`
--
ALTER TABLE `phieu_chi_dinh`
  ADD CONSTRAINT `fk-manvv1` FOREIGN KEY (`ma_nhan_vien_chi_dinh`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-mapkk1` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `phieu_kham`
--
ALTER TABLE `phieu_kham`
  ADD CONSTRAINT `fk-mabn1` FOREIGN KEY (`ma_benh_nhan`) REFERENCES `benh_nhan` (`ma_benh_nhan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk-manv88` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `phong_chuc_nang`
--
ALTER TABLE `phong_chuc_nang`
  ADD CONSTRAINT `fk_phong_chucvu` FOREIGN KEY (`ma_chuc_vu`) REFERENCES `chuc_vu` (`id`),
  ADD CONSTRAINT `fk_phong_chuyenkhoa` FOREIGN KEY (`ma_chuyen_khoa`) REFERENCES `chuyen_khoa` (`ma_chuyen_khoa`);

--
-- Các ràng buộc cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `fk_nv_tk` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_tk_vaitro` FOREIGN KEY (`vai_tro`) REFERENCES `vai_tro` (`ma_vai_tro`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `toa_thuoc`
--
ALTER TABLE `toa_thuoc`
  ADD CONSTRAINT `FK_PK_THUOC` FOREIGN KEY (`ma_phieu_kham`) REFERENCES `phieu_kham` (`ma_phieu_kham`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
