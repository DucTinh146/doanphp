-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 18, 2022 lúc 12:36 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'tinhadmin', 'da6e0b91b8321b2b75bcf7bc7740d9ea', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(10, 'Áo Gucii', '<p><strong>&Aacute;o được SALE 50%</strong></p>\r\n', '<p><strong>&Aacute;o được SALE 50%</strong></p>\r\n', 9, 1, '1647510843_5.jpg'),
(11, 'Tin tức về quần áo', '<p><strong>&Aacute;o kho&aacute;c được giảm n&egrave;</strong></p>\r\n', '<p><strong>&Aacute;o kho&aacute;c được giảm n&egrave;</strong></p>\r\n', 9, 1, '1647512554_aokhoac.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(2, 0, '5838', 1),
(3, 0, '7491', 1),
(4, 13, '6591', 1),
(5, 17, '5080', 0),
(6, 18, '9488', 0),
(7, 18, '8943', 0),
(8, 19, '7385', 0),
(9, 19, '9680', 0),
(10, 19, '7105', 0),
(11, 18, '9971', 1),
(12, 18, '2510', 1),
(13, 18, '3840', 1),
(14, 18, '5173', 1),
(15, 20, '225', 1),
(16, 21, '8608', 0),
(17, 22, '5559', 1),
(18, 22, '2649', 1),
(19, 22, '3572', 1),
(20, 22, '6005', 1),
(21, 23, '603', 1),
(22, 23, '1244', 1),
(23, 23, '2072', 1),
(24, 23, '703', 1),
(25, 23, '5323', 0),
(26, 23, '4138', 1),
(27, 24, '2335', 1),
(28, 24, '2503', 1),
(29, 24, '6345', 1),
(30, 24, '5081', 1),
(31, 24, '4247', 1),
(32, 24, '91', 1),
(33, 24, '8729', 1),
(34, 24, '2104', 1),
(35, 24, '512', 1),
(36, 24, '8683', 1),
(37, 24, '9491', 1),
(38, 24, '193', 1),
(39, 24, '5678', 1),
(40, 24, '2605', 1),
(41, 24, '7658', 1),
(42, 24, '6788', 1),
(43, 24, '5038', 1),
(44, 24, '3310', 1),
(45, 24, '6034', 1),
(46, 24, '5193', 1),
(47, 24, '2436', 1),
(48, 24, '3349', 1),
(49, 24, '1885', 1),
(50, 24, '3227', 1),
(51, 24, '8220', 1),
(52, 24, '5629', 1),
(53, 24, '4547', 1),
(54, 24, '4470', 1),
(55, 24, '7236', 1),
(56, 24, '7182', 1),
(57, 23, '9286', 1),
(58, 23, '3697', 1),
(59, 23, '854', 1),
(60, 23, '2809', 1),
(61, 23, '5340', 1),
(62, 23, '6212', 1),
(63, 23, '6114', 1),
(64, 23, '7028', 1),
(65, 23, '4438', 1),
(66, 23, '1924', 1),
(67, 23, '2690', 1),
(68, 23, '4332', 1),
(69, 23, '9802', 1),
(70, 23, '3942', 1),
(71, 23, '8958', 1),
(72, 23, '3123', 1),
(73, 23, '6786', 1),
(74, 23, '7609', 1),
(75, 23, '4310', 1),
(76, 23, '7713', 1),
(77, 23, '4531', 1),
(78, 23, '7093', 1),
(79, 23, '9348', 1),
(80, 23, '7717', 1),
(81, 23, '6890', 1),
(82, 23, '5398', 1),
(83, 23, '8905', 1),
(84, 25, '971', 1),
(85, 26, '8238', 1),
(86, 26, '6092', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(2, '5838', 20, 1),
(3, '7491', 20, 1),
(4, '7491', 27, 1),
(5, '6591', 20, 1),
(6, '6591', 27, 1),
(7, '5080', 20, 1),
(8, '5080', 27, 1),
(9, '9488', 32, 1),
(10, '8943', 29, 1),
(11, '8943', 32, 1),
(12, '7385', 29, 1),
(13, '7385', 20, 1),
(14, '9680', 20, 3),
(15, '7105', 29, 3),
(16, '9971', 29, 1),
(17, '2510', 31, 1),
(18, '3840', 27, 2),
(19, '5173', 32, 2),
(20, '5173', 29, 2),
(21, '225', 20, 2),
(22, '225', 32, 2),
(23, '8608', 20, 3),
(24, '8608', 32, 3),
(25, '5559', 20, 1),
(26, '5559', 32, 1),
(27, '5559', 27, 1),
(28, '2649', 20, 1),
(29, '6005', 32, 1),
(30, '6005', 20, 1),
(31, '603', 32, 1),
(32, '603', 27, 1),
(33, '1244', 32, 2),
(34, '1244', 29, 2),
(35, '703', 31, 1),
(36, '703', 29, 1),
(37, '5323', 27, 1),
(38, '5323', 32, 1),
(39, '4138', 31, 1),
(40, '4138', 29, 1),
(41, '4138', 27, 1),
(42, '2335', 20, 2),
(43, '2335', 32, 2),
(44, '2503', 32, 2),
(45, '2503', 31, 1),
(46, '6345', 32, 1),
(47, '5081', 20, 1),
(48, '4247', 20, 1),
(49, '91', 20, 1),
(50, '8729', 27, 1),
(51, '2104', 20, 1),
(52, '512', 32, 1),
(53, '512', 31, 1),
(54, '8683', 27, 2),
(55, '9491', 29, 1),
(56, '193', 32, 1),
(57, '5678', 27, 1),
(58, '2605', 20, 3),
(59, '7658', 20, 1),
(60, '6788', 20, 1),
(61, '5038', 20, 1),
(62, '3310', 20, 1),
(63, '6034', 20, 1),
(64, '5193', 27, 1),
(65, '2436', 20, 2),
(66, '3349', 27, 2),
(67, '1885', 20, 1),
(68, '1885', 32, 1),
(69, '3227', 27, 1),
(70, '3227', 32, 1),
(71, '8220', 32, 2),
(72, '8220', 31, 2),
(73, '5629', 27, 1),
(74, '5629', 29, 1),
(75, '4547', 20, 1),
(76, '4547', 32, 1),
(77, '4470', 20, 1),
(78, '7236', 20, 1),
(79, '7236', 32, 1),
(80, '7182', 27, 1),
(81, '7182', 32, 1),
(82, '9286', 29, 4),
(83, '9286', 20, 1),
(84, '3697', 27, 2),
(85, '854', 20, 2),
(86, '854', 31, 3),
(87, '2809', 20, 1),
(88, '2809', 27, 1),
(89, '2809', 32, 2),
(90, '2809', 31, 1),
(91, '5340', 31, 2),
(92, '5340', 20, 2),
(93, '6212', 32, 1),
(94, '6212', 29, 1),
(95, '6114', 20, 1),
(96, '7028', 20, 1),
(97, '4438', 20, 1),
(98, '9802', 20, 1),
(99, '9802', 32, 1),
(100, '3942', 20, 2),
(101, '8958', 20, 2),
(102, '3123', 29, 1),
(103, '3123', 27, 1),
(104, '6786', 20, 1),
(105, '7093', 20, 1),
(106, '9348', 20, 1),
(107, '7717', 46, 1),
(108, '7717', 36, 1),
(109, '6890', 46, 4),
(110, '5398', 46, 1),
(111, '5398', 40, 1),
(112, '8905', 40, 1),
(113, '8905', 38, 1),
(114, '8905', 42, 1),
(115, '971', 41, 1),
(116, '8238', 41, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(23, 'tinh', 'ductinh1462@gmail.com', '12asd', '4297f44b13955235245b2497399d7a93', '09222'),
(24, 'tinh', 'ductinh1462@gmail.com', '12asd', '4297f44b13955235245b2497399d7a93', '09222'),
(25, '', '', '', '4297f44b13955235245b2497399d7a93', ''),
(26, 'tinh', 'ductinh146@gmail.com', '12asd', '4297f44b13955235245b2497399d7a93', '09222'),
(27, 'tinh', 'ductinh146@gmail.com', '12asd', '4297f44b13955235245b2497399d7a93', '09222');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(53, 'Phụ kiện Nam', 1),
(54, 'Dây nịt', 2),
(55, 'Mắt kính', 3),
(56, 'Áo', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(9, 'SALE', 1),
(10, 'Bộ sưu tập', 2),
(11, 'LIFE STYLE', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, 'Liên hệ chúng tôi qua đường dây nóng :0932687847 hoặc Gmail:ductinh146@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `masp` varchar(255) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensp`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(15, 'Gucii', 'sp01', '100000', 2, '1646473688_123.jpg', '', '', 1, 52),
(27, 'Gucii', 'SP01', '100000', 100, '1646634288_5.jpg', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', 0, 56),
(33, 'Gucii đen', 'SP02', '200000', 100, '1647508438_ao2.jpg', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', 1, 56),
(34, 'Gucii trơn', 'SP03', '200000', 100, '1647508592_ao4.jpg', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', 1, 56),
(35, 'Gucii áo sơ mi', 'SP04', '900000', 100, '1647508748_images (1).jpg', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', 1, 56),
(36, 'Áo khoác Gucci', 'SP05', '1000000', 100, '1647508998_aokhoac.jpg', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', '<p><strong>Thương hiệu The House of Gucci</strong>&nbsp;hay được biết đến ngắn gọn l&agrave; Gucci, l&agrave; một biểu tượng thời trang sở hữu bởi &Yacute; v&agrave; Ph&aacute;p, một nh&atilde;n hiệu đồ da nổi tiếng. C&aacute;c d&ograve;ng sản phẩm của h&atilde;ng bao gồm t&uacute;i x&aacute;ch, đồ may sẵn, gi&agrave;y d&eacute;p phụ kiện, đồ trang điểm, nước hoa v&agrave; đồ trang tr&iacute; nh&agrave; cửa.&nbsp;</p>\r\n', 1, 56),
(37, 'Mắt kính Gucci', 'SP11', '1000000', 100, '1647509144_mk.jpg', '<p><strong>Gucci đ&atilde; s&aacute;ng tạo v&agrave; cho ra mắt c&aacute;c sản phẩm k&iacute;nh mắt thời trang đẳng cấp, thu h&uacute;t v&agrave; bảo vệ mắt cực kỳ an to&agrave;n<img alt=\"cheeky\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></strong></p>\r\n', '<p><strong>Gucci đ&atilde; s&aacute;ng tạo v&agrave; cho ra mắt c&aacute;c sản phẩm k&iacute;nh mắt thời trang đẳng cấp, thu h&uacute;t v&agrave; bảo vệ mắt cực kỳ an to&agrave;n<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"kiss\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/kiss.png\" style=\"height:23px; width:23px\" title=\"kiss\" /></strong></p>\r\n', 1, 55),
(38, 'Kính mát', 'SP12', '1200000', 100, '1647509283_km.jpg', '<p><strong><em>Gucci đ&atilde; s&aacute;ng tạo v&agrave; cho ra mắt c&aacute;c sản phẩm k&iacute;nh mắt thời trang đẳng cấp, thu h&uacute;t v&agrave; bảo vệ mắt cực kỳ an to&agrave;n<img alt=\"kiss\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/kiss.png\" style=\"height:23px; width:23px\" title=\"kiss\" /></em></strong></p>\r\n', '<p><em><strong>Gucci đ&atilde; s&aacute;ng tạo v&agrave; cho ra mắt c&aacute;c sản phẩm k&iacute;nh mắt thời trang đẳng cấp, thu h&uacute;t v&agrave; bảo vệ mắt cực kỳ an to&agrave;n<img alt=\"yes\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></strong></em></p>\r\n', 1, 55),
(39, 'Mắt kính gọng tròn', 'SP13', '200000', 100, '1647509880_gongtron.jpg', '<p><em><strong><span style=\"font-size:14px\">Được biết đến l&agrave; d&ograve;ng k&iacute;nh sang trọng, được nhiều chị em lựa chọn với kiểu d&aacute;ng bắt mắt, thời trang v&agrave; mới lạ. Điều lu&ocirc;n được b&aacute;n hết l&agrave; thiết kế nhỏ gọn v&agrave; vu&ocirc;ng vắn v&igrave; dễ phối n&ecirc;n tạo cảm gi&aacute;c sang trọng.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></span></strong></em></p>\r\n', '<p><em><strong><span style=\"font-size:14px\">Được biết đến l&agrave; d&ograve;ng k&iacute;nh sang trọng, được nhiều chị em lựa chọn với kiểu d&aacute;ng bắt mắt, thời trang v&agrave; mới lạ. Điều lu&ocirc;n được b&aacute;n hết l&agrave; thiết kế nhỏ gọn v&agrave; vu&ocirc;ng vắn v&igrave; dễ phối n&ecirc;n tạo cảm gi&aacute;c sang trọng.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</span></strong></em></p>\r\n', 1, 55),
(40, 'Kính công nghệ', 'SP14', '100000', 2100000, '1647509999_kinhcongnghe.jpg', '<p><em><strong>Được biết đến l&agrave; d&ograve;ng k&iacute;nh sang trọng, được nhiều chị em lựa chọn với kiểu d&aacute;ng bắt mắt, thời trang v&agrave; mới lạ. Điều lu&ocirc;n được b&aacute;n hết l&agrave; thiết kế nhỏ gọn v&agrave; vu&ocirc;ng vắn v&igrave; dễ phối n&ecirc;n tạo cảm gi&aacute;c sang trọng.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</strong></em></p>\r\n', '<p><em><strong>Được biết đến l&agrave; d&ograve;ng k&iacute;nh sang trọng, được nhiều chị em lựa chọn với kiểu d&aacute;ng bắt mắt, thời trang v&agrave; mới lạ. Điều lu&ocirc;n được b&aacute;n hết l&agrave; thiết kế nhỏ gọn v&agrave; vu&ocirc;ng vắn v&igrave; dễ phối n&ecirc;n tạo cảm gi&aacute;c sang trọng.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</strong></em></p>\r\n', 1, 55),
(41, 'Kính chống ánh sáng xanh', 'SP15', '2000000', 100, '1647510040_màn hình xanh.jpg', '<p><em><strong>Được biết đến l&agrave; d&ograve;ng k&iacute;nh sang trọng, được nhiều chị em lựa chọn với kiểu d&aacute;ng bắt mắt, thời trang v&agrave; mới lạ. Điều lu&ocirc;n được b&aacute;n hết l&agrave; thiết kế nhỏ gọn v&agrave; vu&ocirc;ng vắn v&igrave; dễ phối n&ecirc;n tạo cảm gi&aacute;c sang trọng.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</strong></em></p>\r\n', '<p><em><strong>Được biết đến l&agrave; d&ograve;ng k&iacute;nh sang trọng, được nhiều chị em lựa chọn với kiểu d&aacute;ng bắt mắt, thời trang v&agrave; mới lạ. Điều lu&ocirc;n được b&aacute;n hết l&agrave; thiết kế nhỏ gọn v&agrave; vu&ocirc;ng vắn v&igrave; dễ phối n&ecirc;n tạo cảm gi&aacute;c sang trọng.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</strong></em></p>\r\n', 1, 55),
(42, 'Dây nịt gucii', 'SP21', '200000', 100, '1647510296_daynit1.jpg', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"kiss\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/kiss.png\" style=\"height:23px; width:23px\" title=\"kiss\" />​​​​​​​</p>\r\n', 1, 54),
(43, 'Dây nịt Gucci đen', 'SP22', '100000', 100, '1647510325_daynit2.jpg', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', 1, 54),
(44, 'Dây nịt da bò', 'SP33', '100000', 100, '1647510580_daynit3.jpg', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', 1, 54),
(45, 'Dây nịt đơn giản', 'SP34', '100000', 100, '1647510625_daynit4.jpg', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', 1, 54),
(46, 'Dây nịt màu vàng', 'SP34', '100000', 100, '1647510677_daynit5.jpg', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', '<p><em><strong>D&acirc;y bằng da b&ograve; tự nhi&ecirc;n sản xuất tr&ecirc;n c&ocirc;ng nghệ hiện đại cho độ bền cao. Phần mặt kh&oacute;a từ chất liệu kim loại đặc biệt của Gucci, mạ v&agrave;ng s&aacute;ng b&oacute;ng kh&ocirc;ng han gỉ, kh&ocirc;ng bong tr&oacute;c theo thời gian</strong></em>.<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.17.2/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />​​​​​​​</p>\r\n', 1, 54);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(1, 'sss', '123123', 'ádasd', '123sad', 0),
(7, 'ww', '13123', 'ádasd21', 'aa', 26);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
