-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 10:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoplaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `TenKH` varchar(50) DEFAULT NULL,
  `GiaGoc` double DEFAULT NULL,
  `TyLeKM` double DEFAULT NULL,
  `SoLuongMua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`MaHD`, `MaSP`, `TenKH`, `GiaGoc`, `TyLeKM`, `SoLuongMua`) VALUES
(1, 3, 'Trình Thanh Tịnh', 12000000, 0, 2),
(1, 4, 'Trình Thanh Tịnh', 11000000, 0, 2),
(1, 6, 'Trình Thanh Tịnh', 9000000, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ct_khuyen_mai`
--

CREATE TABLE `ct_khuyen_mai` (
  `MaKM` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `TyLeKM` double DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `MaDG` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `TenDangNhap` varchar(50) DEFAULT NULL,
  `SoSao` int(11) DEFAULT NULL,
  `NoiDung` varchar(50) DEFAULT NULL,
  `NgayDG` date DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`MaDG`, `MaSP`, `TenDangNhap`, `SoSao`, `NoiDung`, `NgayDG`, `TrangThai`) VALUES
(1, 3, 'thanhtinh', 5, 'quá ok!', '2022-06-23', b'1'),
(2, 4, 'thanhtinh', 3, 'không tốt', '2022-11-04', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `MaThue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danh_muc`
--

INSERT INTO `danh_muc` (`MaDM`, `TenDM`, `TrangThai`, `MaThue`) VALUES
(1, 'Laptop Gaming', b'1', 1),
(2, 'Laptop Văn phòng', b'1', 1),
(3, 'Laptop cũ', b'1', 1),
(4, 'Laptop HS/SV', b'1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `MaHD` int(11) NOT NULL,
  `TenDangNhap` varchar(50) DEFAULT NULL,
  `NgayHD` date DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(1000) DEFAULT NULL,
  `HoTenNN` varchar(1000) DEFAULT NULL,
  `GhiChu` varchar(100) DEFAULT NULL,
  `TrangThai` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`MaHD`, `TenDangNhap`, `NgayHD`, `SDT`, `DiaChi`, `HoTenNN`, `GhiChu`, `TrangThai`) VALUES
(1, 'thanhtinh', '2022-06-23', '0355520976', 'Tam Kỳ ,Quảng Nam', 'Trình Thanh Tịnh', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) DEFAULT NULL,
  `TuNgay` date DEFAULT NULL,
  `DenNgay` date DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loai_tk`
--

CREATE TABLE `loai_tk` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai_tk`
--

INSERT INTO `loai_tk` (`MaLoai`, `TenLoai`, `TrangThai`) VALUES
(1, 'user', b'1'),
(2, 'admin', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `nhap_xuat`
--

CREATE TABLE `nhap_xuat` (
  `MaNhapXuat` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `GiaNhap` double DEFAULT NULL,
  `GiaXuat` double DEFAULT NULL,
  `NgayApDung` date DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) DEFAULT NULL,
  `DonGia` double DEFAULT NULL,
  `HinhAnh` varchar(50) DEFAULT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `MoTa` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`MaSP`, `TenSP`, `DonGia`, `HinhAnh`, `MaDM`, `TrangThai`, `MoTa`) VALUES
(2, 'HP 14-DQ2055 i3', 12000000, 'upload/h2.jpg', 2, b'1', '<p><span>HP 14 DQ2055 thiết kế đẹp với t&ocirc;ng m&agrave;u bạc sang trọng, gi&aacute; th&agrave;nh rẻ v&agrave; cấu h&igrave;nh mượt m&agrave; l&agrave; lựa chọn đ&aacute;ng gi&aacute; trong ph&acirc;n kh&uacute;c dưới 15 triệu.</span></p>'),
(3, 'HP 15-DY2095WM', 12000000, 'upload/h3.jpg', 3, b'1', '<p><span>HP 15 dy2095wm với gi&aacute; th&agrave;nh cạnh tranh c&ugrave;ng cấu h&igrave;nh Core i5 thế hệ mới nhất đến từ Intel chắc chắn mang đến trải nghiệm sử dụng ngo&agrave;i mong đợi.</span></p>'),
(4, 'HP Probook 640G3', 11000000, 'upload/h4.jpg', 3, b'1', '<p><span>Tiếp nối th&agrave;nh c&ocirc;ng của phi&ecirc;n bản trước, HP Probook 640G3 vẫn c&oacute; thiết kế gọn g&agrave;ng, cấu h&igrave;nh i5 thế hệ 7 dễ d&agrave;ng sử dụng c&aacute;c t&aacute;c vụ v&agrave; l&agrave;m việc h&agrave;ng ng&agrave;y.</span></p>'),
(6, 'HP Probook 640G2', 9000000, 'upload/h5.jpg', 3, b'1', '<p><br /><span>HP Probook 640G2 c&oacute; thiết kế gọn g&agrave;ng, chắc chắn c&ugrave;ng cấu h&igrave;nh i5 thế hệ 6 dễ d&agrave;ng sử dụng v&agrave; l&agrave;m việc h&agrave;ng ng&agrave;y. M&agrave;n h&igrave;nh 14 inch với mức gi&aacute; dễ chịu trong ph&acirc;n kh&uacute;c dưới 10 triệu đồng.</span></p>'),
(7, 'Dell Inspiron 5537', 33000000, 'upload/h6.jpg', 3, b'1', '<p><span>Thuộc d&ograve;ng laptop tầm trung Dell Inspiron 5537 l&agrave; thế hệ tiếp nối Dell Inspiron 5000 series, với thiết kế rất sang trọng, hiện đại, sở hữu mức gi&aacute; hợp l&yacute; c&ugrave;ng cấu h&igrave;nh ổn định b&ecirc;n trong. Sản phẩm th&iacute;ch hợp với nhu cầu giải tr&iacute; bởi n&oacute; được trang bị card đồ họa rời 2GB c&ugrave;ng m&agrave;n h&igrave;nh rộng 15.6 inch.</span></p>'),
(8, 'HP 14-CF2224NIA', 12000000, 'upload/h7.jpg', 4, b'1', '<p><span>Sở hữu vẻ ngo&agrave;i đen b&oacute;ng c&ugrave;ng hiệu năng ấn tượng với chip Intel thế hệ 10 v&agrave; Card đồ họa rời, HP 14-CF2224NIA mang đến trải nghiệm học tập hằng ng&agrave;y, l&agrave;m việc văn ph&ograve;ng v&agrave; giải tr&iacute; g&oacute;i gọn trong chiếc Laptop 14 inch.</span></p>'),
(9, 'HP Pavilion X360 14M-DY1033DX', 30000000, 'upload/h8.jpg', 2, b'1', '<p><span>Nhắc đến HP, hẳn nhiều người thường nghĩ ngay đến một h&atilde;ng sản xuất m&aacute;y t&iacute;nh lu&ocirc;n cho ra những mẫu m&aacute;y c&oacute; thiết kế đẹp mắt bậc nhất hiện nay. Một thiết kế kh&aacute; mới mẻ đến từ d&ograve;ng m&aacute;y Pavilion, kh&ocirc;ng c&ograve;n bo tr&ograve;n c&aacute;c g&oacute;c của m&aacute;y, cải thiện kh&aacute; nhiều về h&igrave;nh thức khi c&aacute;c đường n&eacute;t được chăm ch&uacute;t tỉ mỉ hơn</span></p>'),
(10, 'Dell Vostro 3405', 22000000, 'upload/h9.jpg', 1, b'1', '<p><span>Dell Vostro 3405 mang trong m&igrave;nh sức mạnh tuyệt vời của chip xử l&yacute; AMD Ryzen R5-3500U. Tốc độ xung nhịp 2.1Ghz tối đa l&ecirc;n đến 3.7GHz. Thiết kế đơn giản, mỏng nhẹ nhưng v&ocirc; c&ugrave;ng mạnh mẽ.</span></p>'),
(11, 'Dell Inspiron 3505', 25000000, 'upload/h10.jpg', 1, b'1', '<p><span>Dell Inspiron 3505 mang trong m&igrave;nh sức mạnh tuyệt vời của chip xử l&yacute; AMD Ryzen R5-3450U . Tốc độ xung nhịp 2.1Ghz tối đa l&ecirc;n đến 3.5GHz. Thiết kế đơn giản, mỏng nhẹ nhưng v&ocirc; c&ugrave;ng mạnh mẽ. T&iacute;nh năng cảm ứng c&ugrave;ng độ ho&agrave;n thiện về thiết kế của Laptop Dell chắc chắn mang đến trải nghiệm sử dụng tuyệt vời nhất.</span></p>'),
(12, 'Lenovo IdeaPad 5 ', 33000000, 'upload/h11.jpg', 2, b'1', '<p><span>Lenovo IdeaPad 5 14ITL05 chip Core i5 sở hữu vẻ ngo&agrave;i trẻ trung, năng động v&agrave; mỏng nhẹ. C&ugrave;ng hi&ecirc;u năng mượt m&agrave; sẵn s&agrave;ng chinh phục c&aacute;c thử th&aacute;ch trong c&ocirc;ng việc v&agrave; học tập với mức gi&aacute; ph&ugrave; hợp trong ph&acirc;n kh&uacute;c dưới 20 triệu đồng.</span></p>'),
(13, 'Dell Inspiron 5510', 25000000, 'upload/h12.jpg', 1, b'1', '<p><span>Dell Inspiron 5510 c&oacute; m&agrave;n h&igrave;nh lớn 15,6 inch Full HD sắc n&eacute;t, gi&uacute;p bạn c&oacute; kh&ocirc;ng gian l&agrave;m việc v&agrave; giải tr&iacute; rộng hơn. Đặc biệt, với sức mạnh từ bộ vi xử l&yacute; Intel i5 hiệu năng cao HQ, laptop c&oacute; khả năng đ&aacute;p ứng ho&agrave;n hảo mọi t&aacute;c vụ.</span></p>'),
(14, 'HP 15-dw3033dx', 33000000, 'upload/h13.jpg', 2, b'1', '<p><span>HP 15-dw3033dx sở hữu thiết kế đẹp nhất trong ph&acirc;n kh&uacute;c Laptop mới gi&aacute; dưới 15 triệu đồng với t&ocirc;ng m&agrave;u bạc sang trọng. Cấu h&igrave;nh core i3 thế hệ 11 mang đến trải nghiệm sử dụng mượt m&agrave;.</span></p>'),
(15, 'HP 15-DY2091WM', 33000000, 'upload/h14.jpg', 3, b'1', '<p><span>HP 15-dy2091wm Với thiết kế cạnh viền bo tr&ograve;n &ocirc;m gọn đem lại cảm gi&aacute;c th&acirc;n thiện ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n. Xử l&yacute; đa nhiệm khi sở hữu Bộ xử l&yacute; Intel Core i3-1115G4 Thế hệ 11 mới nhất, tốc độ xung nhịp l&ecirc;n đến 4.1GHz tăng tốc l&agrave;m việc hiệu quả.</span></p>'),
(16, 'Asus R565EA-UH31T', 22000000, 'upload/h15.jpg', 4, b'1', '<p><span>Với mức gi&aacute; rẻ c&ugrave;ng thiết kế đẹp mắt, dễ d&agrave;ng sử dụng c&ugrave;ng hiệu năng ổn định, Asus Vivobook R565EA-UH31T xứng đ&aacute;ng l&agrave; chiếc Laptop l&agrave;m h&agrave;i l&ograve;ng người d&ugrave;ng.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) DEFAULT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `MaLoai` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`TenDangNhap`, `MatKhau`, `HoTen`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `MaLoai`, `TrangThai`) VALUES
('thanhtinh', '123', 'Trình Thanh Tịnh', b'1', '0355520976', 'abc@gmail.com', 'Tam Kỳ ,Quảng Nam', 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `thue`
--

CREATE TABLE `thue` (
  `MaThue` int(11) NOT NULL,
  `TenThue` varchar(50) DEFAULT NULL,
  `TyLeThue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thue`
--

INSERT INTO `thue` (`MaThue`, `TenThue`, `TyLeThue`) VALUES
(1, 'vat', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `ct_khuyen_mai`
--
ALTER TABLE `ct_khuyen_mai`
  ADD PRIMARY KEY (`MaKM`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MaDG`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `TenDangNhap` (`TenDangNhap`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`MaDM`),
  ADD KEY `MaThue` (`MaThue`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `TenDangNhap` (`TenDangNhap`);

--
-- Indexes for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Indexes for table `loai_tk`
--
ALTER TABLE `loai_tk`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `nhap_xuat`
--
ALTER TABLE `nhap_xuat`
  ADD PRIMARY KEY (`MaNhapXuat`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`TenDangNhap`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `thue`
--
ALTER TABLE `thue`
  ADD PRIMARY KEY (`MaThue`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `MaDG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `thue`
--
ALTER TABLE `thue`
  MODIFY `MaThue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `chi_tiet_hoa_don_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `san_pham` (`MaSP`),
  ADD CONSTRAINT `chi_tiet_hoa_don_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoa_don` (`MaHD`);

--
-- Constraints for table `ct_khuyen_mai`
--
ALTER TABLE `ct_khuyen_mai`
  ADD CONSTRAINT `ct_khuyen_mai_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `san_pham` (`MaSP`),
  ADD CONSTRAINT `ct_khuyen_mai_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyen_mai` (`MaKM`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `san_pham` (`MaSP`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`TenDangNhap`) REFERENCES `tai_khoan` (`TenDangNhap`);

--
-- Constraints for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD CONSTRAINT `danh_muc_ibfk_1` FOREIGN KEY (`MaThue`) REFERENCES `thue` (`MaThue`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`TenDangNhap`) REFERENCES `tai_khoan` (`TenDangNhap`);

--
-- Constraints for table `nhap_xuat`
--
ALTER TABLE `nhap_xuat`
  ADD CONSTRAINT `nhap_xuat_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `san_pham` (`MaSP`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`MaDM`) REFERENCES `danh_muc` (`MaDM`);

--
-- Constraints for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `tai_khoan_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai_tk` (`MaLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
