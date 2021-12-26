-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 03:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uproduct_nbs_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_addresses`
--

CREATE TABLE `sma_addresses` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustments`
--

CREATE TABLE `sma_adjustments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustments`
--

INSERT INTO `sma_adjustments` (`id`, `date`, `reference_no`, `warehouse_id`, `note`, `attachment`, `created_by`, `updated_by`, `updated_at`, `count_id`) VALUES
(13, '2021-08-20 00:04:00', '2021/08/0009', 1, '', NULL, 1, NULL, NULL, NULL),
(12, '2021-08-19 23:51:00', '2021/08/0008', 1, '', NULL, 1, NULL, NULL, NULL),
(11, '2021-08-19 23:39:00', '2021/08/0007', 1, '', NULL, 1, NULL, NULL, NULL),
(8, '2021-08-18 17:33:00', '2021/08/0001', 1, '', NULL, 1, NULL, NULL, NULL),
(14, '2021-08-20 11:46:00', '2021/08/0010', 1, '', NULL, 1, NULL, NULL, NULL),
(15, '2021-08-20 12:13:00', '2021/08/0011', 1, '', NULL, 1, NULL, NULL, NULL),
(16, '2021-08-20 12:15:00', '2021/08/0012', 1, '', NULL, 1, NULL, NULL, NULL),
(17, '2021-08-20 12:17:00', '2021/08/0013', 1, '', NULL, 1, NULL, NULL, NULL),
(18, '2021-08-20 12:40:00', '2021/08/0014', 1, '', NULL, 1, NULL, NULL, NULL),
(19, '2021-08-21 11:49:00', '2021/08/0015', 1, '', NULL, 1, NULL, NULL, NULL),
(20, '2021-08-21 11:52:00', '2021/08/0016', 1, '', NULL, 1, NULL, NULL, NULL),
(21, '2021-08-21 11:52:00', '2021/08/0017', 1, '', NULL, 1, NULL, NULL, NULL),
(22, '2021-08-21 11:54:00', '2021/08/0018', 1, '', NULL, 1, NULL, NULL, NULL),
(23, '2021-08-21 12:07:00', '2021/08/0019', 1, '', NULL, 1, NULL, NULL, NULL),
(24, '2021-08-21 12:14:00', '2021/08/0020', 1, '', NULL, 1, NULL, NULL, NULL),
(25, '2021-08-21 12:18:00', '2021/08/0021', 1, '', NULL, 1, NULL, NULL, NULL),
(26, '2021-08-21 12:20:00', '2021/08/0022', 1, '', NULL, 1, NULL, NULL, NULL),
(27, '2021-08-21 12:22:00', '2021/08/0023', 1, '', NULL, 1, NULL, NULL, NULL),
(28, '2021-08-21 12:27:00', '2021/08/0024', 1, '', NULL, 1, NULL, NULL, NULL),
(29, '2021-08-21 12:28:00', '2021/08/0025', 1, '', NULL, 1, NULL, NULL, NULL),
(30, '2021-08-21 12:28:00', '2021/08/0026', 1, '', NULL, 1, NULL, NULL, NULL),
(31, '2021-08-21 12:37:00', '2021/08/0027', 1, '', NULL, 1, NULL, NULL, NULL),
(32, '2021-08-21 12:46:00', '2021/08/0028', 1, '', NULL, 1, NULL, NULL, NULL),
(33, '2021-08-21 12:53:00', '2021/08/0029', 1, '', NULL, 1, NULL, NULL, NULL),
(34, '2021-08-21 17:32:00', '2021/08/0030', 1, '', NULL, 1, NULL, NULL, NULL),
(35, '2021-08-21 17:33:00', '2021/08/0031', 1, '', NULL, 1, NULL, NULL, NULL),
(36, '2021-08-21 18:20:00', '2021/08/0032', 1, '', NULL, 1, NULL, NULL, NULL),
(37, '2021-08-21 18:25:00', '2021/08/0033', 1, '', NULL, 1, NULL, NULL, NULL),
(38, '2021-08-21 18:32:00', '2021/08/0034', 1, '', NULL, 1, NULL, NULL, NULL),
(39, '2021-08-23 02:39:00', '2021/08/0035', 1, '', NULL, 1, NULL, NULL, NULL),
(40, '2021-08-23 02:48:00', '2021/08/0036', 1, '', NULL, 1, NULL, NULL, NULL),
(41, '2021-08-23 02:51:00', '2021/08/0037', 1, '', NULL, 1, NULL, NULL, NULL),
(42, '2021-08-23 02:55:00', '2021/08/0038', 1, '', NULL, 1, NULL, NULL, NULL),
(43, '2021-08-23 02:57:00', '2021/08/0039', 1, '', NULL, 1, NULL, NULL, NULL),
(44, '2021-08-23 02:59:00', '2021/08/0040', 1, '', NULL, 1, NULL, NULL, NULL),
(45, '2021-08-23 03:02:00', '2021/08/0041', 1, '', NULL, 1, NULL, NULL, NULL),
(46, '2021-08-23 03:05:00', '2021/08/0042', 1, '', NULL, 1, NULL, NULL, NULL),
(47, '2021-08-23 03:09:00', '2021/08/0043', 1, '', NULL, 1, NULL, NULL, NULL),
(48, '2021-08-23 03:13:00', '2021/08/0044', 1, '', NULL, 1, NULL, NULL, NULL),
(49, '2021-08-23 03:19:00', '2021/08/0045', 1, '', NULL, 1, NULL, NULL, NULL),
(50, '2021-08-23 03:22:00', '2021/08/0046', 1, '', NULL, 1, NULL, NULL, NULL),
(51, '2021-08-23 03:24:00', '2021/08/0047', 1, '', NULL, 1, NULL, NULL, NULL),
(52, '2021-08-23 03:29:00', '2021/08/0048', 1, '', NULL, 1, NULL, NULL, NULL),
(53, '2021-08-22 13:39:00', '2021/08/0049', 1, '', NULL, 1, NULL, NULL, NULL),
(54, '2021-08-22 13:39:00', '2021/08/0050', 1, '', NULL, 1, NULL, NULL, NULL),
(55, '2021-08-22 13:44:00', '2021/08/0051', 1, '', NULL, 1, NULL, NULL, NULL),
(56, '2021-08-22 13:57:00', '2021/08/0052', 1, '', NULL, 1, NULL, NULL, NULL),
(57, '2021-08-22 13:58:00', '2021/08/0053', 1, '', NULL, 1, NULL, NULL, NULL),
(58, '2021-08-22 14:03:00', '2021/08/0054', 1, '', NULL, 1, NULL, NULL, NULL),
(59, '2021-08-22 14:04:00', '2021/08/0055', 1, '', NULL, 1, NULL, NULL, NULL),
(60, '2021-08-22 14:06:00', '2021/08/0056', 1, '', NULL, 1, NULL, NULL, NULL),
(61, '2021-08-22 14:07:00', '2021/08/0057', 1, '', NULL, 1, NULL, NULL, NULL),
(62, '2021-08-23 20:13:00', '2021/08/0058', 1, '', NULL, 1, NULL, NULL, NULL),
(63, '2021-08-23 15:06:00', '2021/08/0059', 1, '', NULL, 1, NULL, NULL, NULL),
(64, '2021-08-23 22:35:00', '2021/08/0060', 1, '', NULL, 1, NULL, NULL, NULL),
(65, '2021-08-23 22:39:00', '2021/08/0061', 1, '', NULL, 1, NULL, NULL, NULL),
(66, '2021-08-23 22:41:00', '2021/08/0062', 1, '', NULL, 1, NULL, NULL, NULL),
(67, '2021-08-25 03:05:00', '2021/08/0063', 1, '', NULL, 1, NULL, NULL, NULL),
(68, '2021-08-25 03:28:00', '2021/08/0064', 1, '', NULL, 1, NULL, NULL, NULL),
(69, '2021-08-25 19:44:00', '2021/08/0065', 1, '', NULL, 1, NULL, NULL, NULL),
(70, '2021-08-25 19:54:00', '2021/08/0066', 1, '', NULL, 1, NULL, NULL, NULL),
(71, '2021-08-25 23:11:00', '2021/08/0067', 1, '', NULL, 1, NULL, NULL, NULL),
(72, '2021-08-26 01:10:00', '2021/08/0068', 1, '', NULL, 1, NULL, NULL, NULL),
(73, '2021-08-26 01:48:00', '2021/08/0069', 1, '', NULL, 1, NULL, NULL, NULL),
(74, '2021-08-26 01:48:00', '2021/08/0070', 1, '', NULL, 1, NULL, NULL, NULL),
(75, '2021-08-26 02:14:00', '2021/08/0071', 1, '', NULL, 1, NULL, NULL, NULL),
(76, '2021-08-26 02:14:00', '2021/08/0072', 1, '', NULL, 1, NULL, NULL, NULL),
(77, '2021-08-26 02:15:00', '2021/08/0073', 1, '', NULL, 1, NULL, NULL, NULL),
(78, '2021-08-26 02:16:00', '2021/08/0074', 1, '', NULL, 1, NULL, NULL, NULL),
(79, '2021-08-26 02:16:00', '2021/08/0075', 1, '', NULL, 1, NULL, NULL, NULL),
(80, '2021-08-26 02:45:00', '2021/08/0076', 1, '', NULL, 1, NULL, NULL, NULL),
(81, '2021-08-27 11:49:00', '2021/08/0077', 1, '', NULL, 1, NULL, NULL, NULL),
(82, '2021-08-27 11:49:00', '2021/08/0078', 1, '', NULL, 1, NULL, NULL, NULL),
(83, '2021-08-27 11:51:00', '2021/08/0079', 1, '', NULL, 1, NULL, NULL, NULL),
(84, '2021-08-27 12:09:00', '2021/08/0080', 1, '', NULL, 1, NULL, NULL, NULL),
(85, '2021-08-27 12:47:00', '2021/08/0081', 1, '', NULL, 1, NULL, NULL, NULL),
(86, '2021-08-27 12:50:00', '2021/08/0082', 1, '', NULL, 1, NULL, NULL, NULL),
(87, '2021-08-27 12:59:00', '2021/08/0083', 1, '', NULL, 1, NULL, NULL, NULL),
(88, '2021-08-27 13:48:00', '2021/08/0084', 1, '', NULL, 1, NULL, NULL, NULL),
(89, '2021-08-27 23:13:00', '2021/08/0085', 1, '', NULL, 1, NULL, NULL, NULL),
(90, '2021-08-27 23:48:00', '2021/08/0086', 1, '', NULL, 1, NULL, NULL, NULL),
(91, '2021-08-27 23:53:00', '2021/08/0087', 1, '', NULL, 1, NULL, NULL, NULL),
(92, '2021-08-28 00:02:00', '2021/08/0088', 1, '', NULL, 1, NULL, NULL, NULL),
(93, '2021-08-28 00:06:00', '2021/08/0089', 1, '', NULL, 1, NULL, NULL, NULL),
(94, '2021-08-28 00:10:00', '2021/08/0090', 1, '', NULL, 1, NULL, NULL, NULL),
(95, '2021-08-28 00:21:00', '2021/08/0091', 1, '', NULL, 1, NULL, NULL, NULL),
(96, '2021-08-28 00:30:00', '2021/08/0092', 1, '', NULL, 1, NULL, NULL, NULL),
(97, '2021-08-28 00:33:00', '2021/08/0093', 1, '', NULL, 1, NULL, NULL, NULL),
(98, '2021-08-28 12:48:00', '2021/08/0094', 1, '', NULL, 1, NULL, NULL, NULL),
(99, '2021-08-28 12:49:00', '2021/08/0095', 1, '', NULL, 1, NULL, NULL, NULL),
(100, '2021-08-28 12:50:00', '2021/08/0096', 1, '', NULL, 1, NULL, NULL, NULL),
(101, '2021-08-28 12:55:00', '2021/08/0097', 1, '', NULL, 1, NULL, NULL, NULL),
(102, '2021-08-28 13:05:00', '2021/08/0098', 1, '', NULL, 1, NULL, NULL, NULL),
(103, '2021-08-28 13:11:00', '2021/08/0099', 1, '', NULL, 1, NULL, NULL, NULL),
(104, '2021-08-28 13:15:00', '2021/08/0100', 1, '', NULL, 1, NULL, NULL, NULL),
(105, '2021-08-28 13:34:00', '2021/08/0101', 1, '', NULL, 1, NULL, NULL, NULL),
(106, '2021-08-28 13:39:00', '2021/08/0102', 1, '', NULL, 1, NULL, NULL, NULL),
(107, '2021-08-28 13:44:00', '2021/08/0103', 1, '', NULL, 1, NULL, NULL, NULL),
(108, '2021-08-28 20:59:00', '2021/08/0104', 1, '', NULL, 1, NULL, NULL, NULL),
(109, '2021-08-28 21:02:00', '2021/08/0105', 1, '', NULL, 1, NULL, NULL, NULL),
(110, '2021-08-28 21:07:00', '2021/08/0106', 1, '', NULL, 1, NULL, NULL, NULL),
(111, '2021-08-28 21:11:00', '2021/08/0107', 1, '', NULL, 1, NULL, NULL, NULL),
(112, '2021-08-29 17:26:00', '2021/08/0108', 1, '', NULL, 1, NULL, NULL, NULL),
(113, '2021-08-29 17:31:00', '2021/08/0109', 1, '', NULL, 1, NULL, NULL, NULL),
(114, '2021-08-29 17:37:00', '2021/08/0110', 1, '', NULL, 1, NULL, NULL, NULL),
(115, '2021-08-29 17:43:00', '2021/08/0111', 1, '', NULL, 1, NULL, NULL, NULL),
(116, '2021-08-29 17:48:00', '2021/08/0112', 1, '', NULL, 1, NULL, NULL, NULL),
(117, '2021-08-29 18:07:00', '2021/08/0113', 1, '', NULL, 1, NULL, NULL, NULL),
(118, '2021-08-29 18:18:00', '2021/08/0114', 1, '', NULL, 1, NULL, NULL, NULL),
(119, '2021-08-29 18:18:00', '2021/08/0115', 1, '', NULL, 1, NULL, NULL, NULL),
(120, '2021-08-29 18:43:00', '2021/08/0116', 1, '', NULL, 1, NULL, NULL, NULL),
(121, '2021-08-29 19:04:00', '2021/08/0117', 1, '', NULL, 1, NULL, NULL, NULL),
(122, '2021-08-29 19:05:00', '2021/08/0118', 1, '', NULL, 1, NULL, NULL, NULL),
(123, '2021-08-29 19:13:00', '2021/08/0119', 1, '', NULL, 1, NULL, NULL, NULL),
(124, '2021-08-29 19:19:00', '2021/08/0120', 1, '', NULL, 1, NULL, NULL, NULL),
(125, '2021-08-29 19:22:00', '2021/08/0121', 1, '', NULL, 1, NULL, NULL, NULL),
(126, '2021-08-29 19:23:00', '2021/08/0122', 1, '', NULL, 1, NULL, NULL, NULL),
(127, '2021-08-29 19:24:00', '2021/08/0123', 1, '', NULL, 1, NULL, NULL, NULL),
(128, '2021-08-29 19:29:00', '2021/08/0124', 1, '', NULL, 1, NULL, NULL, NULL),
(129, '2021-08-29 19:38:00', '2021/08/0125', 1, '', NULL, 1, NULL, NULL, NULL),
(130, '2021-08-30 14:11:00', '2021/08/0126', 1, '', NULL, 1, NULL, NULL, NULL),
(131, '2021-08-30 14:18:00', '2021/08/0127', 1, '', NULL, 1, NULL, NULL, NULL),
(132, '2021-09-05 00:26:00', '2021/09/0128', 1, '', NULL, 1, NULL, NULL, NULL),
(133, '2021-09-05 00:35:00', '2021/09/0129', 1, '', NULL, 1, NULL, NULL, NULL),
(134, '2021-09-05 00:40:00', '2021/09/0130', 1, '', NULL, 1, NULL, NULL, NULL),
(135, '2021-09-05 00:45:00', '2021/09/0131', 1, '', NULL, 1, NULL, NULL, NULL),
(136, '2021-09-05 00:48:00', '2021/09/0132', 1, '', NULL, 1, NULL, NULL, NULL),
(137, '2021-09-05 00:52:00', '2021/09/0133', 1, '', NULL, 1, NULL, NULL, NULL),
(138, '2021-09-05 01:19:00', '2021/09/0134', 1, '', NULL, 1, NULL, NULL, NULL),
(139, '2021-09-05 01:28:00', '2021/09/0135', 1, '', NULL, 1, NULL, NULL, NULL),
(140, '2021-09-05 01:33:00', '2021/09/0136', 1, '', NULL, 1, NULL, NULL, NULL),
(141, '2021-09-05 01:37:00', '2021/09/0137', 1, '', NULL, 1, NULL, NULL, NULL),
(142, '2021-09-05 01:42:00', '2021/09/0138', 1, '', NULL, 1, NULL, NULL, NULL),
(143, '2021-09-05 12:28:00', '2021/09/0139', 1, '', NULL, 1, NULL, NULL, NULL),
(144, '2021-09-05 12:37:00', '2021/09/0140', 1, '', NULL, 1, NULL, NULL, NULL),
(145, '2021-09-05 12:49:00', '2021/09/0141', 1, '', NULL, 1, NULL, NULL, NULL),
(146, '2021-09-05 13:23:00', '2021/09/0142', 1, '', NULL, 1, NULL, NULL, NULL),
(147, '2021-09-05 13:36:00', '2021/09/0143', 1, '', NULL, 1, NULL, NULL, NULL),
(148, '2021-09-05 13:50:00', '2021/09/0144', 1, '', NULL, 1, NULL, NULL, NULL),
(149, '2021-09-05 15:10:00', '2021/09/0145', 1, '', NULL, 1, NULL, NULL, NULL),
(150, '2021-09-05 15:21:00', '2021/09/0146', 1, '', NULL, 1, NULL, NULL, NULL),
(151, '2021-09-05 15:38:00', '2021/09/0147', 1, '', NULL, 1, NULL, NULL, NULL),
(152, '2021-09-05 15:42:00', '2021/09/0148', 1, '', NULL, 1, NULL, NULL, NULL),
(153, '2021-09-05 15:56:00', '2021/09/0149', 1, '', NULL, 1, NULL, NULL, NULL),
(154, '2021-09-05 16:27:00', '2021/09/0150', 1, '', NULL, 1, NULL, NULL, NULL),
(155, '2021-09-06 11:18:00', '2021/09/0151', 1, '', NULL, 1, NULL, NULL, NULL),
(156, '2021-09-06 19:40:00', '2021/09/0152', 1, '', NULL, 1, NULL, NULL, NULL),
(157, '2021-09-06 19:41:00', '2021/09/0153', 1, '', NULL, 1, NULL, NULL, NULL),
(158, '2021-09-09 19:55:00', '2021/09/0154', 1, '', NULL, 1, NULL, NULL, NULL),
(159, '2021-09-09 19:56:00', '2021/09/0155', 1, '', NULL, 1, NULL, NULL, NULL),
(160, '2021-09-09 20:01:00', '2021/09/0156', 1, '', NULL, 1, NULL, NULL, NULL),
(161, '2021-09-09 20:04:00', '2021/09/0157', 1, '', NULL, 1, NULL, NULL, NULL),
(162, '2021-09-09 20:06:00', '2021/09/0158', 1, '', NULL, 1, NULL, NULL, NULL),
(163, '2021-09-09 20:23:00', '2021/09/0159', 1, '', NULL, 1, NULL, NULL, NULL),
(164, '2021-09-09 20:24:00', '2021/09/0160', 1, '', NULL, 1, NULL, NULL, NULL),
(165, '2021-09-09 20:27:00', '2021/09/0161', 1, '', NULL, 1, NULL, NULL, NULL),
(166, '2021-09-19 14:34:00', '2021/09/0162', 1, '', NULL, 1, NULL, NULL, NULL),
(167, '2021-09-19 14:38:00', '2021/09/0163', 1, '', NULL, 1, NULL, NULL, NULL),
(168, '2021-09-19 14:39:00', '2021/09/0164', 1, '', NULL, 1, NULL, NULL, NULL),
(169, '2021-09-19 14:43:00', '2021/09/0165', 1, '', NULL, 1, NULL, NULL, NULL),
(170, '2021-09-19 14:45:00', '2021/09/0166', 1, '', NULL, 1, NULL, NULL, NULL),
(171, '2021-09-30 21:22:00', '2021/09/0167', 1, '', NULL, 1, NULL, NULL, NULL),
(172, '2021-10-04 15:02:00', '2021/10/0168', 1, '', NULL, 1, NULL, NULL, NULL),
(173, '2021-10-04 15:05:00', '2021/10/0169', 1, '', NULL, 1, NULL, NULL, NULL),
(174, '2021-10-04 15:09:00', '2021/10/0170', 1, '', NULL, 1, NULL, NULL, NULL),
(175, '2021-10-04 15:21:00', '2021/10/0171', 1, '', NULL, 1, NULL, NULL, NULL),
(176, '2021-10-04 15:22:00', '2021/10/0172', 1, '', NULL, 1, NULL, NULL, NULL),
(177, '2021-10-20 13:39:00', '2021/10/0173', 1, '', NULL, 1, NULL, NULL, NULL),
(178, '2021-10-24 13:57:00', '2021/10/0174', 1, '', NULL, 1, NULL, NULL, NULL),
(179, '2021-10-24 14:06:00', '2021/10/0175', 1, '', NULL, 1, NULL, NULL, NULL),
(180, '2021-10-24 14:08:00', '2021/10/0176', 1, '', NULL, 1, NULL, NULL, NULL),
(181, '2021-10-25 19:32:00', '2021/10/0177', 1, '', NULL, 1, NULL, NULL, NULL),
(182, '2021-10-25 19:39:00', '2021/10/0178', 1, '', NULL, 1, NULL, NULL, NULL),
(183, '2021-10-25 19:42:00', '2021/10/0179', 1, '', NULL, 1, NULL, NULL, NULL),
(184, '2021-10-25 19:52:00', '2021/10/0180', 1, '', NULL, 1, NULL, NULL, NULL),
(185, '2021-10-25 20:04:00', '2021/10/0181', 1, '', NULL, 1, NULL, NULL, NULL),
(186, '2021-10-25 20:07:00', '2021/10/0182', 1, '', NULL, 1, NULL, NULL, NULL),
(187, '2021-10-25 20:27:00', '2021/10/0183', 1, '', NULL, 1, NULL, NULL, NULL),
(188, '2021-10-25 21:41:00', '2021/10/0184', 1, '', NULL, 1, NULL, NULL, NULL),
(189, '2021-10-25 21:46:00', '2021/10/0185', 1, '', NULL, 1, NULL, NULL, NULL),
(190, '2021-10-25 21:50:00', '2021/10/0186', 1, '', NULL, 1, NULL, NULL, NULL),
(191, '2021-10-25 21:53:00', '2021/10/0187', 1, '', NULL, 1, NULL, NULL, NULL),
(192, '2021-10-25 21:56:00', '2021/10/0188', 1, '', NULL, 1, NULL, NULL, NULL),
(193, '2021-10-25 22:02:00', '2021/10/0189', 1, '', NULL, 1, NULL, NULL, NULL),
(194, '2021-10-25 22:04:00', '2021/10/0190', 1, '', NULL, 1, NULL, NULL, NULL),
(195, '2021-10-25 22:06:00', '2021/10/0191', 1, '', NULL, 1, NULL, NULL, NULL),
(196, '2021-10-25 22:10:00', '2021/10/0192', 1, '', NULL, 1, NULL, NULL, NULL),
(197, '2021-10-25 22:12:00', '2021/10/0193', 1, '', NULL, 1, NULL, NULL, NULL),
(198, '2021-10-25 22:14:00', '2021/10/0194', 1, '', NULL, 1, NULL, NULL, NULL),
(199, '2021-10-25 22:19:00', '2021/10/0195', 1, '', NULL, 1, NULL, NULL, NULL),
(200, '2021-10-25 22:23:00', '2021/10/0196', 1, '', NULL, 1, NULL, NULL, NULL),
(201, '2021-10-25 22:24:00', '2021/10/0197', 1, '', NULL, 1, NULL, NULL, NULL),
(202, '2021-10-25 22:32:00', '2021/10/0198', 1, '', NULL, 1, NULL, NULL, NULL),
(203, '2021-10-25 22:32:00', '2021/10/0199', 1, '', NULL, 1, NULL, NULL, NULL),
(204, '2021-10-27 13:52:00', '2021/10/0200', 1, '', NULL, 1, NULL, NULL, NULL),
(205, '2021-10-27 13:53:00', '2021/10/0201', 1, '', NULL, 1, NULL, NULL, NULL),
(206, '2021-10-27 13:56:00', '2021/10/0202', 1, '', NULL, 1, NULL, NULL, NULL),
(207, '2021-10-27 13:57:00', '2021/10/0203', 1, '', NULL, 1, NULL, NULL, NULL),
(208, '2021-10-27 14:02:00', '2021/10/0204', 1, '', NULL, 1, NULL, NULL, NULL),
(209, '2021-10-27 14:05:00', '2021/10/0205', 1, '', NULL, 1, NULL, NULL, NULL),
(210, '2021-11-01 15:20:00', '2021/11/0206', 1, '&lt;p&gt;For Testing&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(211, '2021-12-10 20:01:00', '2021/12/0207', 1, '&lt;p&gt;for testing&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(212, '2021-12-10 20:05:00', '2021/12/0208', 1, '&lt;p&gt;12345&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(213, '2021-12-10 20:12:00', '2021/12/0209', 1, '&lt;p&gt;for testing on 11&lowbar;12&lowbar;2021&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(214, '2021-12-10 20:13:00', 'test', 1, '&lt;p&gt;for t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(215, '2021-12-10 20:21:00', 'test', 1, '&lt;p&gt;final test&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(216, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(217, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(218, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(219, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(220, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(221, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(222, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(223, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(224, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(225, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(226, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(227, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(228, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(229, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(230, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(231, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(232, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(233, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(234, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(235, '2021-12-10 20:24:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(236, '2021-12-10 20:38:00', 'test', 1, '&lt;p&gt;t1&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(237, '2021-12-11 11:03:00', 'test sale', 1, '&lt;p&gt;for testing&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(238, '2021-12-11 11:17:00', '2021/12/0210', 1, '&lt;p&gt;test&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL),
(239, '2021-12-11 18:29:00', 'test adjustment dec', 1, '&lt;p&gt;test&lt;&sol;p&gt;', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustment_items`
--

CREATE TABLE `sma_adjustment_items` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustment_items`
--

INSERT INTO `sma_adjustment_items` (`id`, `adjustment_id`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `serial_no`, `manufacture_date`, `expiry_date`, `type`) VALUES
(27, 13, 38, NULL, '40.0000', 1, '', NULL, NULL, 'subtraction'),
(26, 12, 37, NULL, '7.0000', 1, '', NULL, NULL, 'subtraction'),
(25, 8, 35, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(22, 8, 29, NULL, '80.0000', 1, '', NULL, NULL, 'addition'),
(23, 8, 28, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(24, 8, 32, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(21, 11, 36, NULL, '5.0000', 1, '', NULL, NULL, 'subtraction'),
(28, 14, 40, NULL, '33.0000', 1, '', NULL, NULL, 'addition'),
(29, 14, 39, NULL, '182.0000', 1, '', NULL, NULL, 'addition'),
(30, 15, 29, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(31, 16, 29, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(32, 17, 29, NULL, '232.0000', 1, '', NULL, NULL, 'addition'),
(33, 18, 41, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(34, 19, 46, NULL, '13.0000', 1, '', NULL, NULL, 'subtraction'),
(35, 20, 44, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(36, 21, 45, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(37, 22, 43, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(38, 23, 47, NULL, '7.0000', 1, '', NULL, NULL, 'addition'),
(39, 24, 48, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(40, 25, 48, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(41, 26, 47, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(42, 27, 46, NULL, '27.0000', 1, '', NULL, NULL, 'addition'),
(43, 28, 44, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(44, 29, 45, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(45, 30, 43, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(46, 31, 49, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(47, 32, 50, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(48, 33, 51, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(49, 34, 52, NULL, '11.0000', 1, '', NULL, NULL, 'addition'),
(50, 35, 52, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(51, 36, 52, NULL, '11.0000', 1, '', NULL, NULL, 'subtraction'),
(52, 37, 52, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(53, 38, 53, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(54, 39, 54, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(55, 40, 56, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(56, 41, 57, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(57, 42, 58, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(58, 43, 59, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(59, 44, 42, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(60, 45, 60, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(61, 46, 61, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(62, 47, 62, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(63, 48, 63, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(64, 49, 64, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(65, 50, 65, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(66, 51, 66, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(67, 52, 51, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(68, 53, 67, NULL, '80.0000', 1, '', NULL, NULL, 'addition'),
(69, 54, 68, NULL, '11.0000', 1, '', NULL, NULL, 'subtraction'),
(70, 55, 81, NULL, '9.0000', 1, '', NULL, NULL, 'addition'),
(71, 56, 69, NULL, '9.0000', 1, '', NULL, NULL, 'addition'),
(72, 57, 71, NULL, '10.0000', 1, '', NULL, NULL, 'addition'),
(73, 57, 70, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(74, 57, 72, NULL, '7.0000', 1, '', NULL, NULL, 'addition'),
(75, 58, 52, NULL, '1.0000', 1, '', NULL, NULL, 'subtraction'),
(76, 59, 53, NULL, '1.0000', 1, '', NULL, NULL, 'subtraction'),
(77, 59, 52, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(78, 60, 67, NULL, '72.0000', 1, '', NULL, NULL, 'subtraction'),
(79, 61, 68, NULL, '22.0000', 1, '', NULL, NULL, 'addition'),
(80, 62, 70, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(81, 63, 82, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(82, 63, 86, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(83, 63, 83, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(84, 64, 82, NULL, '10.0000', 1, '', NULL, NULL, 'addition'),
(85, 65, 84, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(86, 66, 86, NULL, '2.0000', 1, '', NULL, NULL, 'subtraction'),
(87, 67, 33, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(88, 68, 93, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(89, 69, 94, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(90, 70, 95, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(91, 71, 95, NULL, '9.0000', 1, '', NULL, NULL, 'addition'),
(92, 71, 96, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(93, 71, 97, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(94, 72, 98, NULL, '58.0000', 1, '', NULL, NULL, 'addition'),
(95, 72, 99, NULL, '38.0000', 1, '', NULL, NULL, 'addition'),
(96, 72, 100, NULL, '99.0000', 1, '', NULL, NULL, 'addition'),
(97, 72, 101, NULL, '31.0000', 1, '', NULL, NULL, 'addition'),
(98, 72, 102, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(99, 73, 102, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(100, 74, 101, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(101, 75, 108, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(102, 76, 109, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(103, 77, 107, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(104, 78, 103, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(105, 79, 104, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(106, 79, 105, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(107, 80, 116, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(108, 80, 115, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(109, 80, 111, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(110, 80, 114, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(111, 80, 113, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(112, 80, 112, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(113, 80, 110, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(114, 81, 117, NULL, '66.0000', 1, '', NULL, NULL, 'addition'),
(115, 82, 82, NULL, '2.0000', 1, '', NULL, NULL, 'subtraction'),
(116, 83, 86, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(117, 84, 84, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(118, 85, 118, NULL, '14.0000', 1, '', NULL, NULL, 'addition'),
(119, 86, 100, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(120, 87, 119, NULL, '36.0000', 1, '', NULL, NULL, 'addition'),
(121, 88, 120, NULL, '16.0000', 1, '', NULL, NULL, 'addition'),
(122, 89, 106, NULL, '92.0000', 1, '', NULL, NULL, 'addition'),
(123, 90, 121, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(124, 91, 122, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(125, 92, 123, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(126, 93, 124, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(127, 94, 125, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(128, 95, 126, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(129, 96, 127, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(130, 97, 128, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(131, 98, 127, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(132, 99, 125, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(133, 100, 125, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(134, 101, 131, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(135, 102, 132, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(136, 103, 133, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(137, 104, 134, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(138, 105, 135, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(139, 106, 136, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(140, 107, 137, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(141, 108, 139, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(142, 109, 140, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(143, 110, 141, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(144, 111, 142, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(145, 112, 143, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(146, 113, 144, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(147, 114, 145, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(148, 115, 146, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(149, 116, 147, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(150, 117, 148, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(151, 118, 139, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(152, 119, 140, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(153, 120, 149, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(154, 121, 146, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(155, 122, 130, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(156, 123, 150, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(157, 124, 148, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(158, 125, 125, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(159, 126, 137, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(160, 127, 138, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(161, 128, 151, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(162, 129, 152, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(163, 130, 153, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(164, 131, 154, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(165, 132, 160, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(166, 133, 161, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(167, 134, 162, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(168, 135, 162, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(169, 136, 163, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(170, 137, 155, NULL, '10.0000', 1, '', NULL, NULL, 'addition'),
(171, 138, 164, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(172, 139, 165, NULL, '7.0000', 1, '', NULL, NULL, 'addition'),
(173, 140, 166, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(174, 141, 167, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(175, 142, 168, NULL, '14.0000', 1, '', NULL, NULL, 'addition'),
(176, 143, 169, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(177, 144, 170, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(178, 145, 171, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(179, 146, 172, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(180, 147, 173, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(181, 148, 174, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(182, 149, 175, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(183, 149, 176, NULL, '3.0000', 1, '', NULL, NULL, 'addition'),
(184, 149, 177, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(185, 149, 178, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(186, 150, 179, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(187, 151, 180, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(188, 152, 181, NULL, '40.0000', 1, '', NULL, NULL, 'addition'),
(189, 153, 182, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(190, 154, 183, NULL, '3.0000', 1, '', NULL, NULL, 'subtraction'),
(191, 155, 182, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(192, 156, 187, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(193, 157, 186, NULL, '10.0000', 1, '', NULL, NULL, 'addition'),
(194, 157, 185, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(195, 158, 53, NULL, '14.0000', 1, '', NULL, NULL, 'addition'),
(196, 159, 53, NULL, '2.0000', 1, '', NULL, NULL, 'subtraction'),
(197, 160, 157, NULL, '180.0000', 1, '', NULL, NULL, 'addition'),
(198, 161, 157, NULL, '40.0000', 1, '', NULL, NULL, 'subtraction'),
(199, 162, 37, NULL, '67.0000', 1, '', NULL, NULL, 'addition'),
(200, 163, 37, NULL, '100.0000', 1, '', NULL, NULL, 'addition'),
(201, 164, 38, NULL, '100.0000', 1, '', NULL, NULL, 'addition'),
(202, 165, 37, NULL, '100.0000', 1, '', NULL, NULL, 'subtraction'),
(203, 166, 82, NULL, '30.0000', 1, '', NULL, NULL, 'addition'),
(204, 167, 82, NULL, '30.0000', 1, '', NULL, NULL, 'subtraction'),
(205, 168, 84, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(206, 169, 86, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(207, 170, 82, NULL, '15.0000', 1, '', NULL, NULL, 'addition'),
(208, 171, 82, NULL, '68.0000', 1, '', NULL, NULL, 'addition'),
(209, 172, 194, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(210, 173, 52, NULL, '26.0000', 1, '', NULL, NULL, 'addition'),
(211, 174, 81, NULL, '19.0000', 1, '', NULL, NULL, 'addition'),
(212, 175, 67, NULL, '42.0000', 1, '', NULL, NULL, 'addition'),
(213, 176, 68, NULL, '42.0000', 1, '', NULL, NULL, 'addition'),
(214, 177, 154, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(215, 177, 150, NULL, '5.0000', 1, '', NULL, NULL, 'addition'),
(216, 177, 128, NULL, '8.0000', 1, '', NULL, NULL, 'addition'),
(217, 177, 153, NULL, '7.0000', 1, '', NULL, NULL, 'addition'),
(218, 177, 130, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(219, 177, 162, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(220, 177, 163, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(221, 177, 152, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(222, 178, 196, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(223, 179, 197, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(224, 180, 128, NULL, '4.0000', 1, '', NULL, NULL, 'subtraction'),
(225, 181, 198, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(226, 182, 130, NULL, '4.0000', 1, '', NULL, NULL, 'subtraction'),
(227, 182, 199, NULL, '4.0000', 1, '', NULL, NULL, 'addition'),
(228, 183, 162, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(229, 183, 163, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(230, 184, 200, NULL, '6.0000', 1, '', NULL, NULL, 'addition'),
(231, 185, 201, NULL, '10.0000', 1, '', NULL, NULL, 'addition'),
(232, 186, 161, NULL, '100.0000', 1, '', NULL, NULL, 'addition'),
(233, 187, 161, NULL, '20.0000', 1, '', NULL, NULL, 'addition'),
(234, 188, 202, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(235, 189, 203, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(236, 190, 204, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(237, 191, 205, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(238, 192, 206, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(239, 193, 208, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(240, 194, 192, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(241, 195, 193, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(242, 196, 209, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(243, 197, 210, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(244, 198, 211, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(245, 199, 212, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(246, 200, 33, NULL, '20.0000', 1, '', NULL, NULL, 'addition'),
(247, 201, 32, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(248, 202, 188, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(249, 203, 189, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(250, 204, 116, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(251, 205, 116, NULL, '2.0000', 1, '', NULL, NULL, 'addition'),
(252, 206, 115, NULL, '25.0000', 1, '', NULL, NULL, 'addition'),
(253, 207, 119, NULL, '26.0000', 1, '', NULL, NULL, 'subtraction'),
(254, 208, 105, NULL, '1.0000', 1, '', NULL, NULL, 'subtraction'),
(255, 209, 105, NULL, '1.0000', 1, '', NULL, NULL, 'addition'),
(313, 210, 265, NULL, '5.0000', 1, '9002', '2021-11-30', '2021-12-01', 'addition'),
(346, 237, 265, NULL, '10.0000', 1, '', '0000-00-00', '0000-00-00', 'subtraction'),
(349, 238, 265, NULL, '4.0000', 1, '9001', '2021-12-01', '2021-12-31', 'subtraction'),
(351, 239, 266, NULL, '15.0000', 1, '1001', '2021-12-01', '2021-12-31', 'subtraction');

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_keys`
--

CREATE TABLE `sma_api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference` varchar(40) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_limits`
--

CREATE TABLE `sma_api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_logs`
--

CREATE TABLE `sma_api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_brands`
--

CREATE TABLE `sma_brands` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`, `slug`, `description`) VALUES
(12, 'HEMOCUE', 'HEMOCUE AB', 'a9abeefa6a801289f68ec5b4352ed6dc.png', 'hemocue-ab', 'Haemocue AB Sweden'),
(13, '', 'BLUE ARROW', NULL, 'blue-arrow', 'Blue Arrow'),
(14, '', 'AllTest', '16585079471c2ffc18561ff8611a9a6e.png', 'alltest', 'AllTest Hangzhou BioTech'),
(15, '', 'Flourecare MicroProfit', '520bb9b7387e60e2ff4849c66a9dde20.png', 'flourecare-microprofit', 'Flourecare MicroProfit'),
(16, '', 'Genrui China', '03c23c77189314ce090ad16a6bc18f7d.png', 'genrui-china', 'Manufacturer'),
(17, 'BX ', 'BIOREX UK', '251b3558a4ec2259cd893cbe5dabf95f.jpg', 'biorex-uk', 'Open Analyzer Chemistry Reagentspen General Chemistry Reagents'),
(18, 'DLAB', 'DLAB', 'ef0f15cf39a0336a5faa0fbb1d5dd05e.png', 'dlab', 'DLAB');

-- --------------------------------------------------------

--
-- Table structure for table `sma_calendar`
--

CREATE TABLE `sma_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_calendar`
--

INSERT INTO `sma_calendar` (`id`, `title`, `description`, `start`, `end`, `color`, `user_id`) VALUES
(1, 'Birthday of Sales Admin', '', '2021-08-17 00:00:00', '2021-08-18 00:00:00', '#3a87ad', 1),
(2, 'Director\'s Meeting', 'All the directors are invited', '2021-08-25 14:00:00', '2021-08-25 15:00:00', '#3a87ad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_captcha`
--

CREATE TABLE `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_cart`
--

CREATE TABLE `sma_cart` (
  `id` varchar(40) NOT NULL,
  `time` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_categories`
--

CREATE TABLE `sma_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`, `slug`, `description`) VALUES
(11, 'HAEM', 'HAEMATOLOGY  POS', '7e2bc339ec774c66c77f8a16752b34f9.jpg', 12, 'haemtology-prodcuts-solutions', 'Haematology General'),
(12, 'DM', 'Demo Category', NULL, 0, 'demo-category', 'Demo'),
(13, 'Chem', 'Dry Chemistry- Analyzer', NULL, 13, 'biochemistry', 'general Chemistry'),
(14, 'Haematology', 'HAEMATOLOGY', NULL, 14, 'haematology', 'HAEMATOLOGY General'),
(15, 'BX', 'Biorex (UK)', NULL, 12, 'biorex-uk', 'Open Analyzer Chemistry Reagents'),
(16, 'Test1', 'Test', NULL, 0, 'test', 'test'),
(17, 'Test2', 'Test', NULL, 16, 'test1', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `sma_combo_items`
--

CREATE TABLE `sma_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_combo_items`
--

INSERT INTO `sma_combo_items` (`id`, `product_id`, `item_code`, `quantity`, `unit_price`) VALUES
(6, 26, '26582301', '1.0000', '150.0000'),
(5, 26, 'HW123', '1.0000', '25.0000'),
(7, 222, '17894041', '1.0000', '999.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_companies`
--

CREATE TABLE `sma_companies` (
  `id` int(11) NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `invoice_footer` text DEFAULT NULL,
  `payment_term` int(11) DEFAULT 0,
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT 0,
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `gst_no`) VALUES
(6, NULL, 'biller', NULL, NULL, 'Dr. Adam-Yakub A. N. D.', 'NORTHLAND BIOMEDICAL SOLUTIONS', '', '24th St. Sinkor', 'Monrovia', 'Montserrado', '1000', 'Liberia', '+231775508118', 'bioemdicalsolutionsgh@gmail.com', '', '', '', '', '', '', 'Legacy of Quality Par Excellence', 0, 'changed_old_v1.png', 0, NULL, NULL, NULL, ''),
(25, 3, 'customer', 1, 'General', 'SOS Medical Center', 'SOS Medical Center', '', 'Congo Town', 'Monrovia', 'Montserrado ', '', 'Liberia', '+231775931958', 'Victoria.nanakpallah@sosliberia.org', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(23, 3, 'customer', 1, 'General', 'Global Pharm Medical Center', 'Global Pharm Medical Center', '', 'Point 4 ', 'Monrovia', 'Montserrado', '1000', 'Liberia ', '+231770744467', 'br@gpmlafrica.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, '830.0000', 1, 'Default', ''),
(9, 4, 'supplier', NULL, NULL, 'Kundan Mishra', 'Kundan Wholesale', '124532698751', '22/1 Harish Neogi Road, Beside Deshabandhu Vidyalaya', 'Kolkata', 'West Bengal', '700014', 'India', '7541369852', 'Kundan.M@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, '98467512GTS25894'),
(26, 3, 'customer', 1, 'General', 'Glascow', 'Tripple T Medical Center', '', 'Duazon', 'Pyansville ', 'Mahgibhi County', '', 'Liberia', '+231770183894', 'tripplet@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(11, 4, 'supplier', NULL, NULL, 'kg', 'kg store', '8001', 'kolkata', 'howrah', 'wb', '985', 'ind', '784', 'r@gmai.com', 'abc', 'bcd', 'fgh', 'jjj', 'kkk', 'kkkp', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, '456'),
(24, 3, 'customer', 3, 'Distributor', 'Diagnomedics', 'Diagnomedics ', '', 'Congo Town', 'Monrovia', 'Montserrado', '', 'Liberia', '+231881211895', 'info@diagnomedics.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(13, 4, 'supplier', NULL, NULL, 'lb', 'lb store', '', 'ggg', 'hgf', '', '', '', '345', 'l@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(27, 3, 'customer', 1, 'General', 'Matthew ', 'St Joseph Catholic Hospital ', '', 'Congo Town', 'Monrovia', '', '', 'Liberia ', '+231776831316', 'mattewbanwon@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(20, 3, 'customer', 2, 'Reseller', 'Jackie Sighn Medical Center', 'Jackie Sighn Medical Center', '', '24th St', 'Monrovia', 'Montserrado', '1000', 'Liberia', '+23177815873', 'jackie_asingh@yahoo.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(21, 3, 'customer', 1, 'General', 'AHMADIYYA MUSLIM CLINIC', 'AHMADIYYA MUSLIM CLINIC', '', '10th St. Sinkor', 'Monrovia', '', '1000', 'Liberia', '+231886517057', 'ahlarian@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(19, 4, 'supplier', NULL, NULL, 'Costabel, Pierre', 'HEMOCUE AB', 'SE556342927201', '262 23', ' ANGELHOLM', 'ANGELHOLM', '', 'SWEDEN', '+27713859326', 'Pierre.Costabel@hemocue.co.za', 'HemoCue Hb-301 Analyzer', 'HemoCue Hb-301 Microcuvettes', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(22, 3, 'customer', 1, 'General', 'Clinilab Medical Center', 'Clinilab Medical Center', '', 'Monrovia City Center', 'Monrovia', 'Montserrado', '', 'Liberia', '+231775508118', 'clinilabmonrovia@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(28, 3, 'customer', 1, 'General', 'Biomedical Link', 'Biomedical Link', '', 'Paynsville ', 'Monrovia ', 'Montserrado', '', 'Liberia ', '+231 7779 84829', 'biomedicallink@yahoo.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(29, 3, 'customer', 1, 'General', 'Francis Janjay Sarpee', 'Francis JANJAY Sarpee', '', 'Monrovia', 'Montovia', '', '', 'Libieria ', '+231777082144', 'francisjanjay_sarpee@yahoo.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(30, 4, 'supplier', NULL, NULL, 'HemoCue AB', 'HemoCue AB', '', 'SE-262 23', 'Ängelholm', '', '', 'Sweden', '+27713859326', 'pierreCostabel@hemocue.co.za', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(31, 3, 'customer', 1, 'General', 'PARTNERS IN HEALTH', 'PARTNERS IN HEALTH', '', 'Congo Town Sophie Road', 'Monrovia', '', '', 'Liberia', '0886902851', 'pyonly@pih.org', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(32, 3, 'customer', 1, 'General', 'Hope For Women', 'Hope For Women ', '', 'AB Tulbert Road - Paynsville ', 'Monrovia ', '', '', 'Liberia ', '+231 8864 90482', 'hopeforwomen@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_costing`
--

CREATE TABLE `sma_costing` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT 0,
  `overselling` tinyint(1) DEFAULT 0,
  `option_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(37, '2021-08-23', 29, 46, 16, 10, '16.0000', '13.0000', '13.0000', '40.0000', '40.0000', '152.0000', 1, 0, NULL),
(36, '2021-08-23', 83, 45, 15, NULL, '2.0000', '30.0000', '30.0000', '130.0000', '130.0000', '-2.0000', 1, 1, NULL),
(35, '2021-08-23', 86, 44, 15, NULL, '2.0000', '30.0000', '30.0000', '100.0000', '100.0000', '-2.0000', 1, 1, NULL),
(34, '2021-08-23', 82, 43, 15, NULL, '5.0000', '33.0000', '33.0000', '150.0000', '150.0000', '-5.0000', 1, 1, NULL),
(33, '2021-08-19', 46, 42, 14, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(32, '2021-08-19', 45, 41, 14, NULL, '1.0000', '25.0000', '25.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(31, '2021-08-19', 44, 40, 14, NULL, '1.0000', '25.0000', '25.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(30, '2021-08-19', 43, 39, 14, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(29, '2021-08-19', 42, 38, 14, NULL, '1.0000', '31.2600', '31.2600', '120.0000', '120.0000', '-1.0000', 1, 1, NULL),
(28, '2021-08-20', 29, 37, 12, 10, '160.0000', '13.0000', '13.0000', '31.8300', '31.8300', '168.0000', 1, 0, NULL),
(27, '2021-08-20', 41, 36, 13, 18, '1.0000', '6.2500', '6.2500', '25.0000', '25.0000', '7.0000', 1, 0, NULL),
(38, '2021-08-23', 39, 47, 17, 17, '2.0000', '5.0000', '5.0000', '30.0000', '30.0000', '180.0000', 1, 0, NULL),
(40, '2021-08-24', 33, 49, 18, 54, '2.0000', '3.6000', '3.6000', '65.0000', '65.0000', '3.0000', 1, 0, NULL),
(39, '2021-08-24', 32, 48, 18, NULL, '1.0000', '656.0000', '656.0000', '2500.0000', '2500.0000', '-1.0000', 1, 1, NULL),
(41, '2021-08-24', 93, 50, 19, 55, '1.0000', '900.0000', '900.0000', '3000.0000', '3000.0000', '1.0000', 1, 0, NULL),
(42, '2021-08-25', 94, 51, 20, 56, '1.0000', '40.0000', '40.0000', '150.0000', '150.0000', '0.0000', 1, 0, NULL),
(43, '2021-08-25', 36, 52, 21, 13, '-5.0000', '15.0000', '15.0000', '90.0000', '90.0000', '0.0000', 1, 0, NULL),
(44, '2021-08-25', 36, 52, 21, NULL, '8.0000', '15.0000', '15.0000', '90.0000', '90.0000', '-8.0000', 1, 1, NULL),
(45, '2021-08-25', 95, 53, 21, 57, '1.0000', '30.0000', '30.0000', '150.0000', '150.0000', '0.0000', 1, 0, NULL),
(46, '2021-08-25', 95, 53, 21, NULL, '1.0000', '30.0000', '30.0000', '150.0000', '150.0000', '-1.0000', 1, 1, NULL),
(47, '2021-08-25', 52, 54, 21, 29, '3.0000', '20.0000', '20.0000', '175.0000', '175.0000', '3.0000', 1, 0, NULL),
(48, '2021-08-25', 81, 55, 21, 45, '1.0000', '25.0000', '25.0000', '200.0000', '200.0000', '8.0000', 1, 0, NULL),
(49, '2021-08-26', 102, 56, 22, 64, '2.0000', '19.5000', '19.5000', '80.7500', '80.7500', '4.0000', 1, 0, NULL),
(50, '2021-09-02', 43, 57, 23, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(51, '2021-09-02', 63, 58, 23, 39, '1.0000', '31.0000', '31.0000', '160.0000', '160.0000', '1.0000', 1, 0, NULL),
(52, '2021-09-02', 47, 59, 23, 24, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '7.0000', 1, 0, NULL),
(53, '2021-09-02', 46, 60, 24, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(54, '2021-09-06', 182, 61, 25, 138, '3.0000', '70.0000', '70.0000', '300.0000', '300.0000', '0.0000', 1, 0, NULL),
(55, '2021-09-06', 106, 62, 26, 81, '3.0000', '16.0000', '16.0000', '80.0000', '80.0000', '89.0000', 1, 0, NULL),
(56, '2021-09-07', 158, 63, 27, NULL, '6.0000', '15.0000', '15.0000', '25.0000', '25.0000', '-6.0000', 1, 1, NULL),
(57, '2021-09-07', 159, 64, 27, NULL, '2.0000', '50.0000', '50.0000', '200.0000', '200.0000', '-2.0000', 1, 1, NULL),
(58, '2021-09-07', 156, 65, 27, NULL, '1000.0000', '0.1000', '0.1000', '0.8000', '0.8000', '-1000.0000', 1, 1, NULL),
(59, '2021-09-07', 82, 66, 27, NULL, '30.0000', '33.0000', '33.0000', '150.0000', '150.0000', '-30.0000', 1, 1, NULL),
(60, '2021-09-07', 155, 67, 27, 119, '3.0000', '20.0000', '20.0000', '70.0000', '70.0000', '7.0000', 1, 0, NULL),
(61, '2021-09-07', 115, 68, 27, 71, '1.0000', '9.2000', '9.2000', '40.0000', '40.0000', '0.0000', 1, 0, NULL),
(62, '2021-09-07', 115, 68, 27, NULL, '24.0000', '9.2000', '9.2000', '40.0000', '40.0000', '-24.0000', 1, 1, NULL),
(63, '2021-09-07', 39, 69, 27, 17, '50.0000', '5.0000', '5.0000', '30.0000', '30.0000', '130.0000', 1, 0, NULL),
(64, '2021-09-07', 157, 70, 27, NULL, '20.0000', '5.0000', '5.0000', '26.0000', '26.0000', '-20.0000', 1, 1, NULL),
(65, '2021-09-07', 117, 71, 27, 77, '10.0000', '3.0000', '3.0000', '13.0000', '13.0000', '56.0000', 1, 0, NULL),
(66, '2021-09-07', 37, 72, 27, NULL, '6.0000', '20.0000', '20.0000', '35.0000', '35.0000', '-6.0000', 1, 1, NULL),
(67, '2021-09-07', 67, 73, 27, 43, '7.0000', '25.0000', '25.0000', '200.0000', '200.0000', '1.0000', 1, 0, NULL),
(68, '2021-09-07', 68, 74, 27, NULL, '7.0000', '30.0000', '30.0000', '150.0000', '150.0000', '-7.0000', 1, 1, NULL),
(69, '2021-09-07', 53, 75, 27, 30, '1.0000', '20.0000', '20.0000', '175.0000', '175.0000', '0.0000', 1, 0, NULL),
(70, '2021-09-07', 53, 75, 27, NULL, '6.0000', '20.0000', '20.0000', '175.0000', '175.0000', '-6.0000', 1, 1, NULL),
(71, '2021-09-07', 100, 76, 27, 62, '20.0000', '5.0000', '5.0000', '35.0000', '35.0000', '81.0000', 1, 0, NULL),
(72, '2021-09-08', 52, 77, 28, 29, '1.0000', '20.0000', '20.0000', '175.0000', '175.0000', '2.0000', 1, 0, NULL),
(73, '2021-09-08', 81, 78, 28, 45, '2.0000', '25.0000', '25.0000', '200.0000', '200.0000', '6.0000', 1, 0, NULL),
(74, '2021-09-08', 140, 79, 29, 98, '1.0000', '6.7500', '6.7500', '60.0000', '60.0000', '1.0000', 1, 0, NULL),
(75, '2021-09-08', 128, 80, 29, 89, '1.0000', '9.0000', '9.0000', '50.0000', '50.0000', '1.0000', 1, 0, NULL),
(76, '2021-09-13', 40, 81, 30, 16, '2.0000', '10.0000', '10.0000', '50.0000', '50.0000', '31.0000', 1, 0, NULL),
(77, '2021-09-13', 33, 82, 31, 54, '3.0000', '3.6000', '3.6000', '65.0000', '65.0000', '0.0000', 1, 0, NULL),
(78, '2021-09-19', 130, 83, 32, 108, '1.0000', '11.7500', '11.7500', '50.0000', '50.0000', '1.0000', 1, 0, NULL),
(79, '2021-09-19', 153, 84, 32, 113, '1.0000', '30.8000', '30.8000', '250.0000', '250.0000', '0.0000', 1, 0, NULL),
(80, '2021-09-19', 82, 85, 32, NULL, '5.0000', '33.0000', '33.0000', '150.0000', '150.0000', '-5.0000', 1, 1, NULL),
(81, '2021-09-23', 47, 86, 33, 24, '2.0000', '26.0000', '26.0000', '104.0000', '104.0000', '5.0000', 1, 0, NULL),
(82, '2021-09-23', 46, 87, 33, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(83, '2021-09-28', 82, 88, 34, NULL, '10.0000', '33.0000', '33.0000', '150.0000', '150.0000', '-10.0000', 1, 1, NULL),
(84, '2021-09-28', 52, 89, 35, 29, '1.0000', '20.0000', '20.0000', '175.0000', '175.0000', '1.0000', 1, 0, NULL),
(85, '2021-10-04', 147, 90, 36, 105, '1.0000', '31.8500', '31.8500', '180.0000', '180.0000', '2.0000', 1, 0, NULL),
(86, '2021-10-04', 139, 91, 36, 97, '1.0000', '6.7500', '6.7500', '60.0000', '60.0000', '5.0000', 1, 0, NULL),
(87, '2021-10-04', 140, 92, 36, 98, '1.0000', '6.7500', '6.7500', '60.0000', '60.0000', '0.0000', 1, 0, NULL),
(88, '2021-10-05', 29, 93, 37, 10, '16.0000', '13.0000', '13.0000', '50.0000', '50.0000', '136.0000', 1, 0, NULL),
(89, '2021-10-07', 118, 94, 38, 78, '14.0000', '4.5000', '4.5000', '30.0000', '30.0000', '0.0000', 1, 0, NULL),
(90, '2021-10-07', 118, 94, 38, NULL, '6.0000', '4.5000', '4.5000', '30.0000', '30.0000', '-6.0000', 1, 1, NULL),
(91, '2021-10-07', 100, 95, 38, 62, '20.0000', '5.0000', '5.0000', '35.0000', '35.0000', '61.0000', 1, 0, NULL),
(92, '2021-10-07', 29, 96, 38, 10, '5.0000', '13.0000', '13.0000', '50.0000', '50.0000', '131.0000', 1, 0, NULL),
(93, '2021-10-07', 195, 97, 38, NULL, '7.0000', '9.0000', '9.0000', '24.0000', '24.0000', '-7.0000', 1, 1, NULL),
(94, '2021-10-07', 168, 98, 38, 124, '3.0000', '1.0000', '1.0000', '10.0000', '10.0000', '11.0000', 1, 0, NULL),
(95, '2021-10-07', 164, 99, 38, 120, '2.0000', '20.0000', '20.0000', '157.0000', '157.0000', '0.0000', 1, 0, NULL),
(96, '2021-10-07', 69, 100, 38, 46, '5.0000', '20.0000', '20.0000', '25.0000', '25.0000', '4.0000', 1, 0, NULL),
(97, '2021-10-07', 39, 101, 38, 17, '15.0000', '5.0000', '5.0000', '30.0000', '30.0000', '115.0000', 1, 0, NULL),
(98, '2021-10-07', 117, 102, 38, 77, '10.0000', '3.0000', '3.0000', '13.0000', '13.0000', '46.0000', 1, 0, NULL),
(99, '2021-10-07', 103, 103, 38, 68, '2.0000', '16.8000', '16.8000', '80.0000', '80.0000', '1.0000', 1, 0, NULL),
(100, '2021-10-07', 37, 104, 38, NULL, '10.0000', '20.0000', '20.0000', '35.0000', '35.0000', '-10.0000', 1, 1, NULL),
(101, '2021-10-07', 82, 105, 38, NULL, '30.0000', '33.0000', '33.0000', '150.0000', '150.0000', '-30.0000', 1, 1, NULL),
(102, '2021-10-08', 194, 106, 39, 147, '1.0000', '2500.0000', '2500.0000', '8000.0000', '8000.0000', '0.0000', 1, 0, NULL),
(103, '2021-10-08', 52, 107, 39, 29, '1.0000', '20.0000', '20.0000', '175.0000', '175.0000', '26.0000', 1, 0, NULL),
(104, '2021-10-08', 81, 108, 39, 45, '1.0000', '25.0000', '25.0000', '200.0000', '200.0000', '24.0000', 1, 0, NULL),
(105, '2021-10-12', 120, 109, 40, 80, '4.0000', '2.5000', '2.5000', '12.5000', '12.5000', '12.0000', 1, 0, NULL),
(106, '2021-10-15', 46, 110, 41, NULL, '5.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-5.0000', 1, 1, NULL),
(107, '2021-10-20', 46, 111, 42, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(108, '2021-10-20', 47, 112, 42, 24, '2.0000', '26.0000', '26.0000', '104.0000', '104.0000', '3.0000', 1, 0, NULL),
(109, '2021-10-20', 43, 113, 42, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(110, '2021-10-20', 51, 114, 42, 28, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '3.0000', 1, 0, NULL),
(111, '2021-10-20', 106, 115, 43, 81, '37.0000', '16.0000', '16.0000', '80.0000', '80.0000', '52.0000', 1, 0, NULL),
(112, '2021-10-20', 99, 116, 43, 61, '5.0000', '11.0000', '11.0000', '75.0000', '75.0000', '33.0000', 1, 0, NULL),
(113, '2021-10-20', 101, 117, 43, 63, '25.0000', '16.0000', '16.0000', '88.0000', '88.0000', '7.0000', 1, 0, NULL),
(114, '2021-10-20', 118, 118, 43, 78, '-6.0000', '4.5000', '4.5000', '30.0000', '30.0000', '0.0000', 1, 0, NULL),
(115, '2021-10-20', 118, 118, 43, NULL, '16.0000', '4.5000', '4.5000', '30.0000', '30.0000', '-16.0000', 1, 1, NULL),
(116, '2021-10-20', 100, 119, 43, 62, '10.0000', '5.0000', '5.0000', '35.0000', '35.0000', '51.0000', 1, 0, NULL),
(117, '2021-10-20', 102, 120, 43, 64, '2.0000', '19.5000', '19.5000', '95.0000', '95.0000', '2.0000', 1, 0, NULL),
(118, '2021-10-20', 161, 121, 44, 116, '5.0000', '3.4500', '3.4500', '20.0000', '20.0000', '0.0000', 1, 0, NULL),
(119, '2021-10-20', 161, 121, 44, NULL, '25.0000', '3.4500', '3.4500', '20.0000', '20.0000', '-25.0000', 1, 1, NULL),
(120, '2021-10-20', 114, 122, 44, 73, '3.0000', '18.0000', '18.0000', '120.0000', '120.0000', '0.0000', 1, 0, NULL),
(121, '2021-10-20', 152, 123, 44, 112, '2.0000', '4.8500', '4.8500', '80.0000', '80.0000', '5.0000', 1, 0, NULL),
(122, '2021-10-20', 195, 124, 44, NULL, '5.0000', '9.0000', '9.0000', '25.0000', '25.0000', '-5.0000', 1, 1, NULL),
(123, '2021-10-20', 190, 125, 44, NULL, '2.0000', '70.0000', '70.0000', '220.0000', '220.0000', '-2.0000', 1, 1, NULL),
(124, '2021-10-20', 191, 126, 44, NULL, '1.0000', '50.0000', '50.0000', '180.0000', '180.0000', '-1.0000', 1, 1, NULL),
(125, '2021-10-20', 193, 127, 44, NULL, '1.0000', '60.0000', '60.0000', '200.0000', '200.0000', '-1.0000', 1, 1, NULL),
(126, '2021-10-20', 192, 128, 44, NULL, '1.0000', '60.0000', '60.0000', '200.0000', '200.0000', '-1.0000', 1, 1, NULL),
(127, '2021-10-20', 95, 129, 45, 57, '2.0000', '30.0000', '30.0000', '150.0000', '150.0000', '6.0000', 1, 0, NULL),
(128, '2021-10-20', 52, 130, 45, 29, '2.0000', '20.0000', '20.0000', '175.0000', '175.0000', '24.0000', 1, 0, NULL),
(129, '2021-10-20', 81, 131, 45, 45, '2.0000', '25.0000', '25.0000', '200.0000', '200.0000', '22.0000', 1, 0, NULL),
(130, '2021-10-20', 81, 132, 46, 45, '2.0000', '25.0000', '25.0000', '200.0000', '200.0000', '20.0000', 1, 0, NULL),
(131, '2021-10-20', 95, 133, 46, 57, '2.0000', '30.0000', '30.0000', '150.0000', '150.0000', '4.0000', 1, 0, NULL),
(132, '2021-10-20', 52, 134, 46, 29, '2.0000', '20.0000', '20.0000', '175.0000', '175.0000', '22.0000', 1, 0, NULL),
(133, '2021-10-22', 33, 135, 47, NULL, '15.0000', '3.6000', '3.6000', '65.0000', '65.0000', '-15.0000', 1, 1, NULL),
(134, '2021-10-29', 43, 136, 48, NULL, '1.0000', '26.0000', '26.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(135, '2021-10-29', 54, 137, 48, 31, '1.0000', '31.0000', '31.0000', '160.0000', '160.0000', '1.0000', 1, 0, NULL),
(146, '2021-11-04', 67, 148, 49, 43, '6.0000', '25.0000', '25.0000', '200.0000', '200.0000', '37.0000', 1, 0, NULL),
(145, '2021-11-04', 180, 147, 49, 136, '4.0000', '20.0000', '20.0000', '120.0000', '120.0000', '1.0000', 1, 0, NULL),
(144, '2021-11-04', 120, 146, 49, 80, '10.0000', '2.5000', '2.5000', '12.5000', '12.5000', '2.0000', 1, 0, NULL),
(143, '2021-11-04', 82, 145, 49, NULL, '30.0000', '33.0000', '33.0000', '150.0000', '150.0000', '-30.0000', 1, 1, NULL),
(142, '2021-11-04', 53, 144, 49, 30, '6.0000', '20.0000', '20.0000', '175.0000', '175.0000', '0.0000', 1, 0, NULL),
(147, '2021-11-04', 117, 149, 49, 77, '6.0000', '3.0000', '3.0000', '13.0000', '13.0000', '40.0000', 1, 0, NULL),
(148, '2021-11-04', 214, 150, 49, NULL, '8.0000', '8.0000', '8.0000', '20.0000', '20.0000', '-8.0000', 1, 1, NULL),
(149, '2021-11-05', 44, 151, 50, NULL, '1.0000', '25.0000', '25.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(150, '2021-11-05', 45, 152, 50, NULL, '1.0000', '25.0000', '25.0000', '104.0000', '104.0000', '-1.0000', 1, 1, NULL),
(151, '2021-11-25', 228, 153, 51, 176, '11.0000', '100.0000', '100.0000', '20.0000', '20.0000', '100.0000', 1, 0, 58),
(152, '2021-11-25', 229, 154, 52, NULL, '10.0000', '100.0000', '100.0000', '10.0000', '10.0000', '-10.0000', 1, 1, NULL),
(153, '2021-11-27', 265, 155, 53, 180, '5.0000', '100.0000', '100.0000', '100.0000', '100.0000', '5.0000', 1, 0, NULL),
(154, '2021-12-05', 265, 156, 54, 220, '10.0000', '100.0000', '100.0000', '100.0000', '100.0000', '90.0000', 1, 0, NULL),
(155, '2021-12-06', 265, 157, 55, 220, '10.0000', '100.0000', '100.0000', '100.0000', '100.0000', '80.0000', 1, 0, NULL),
(156, '2021-12-07', 265, 158, 56, 222, '5.0000', '100.0000', '100.0000', '100.0000', '100.0000', '5.0000', 1, 0, NULL),
(158, '2021-12-11', 265, 160, 57, 233, '5.0000', '100.0000', '100.0000', '100.0000', '100.0000', '0.0000', 1, 0, NULL),
(159, '2021-12-11', 265, 160, 57, 232, '5.0000', '100.0000', '100.0000', '100.0000', '100.0000', '5.0000', 1, 0, NULL),
(161, '2021-12-11', 266, 162, 58, 236, '20.0000', '100.0000', '100.0000', '100.0000', '100.0000', '30.0000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_currencies`
--

CREATE TABLE `sma_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 0,
  `symbol` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`, `symbol`) VALUES
(4, 'USD', 'US Dollar', '1.0000', 0, '$');

-- --------------------------------------------------------

--
-- Table structure for table `sma_customer_groups`
--

CREATE TABLE `sma_customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(2, 'Reseller', -5),
(3, 'Distributor', -15),
(4, 'New Customer (+10)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sma_date_format`
--

CREATE TABLE `sma_date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `sma_deliveries`
--

CREATE TABLE `sma_deliveries` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_deliveries`
--

INSERT INTO `sma_deliveries` (`id`, `date`, `sale_id`, `do_reference_no`, `sale_reference_no`, `customer`, `address`, `note`, `status`, `attachment`, `delivered_by`, `received_by`, `created_by`, `updated_by`, `updated_at`) VALUES
(6, '2021-08-19 13:53:00', 13, 'Oral Request', 'SALE2021/08/0006', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '&lt;p&gt;&lt;p&gt;Items supplied in good condition&lt;&sol;p&gt;&lt;&sol;p&gt;', 'delivered', NULL, 'Blessed', 'CEO', 1, NULL, NULL),
(8, '2021-08-19 14:39:00', 14, 'Oral Request', 'SALE2021/08/0007', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '&lt;p&gt;&lt;p&gt;Products received in Conditions&lt;&sol;p&gt;&lt;&sol;p&gt;', 'delivered', NULL, 'Blessed', '', 1, NULL, NULL),
(9, '2021-08-23 15:03:00', 16, 'DO2021/08/0004', 'SALE2021/08/0009', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(7, '2021-08-19 13:55:00', 12, 'Oral Request', 'SALE2021/08/0005', 'Jackie Sighn Medical Center', '<p>24th St Monrovia Montserrado 1000 Liberia<br>Tel: +23177815873 Email: jackie_asingh@yahoo.com</p>', '&lt;p&gt;Goods delivered in good Condition&lt;&sol;p&gt;', 'delivered', NULL, '', '', 1, NULL, NULL),
(10, '2021-08-23 15:04:00', 15, 'DO2021/08/0005', 'SALE2021/08/0008', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(11, '2021-08-23 19:05:00', 17, 'DO2021/08/0006', 'SALE2021/08/0010', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(12, '2021-08-25 03:14:00', 18, 'DO2021/08/0007', 'SALE2021/08/0011', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(13, '2021-08-25 03:30:00', 19, 'DO2021/08/0008', 'SALE2021/08/0012', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(14, '2021-08-25 19:45:00', 20, 'DO2021/08/0009', 'SALE2021/08/0013', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(15, '2021-08-25 22:58:00', 21, 'DO2021/08/0010', 'SALE2021/08/0014', 'Global Pharm Medical Center', '<p>Point 4  Monrovia Montserrado 1000 Liberia <br>Tel: +231770744467 Email: br@gpmlafrica.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(16, '2021-08-27 03:14:00', 22, 'DO2021/08/0011', 'SALE2021/08/0015', 'Diagnomedics', '<p>Congo Town Monrovia Montserrado  Liberia<br>Tel: +231881211895 Email: info@diagnomedics.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(17, '2021-09-02 14:37:00', 23, 'DO2021/09/0012', 'SALE2021/09/0016', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(18, '2021-09-02 17:09:00', 24, 'DO2021/09/0013', 'SALE2021/09/0017', 'Glascow', '<p>Duazon Pyansville  Mahgibhi County  Liberia<br>Tel: +231770183894 Email: tripplet@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(19, '2021-09-06 13:51:00', 25, 'DO2021/09/0014', 'SALE2021/09/0018', 'Biomedical Link', '<p>Paynsville  Monrovia  Montserrado  Liberia <br>Tel: +231 7779 84829 Email: biomedicallink@yahoo.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(20, '2021-09-06 13:55:00', 26, 'DO2021/09/0015', 'SALE2021/09/0019', 'SOS Medical Center', '<p>Congo Town Monrovia Montserrado   Liberia<br>Tel: +231775931958 Email: Victoria.nanakpallah@sosliberia.org</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(21, '2021-09-08 16:11:00', 28, 'DO2021/09/0016', 'SALE2021/09/0021', 'Global Pharm Medical Center', '<p>Point 4  Monrovia Montserrado 1000 Liberia <br>Tel: +231770744467 Email: br@gpmlafrica.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(22, '2021-09-08 16:15:00', 29, 'DO2021/09/0017', 'SALE2021/09/0022', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(23, '2021-09-13 17:01:00', 30, 'DO2021/09/0018', 'SALE2021/09/0023', 'Matthew ', '<p>Congo Town Monrovia   Liberia <br>Tel: +231776831316 Email: mattewbanwon@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(24, '2021-09-13 20:11:00', 31, 'DO2021/09/0019', 'SALE2021/09/0024', 'AHMEDIYAA CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(25, '2021-09-19 15:00:00', 32, 'DO2021/09/0020', 'SALE2021/09/0025', 'AHMADIYYA MUSLIM CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(26, '2021-09-23 21:41:00', 33, 'DO2021/09/0021', 'SALE2021/09/0026', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(27, '2021-09-28 22:56:00', 34, 'DO2021/09/0022', 'SALE2021/09/0027', 'AHMADIYYA MUSLIM CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(28, '2021-09-28 22:58:00', 35, 'DO2021/09/0023', 'SALE2021/09/0028', 'Global Pharm Medical Center', '<p>Point 4  Monrovia Montserrado 1000 Liberia <br>Tel: +231770744467 Email: br@gpmlafrica.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(29, '2021-10-04 15:58:00', 36, 'DO2021/10/0024', 'SALE2021/10/0029', 'Global Pharm Medical Center', '<p>Point 4  Monrovia Montserrado 1000 Liberia <br>Tel: +231770744467 Email: br@gpmlafrica.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(30, '2021-10-05 20:12:00', 37, 'DO2021/10/0025', 'SALE2021/10/0030', 'AHMADIYYA MUSLIM CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(31, '2021-10-07 17:47:00', 38, 'DO2021/10/0026', 'SALE2021/10/0031', 'Matthew ', '<p>Congo Town Monrovia   Liberia <br>Tel: +231776831316 Email: mattewbanwon@gmail.com</p>', '&lt;p&gt;5 PACKS of HBsAg left to be supplied&lt;&sol;p&gt;', 'delivered', NULL, '', '', 1, NULL, NULL),
(32, '2021-10-08 14:56:00', 39, 'DO2021/10/0027', 'SALE2021/10/0032', 'Hope For Women', '<p>AB Tulbert Road - Paynsville  Monrovia    Liberia <br>Tel: +231 8864 90482 Email: hopeforwomen@gmail.com</p>', '&lt;p&gt;Analyzer was brought and successfully installed and head of lab trained&period; Test sample was run and patient sample was also run&period; Analyzer is in good condition and working perfectly&period;&lt;&sol;p&gt;', 'delivered', NULL, 'Dr. Adam-Yakub', 'Head of Lab (Prince)', 1, NULL, NULL),
(33, '2021-10-12 21:05:00', 40, 'DO2021/10/0028', 'SALE2021/10/0033', 'Matthew ', '<p>Congo Town Monrovia   Liberia <br>Tel: +231776831316 Email: mattewbanwon@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(34, '2021-10-15 19:07:00', 41, 'DO2021/10/0029', 'SALE2021/10/0034', 'PARTNERS IN HEALTH', '<p>Congo Town Sophie Road Monrovia   Liberia<br>Tel: 0886902851 Email: pyonly@pih.org</p>', '', 'delivered', NULL, 'Blessed', '', 1, NULL, NULL),
(35, '2021-10-20 13:22:00', 42, 'DO2021/10/0030', 'SALE2021/10/0035', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(36, '2021-10-21 01:35:00', 43, 'DO2021/10/0031', 'SALE2021/10/0036', 'SOS Medical Center', '<p>Congo Town Monrovia Montserrado   Liberia<br>Tel: +231775931958 Email: Victoria.nanakpallah@sosliberia.org</p>', '', 'delivered', NULL, 'Mr. Blessing', '', 1, NULL, NULL),
(37, '2021-10-21 01:55:00', 44, 'DO2021/10/0032', 'SALE2021/10/0037', 'SOS Medical Center', '<p>Congo Town Monrovia Montserrado   Liberia<br>Tel: +231775931958 Email: Victoria.nanakpallah@sosliberia.org</p>', '', 'delivered', NULL, 'Blessing', '', 1, NULL, NULL),
(40, '2021-10-29 19:30:00', 48, 'DO2021/10/0035', 'SALE2021/10/0041', 'Clinilab Medical Center', '<p>Monrovia City Center Monrovia Montserrado  Liberia<br>Tel: +231775508118 Email: clinilabmonrovia@gmail.com</p>', '', 'delivered', NULL, 'BLESSING', '', 1, NULL, NULL),
(38, '2021-10-20 18:43:00', 46, 'DO2021/10/0033', 'SALE2021/10/0039', 'Global Pharm Medical Center', '<p>Point 4  Monrovia Montserrado 1000 Liberia <br>Tel: +231770744467 Email: br@gpmlafrica.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(39, '2021-10-22 13:47:00', 47, 'DO2021/10/0034', 'SALE2021/10/0040', 'AHMADIYYA MUSLIM CLINIC', '<p>10th St. Sinkor Monrovia  1000 Liberia<br>Tel: +231886517057 Email: ahlarian@gmail.com</p>', '', 'delivered', NULL, '', '', 1, NULL, NULL),
(41, '2021-12-17 20:22:00', 58, 'DO2021/12/0036', 'test sale dec', 'SOS Medical Center', '<p>Congo Town Monrovia Montserrado   Liberia<br>Tel: +231775931958 Email: Victoria.nanakpallah@sosliberia.org</p>', '', 'packing', NULL, 'test', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_deposits`
--

CREATE TABLE `sma_deposits` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_deposits`
--

INSERT INTO `sma_deposits` (`id`, `date`, `company_id`, `amount`, `paid_by`, `note`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, '2021-01-14 00:17:00', 10, '5000000.0000', 'me', '', 1, 0, NULL),
(2, '2021-08-31 23:30:00', 23, '830.0000', 'Cheque', '', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_equipments`
--

CREATE TABLE `sma_equipments` (
  `id` int(11) NOT NULL,
  `facility_name` text DEFAULT NULL,
  `training_date` datetime DEFAULT NULL,
  `equipment_sl` varchar(100) DEFAULT NULL,
  `equipment_name` varchar(255) DEFAULT NULL,
  `contact_person_name_1` varchar(255) DEFAULT NULL,
  `contact_person_email_1` varchar(255) DEFAULT NULL,
  `contact_person_phone_1` varchar(255) DEFAULT NULL,
  `contact_person_name_2` int(11) DEFAULT NULL,
  `contact_person_phone_2` varchar(255) DEFAULT NULL,
  `contact_person_email_2` varchar(255) DEFAULT NULL,
  `engineer_comment` text NOT NULL,
  `facility_operator_comment` text DEFAULT NULL,
  `operator_comment` text DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '''0''=>Inactive, ''1''=>Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_equipments`
--

INSERT INTO `sma_equipments` (`id`, `facility_name`, `training_date`, `equipment_sl`, `equipment_name`, `contact_person_name_1`, `contact_person_email_1`, `contact_person_phone_1`, `contact_person_name_2`, `contact_person_phone_2`, `contact_person_email_2`, `engineer_comment`, `facility_operator_comment`, `operator_comment`, `created_on`, `updated_on`, `status`) VALUES
(34, '4', '0000-00-00 00:00:00', '60.0000', '72a40575aa1e484433bb0d8f810462a1.jpg', '1.0000', '', '12', 0, NULL, NULL, 'HbA1CdCC', NULL, 'HemoCue HbA1c 501, Daily Check Cartridge ', NULL, NULL, 1),
(35, '4', '0000-00-00 00:00:00', '20.0000', '73f505efb742203c4eec2c3098b9990e.jpg', '1.0000', '', '12', 0, NULL, NULL, 'HbA1CmCC', NULL, 'HemoCue HbA1c 501, Monthly Check Cartridge', NULL, NULL, 1),
(30, '4', '2000-02-14 00:00:00', '750.0000', '0204cf7b3a8a7956c075a9e3f4f8115d.jpg', '1.0000', '', '12', 0, NULL, NULL, 'HbA1CA', NULL, 'HemoCue Hb-801 Analyzer', NULL, NULL, 1),
(31, '4', '0000-00-00 00:00:00', '35.0000', 'f5aab8af1aed70c0a03adb3837f47000.jpg', '1.0000', '', '12', 0, NULL, NULL, '405110', NULL, 'HemoCue Hb-801 Mcrocuvette', NULL, NULL, 1),
(32, '22', '0000-00-00 00:00:00', '2500.0000', '6c54eb329d608ac8288ad1e1b2360848.jpg', '1.0000', '', '12', 0, NULL, NULL, '405210', NULL, 'HemoCue HbA1c 501 Analyzer', NULL, NULL, 1),
(33, '22', '0000-00-00 00:00:00', '65.0000', '8f6ba95f75d46666084fb1de8b842d39.jpg', '1.0000', '', '12', 0, NULL, NULL, '4052100', NULL, 'HemoCue HbA1c 501, Test Cartridge', NULL, NULL, 1),
(29, '22', '0000-00-00 00:00:00', '50.0000', '031200702bb33e1c8f136ea86d16ab04.jpg', '5.0000', '', '12', 0, NULL, NULL, '1211801', NULL, 'HemoCue Hb-301 Microcuvette', NULL, NULL, 1),
(28, '4', '0000-00-00 00:00:00', '650.0000', '38c8ef2fdacba260016d7263448f2f47.jpeg', '1.0000', '', '12', 0, NULL, NULL, '121804', NULL, 'HemoCue Hb-301 Analyzer', NULL, NULL, 1),
(36, '4', '0000-00-00 00:00:00', '90.0000', 'b5a5e01d31b1765f4f33eecc406f0d3c.jpg', '2.0000', '', '12', 0, NULL, NULL, 'EGVBCT-01B', NULL, 'ESR Vacuum Blood Collection Tubes (Glass)', NULL, NULL, 1),
(37, '4', '0000-00-00 00:00:00', '35.0000', '551f60153a65eaee5d8431e8b94257e6.jpg', '10.0000', '', '12', 0, NULL, NULL, 'YGCAVBT-01G', NULL, 'Serum Gel Clot Activator Vacuum Blood Collection Tube', NULL, NULL, 1),
(38, '4', '0000-00-00 00:00:00', '37.0000', '9a7df842a8c95682857bc294f699eb56.jpg', '10.0000', '', '12', 0, NULL, NULL, 'CPDA-1SBB01', NULL, 'CPDA-1 Single Blood Bag', NULL, NULL, 1),
(39, '4', '0000-00-00 00:00:00', '30.0000', '6ad673365c6bd63231f0ae5755da8dc9.png', '30.0000', '', '12', 0, NULL, NULL, 'AGL-550', NULL, 'AGL-550 AT TM Glucose Test Strips (50T)', NULL, NULL, 1),
(40, '22', '0000-00-00 00:00:00', '50.0000', '230501ff1d095ca8fa0fbec140beec02.png', '2.0000', '', '12', 0, NULL, NULL, 'AGL-ST10-B', NULL, 'AllChek TM Glucose Meter', NULL, NULL, 1),
(41, '4', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '139123', NULL, 'HemoCue Cleaner', NULL, NULL, 1),
(42, '4', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-18', NULL, 'Flourecare Testosterone (T) Diagnostic Kit', NULL, NULL, 1),
(43, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-20', NULL, 'Flourecare Thyroid Stimulating Hormone (TSH) Diagnostic Kit', NULL, NULL, 1),
(44, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-24', NULL, 'Flourecare Free triiodothyonine (fT3) Diagnostic Kit', NULL, NULL, 1),
(45, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-25', NULL, 'Flourecare Free Thyroxine (fT4) Diagnostic Kit', NULL, NULL, 1),
(46, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-37', NULL, 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', NULL, NULL, 1),
(47, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-28', NULL, 'Flourecare C-Reactive Protein (CRP) Diagnostic Kit', NULL, NULL, 1),
(48, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-22', NULL, 'Flourecare Triiodothyronine (T3) Diagnostic Kit', NULL, NULL, 1),
(49, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-23', NULL, 'Flourecare Thyroxine (T4) Diagnostic Kit', NULL, NULL, 1),
(50, '4', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-46', NULL, 'Flourecare Prostate Specific Antigen (PSA) Kit', NULL, NULL, 1),
(51, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-14', NULL, 'Flourecare Beta Human Chorionic Gonadotropin (β- HCG) Kit', NULL, NULL, 1),
(52, '21', '0000-00-00 00:00:00', '175.0000', 'no_image.png', '4.0000', '', '12', 0, NULL, NULL, 'P04-03-101138-00', NULL, 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', NULL, NULL, 1),
(53, '21', '0000-00-00 00:00:00', '175.0000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'P04-03-101056-00', NULL, 'GENRUI  KT05DIL Diluent for 5-Part Hematology Analyzer  (20 L)', NULL, NULL, 1),
(54, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-31', NULL, 'Floure Cardiac Troponin I (cTnI) Diagnostic Kit', NULL, NULL, 1),
(57, '22', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-17', NULL, 'Flourecare Prolactin (PRL) Diagnostic Kit', NULL, NULL, 1),
(56, '22', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-16', NULL, 'Floure Follicle Stimulating Hormone (FSH) Diagnostic Kit', NULL, NULL, 1),
(58, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-19', NULL, 'Flourecare Progesterone (P) Diagnostic Kit', NULL, NULL, 1),
(59, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-32', NULL, 'Flourecare Creatine Kinase Isoenzyme (CK-MB) Diagnostic Kit', NULL, NULL, 1),
(60, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-34', NULL, 'Flourecare D-dimer(DD) Diagnostic Kit', NULL, NULL, 1),
(61, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-41', NULL, 'Flourecare C-peptide (C-P) Diagnostic Kit', NULL, NULL, 1),
(62, '22', '0000-00-00 00:00:00', '104.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-15', NULL, 'Flourecare Luteinizing Hormone (LH) Diagnostic Kit', NULL, NULL, 1),
(63, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-12', NULL, 'Flourecare Ferritin (FERR) Diagnostic Kit', NULL, NULL, 1),
(64, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-53', NULL, 'Flourecare Total Immunoglobulin E (Total IgE) Diagnostic Ki', NULL, NULL, 1),
(65, '22', '0000-00-00 00:00:00', '140.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-03', NULL, 'Flourecare Alpha-fetoprotein (AFP) Kit', NULL, NULL, 1),
(66, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MF-001', NULL, 'Flourecare Estrodial ', NULL, NULL, 1),
(67, '21', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'P04-03-101072-00', NULL, 'GENRUI  KT05DIFF Lyse for 5-Part Hematology Analyzer (500 mL)', NULL, NULL, 1),
(68, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P04-03-101074-00', NULL, 'GENRUI  KT05LH Lyse for 5-Part Hematology Analyzer (200 mL)', NULL, NULL, 1),
(69, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'P04-03-101108-000', NULL, 'Genrui Probe Cleanser for 3-Parts  Haematology Analyzer (50mL)', NULL, NULL, 1),
(70, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'P04-03-101108-001', NULL, 'Genrui EZ Cleanser for 3-Parts  Haematology Analyzer (50mL)', NULL, NULL, 1),
(71, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'P04-03-101111-000', NULL, 'Genrui Probe Cleanser for 5-Parts  Haematology Analyzer (50mL)', NULL, NULL, 1),
(72, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'P04-03-101108-002', NULL, 'Genrui EZ Cleanser for 5-Parts  Haematology Analyzer (50mL)', NULL, NULL, 1),
(73, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207084-01', NULL, 'Genrui CBC-3D QC High Level  for 5-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(74, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207085-00', NULL, 'Genrui CBC-3D QC Normal Level  for 3-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(75, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207086-00', NULL, 'Genrui CBC-3D QC Low Level  for 3-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(76, '21', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207083-00', NULL, 'Genrui CBC-CAL PLUS Calibrator  for 3-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(77, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207083-01', NULL, 'Genrui CBC-CAL PLUS Calibrator  for 5-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(78, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207084-00', NULL, 'Genrui CBC-3D QC High Level  for 3-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(79, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207085-01', NULL, 'Genrui CBC-3D QC Normal Level  for 5-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(80, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207086-01', NULL, 'Genrui CBC-3D QC Low Level  for 5-Parts  Haematology Analyzer (3mL)', NULL, NULL, 1),
(81, '21', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'P04-03-101139-00', NULL, 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', NULL, NULL, 1),
(82, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '4.0000', '', '12', 0, NULL, NULL, '02-01-2135', NULL, 'MNCHIP General Chemistry I Lyophilized Kit[13]', NULL, NULL, 1),
(83, '22', '0000-00-00 00:00:00', '130.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2134', NULL, 'MNCHIP Clinical Emergency Lyophilized Kit', NULL, NULL, 1),
(84, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2132', NULL, 'MNCHIP Electrolyte Panel Lyophilized Kit[7]', NULL, NULL, 1),
(85, '22', '0000-00-00 00:00:00', '4000.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, '01-01-0095', NULL, 'MNCHIP Celercare M5 Chemistry Analyzer', NULL, NULL, 1),
(86, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2133', NULL, 'MNCHIP Renal Panel Lyophilized Kit[7]', NULL, NULL, 1),
(87, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2142', NULL, 'MNCHIP Liver Function Panel Lyophilized Kit[11]', NULL, NULL, 1),
(88, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2155', NULL, 'MNCHIP Myocardial Enzyme Panel Lyophilized Kit[5]', NULL, NULL, 1),
(89, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2165', NULL, 'MNCHIP General Chemistry II Lyophilized Kit[8]', NULL, NULL, 1),
(90, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2162', NULL, 'MNCHIP Glucose & Lipid Panel Lyophilized Kit[6]', NULL, NULL, 1),
(91, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2136', NULL, 'MNCHIP GLU & Lipid & HCYPanel Lyophilized Kit[7]', NULL, NULL, 1),
(92, '22', '0000-00-00 00:00:00', '130.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, '02-01-2177', NULL, 'MNCHIP Liver and Renal Panel Lyophilized Kit[7]', NULL, NULL, 1),
(93, '22', '0000-00-00 00:00:00', '3000.0000', '879d6782c2e5937e93998b244139c58f.jpg', '1.0000', '', '12', 0, NULL, NULL, 'P12-70-000069-40', NULL, 'Genrui WP21A Semi Automated Chemistry Analyzer', NULL, NULL, 1),
(94, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'GM123', NULL, 'Gram Stain Complete Sets', NULL, NULL, 1),
(95, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'FCHB01', NULL, 'Finecare HBA1C Catridge', NULL, NULL, 1),
(96, '22', '0000-00-00 00:00:00', '140.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'FCPSA01', NULL, 'FineCare PSA', NULL, NULL, 1),
(97, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'FCCRP01', NULL, 'FineCare CRP', NULL, NULL, 1),
(98, '22', '0000-00-00 00:00:00', '75.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'IGO-502', NULL, 'Prime GeneGonorrhea Rapid Test Cassette(Swab)20T/kit', NULL, NULL, 1),
(99, '22', '0000-00-00 00:00:00', '75.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ICH-502', NULL, 'Prime Gene Chlamydia Rapid Test Cassette(Swab/Urine)20T/kit', NULL, NULL, 1),
(100, '22', '0000-00-00 00:00:00', '35.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ISY-301', NULL, 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', NULL, NULL, 1),
(101, '22', '0000-00-00 00:00:00', '88.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ITY-302', NULL, 'Prime Gene Typhoid IgG/IgM Rapid Test Cassette(S/P)40T/kit', NULL, NULL, 1),
(102, '22', '0000-00-00 00:00:00', '95.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'IHB-355', NULL, 'Prime Gene HBV Combo Rapid Test Cassette(S/P)25T/kit', NULL, NULL, 1),
(103, '22', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'IFIL-402', NULL, 'Prime Gene Filariasis IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, NULL, 1),
(104, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ISG-402', NULL, 'Prime Gene HSV 1/2 IgG Rapid Test Cassette(WB/S/P)40T/kit', NULL, NULL, 1),
(105, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ISM-402', NULL, 'Prime Gene HSV 1/2 IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, NULL, 1),
(106, '22', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'IHP-302', NULL, 'Prime Gene H. pylori Antibody Rapid Test Cassette(S/P)40T/kit', NULL, NULL, 1),
(107, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ILEP-402', NULL, 'Prime Gene Leptospira IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, NULL, 1),
(108, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ITG-402', NULL, 'Prime Gene TOXO IgG Rapid Test Cassette(WB/S/P)40T/kit', NULL, NULL, 1),
(109, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ITM-402', NULL, 'Prime Gene TOXO IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, NULL, 1),
(110, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'VICGM-425', NULL, 'Prime Gene CMV IgG/IgM Combo Rapid test Cassette （WB/S/P)25T/kit', NULL, NULL, 1),
(111, '22', '0000-00-00 00:00:00', '40.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'TFO-602', NULL, 'Prime Gene FOB Rapid Test Cassette(Feces)-50ng/ml,25T/kit', NULL, NULL, 1),
(112, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'IRO-602', NULL, 'Prime Gene Rotavirus Rapid Test Cassette（Feces）25T/kit', NULL, NULL, 1),
(113, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'DOA-1124', NULL, 'Prime Gene Multi-Drug 12 Drugs Rapid Test Panel(Urine)', NULL, NULL, 1),
(114, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ITB-402', NULL, 'Prime Gene Tuberculosis (TB) Rapid Test Cassette(WB/S/P),40T/kit', NULL, NULL, 1),
(115, '22', '0000-00-00 00:00:00', '40.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'IHC-302', NULL, 'Prime Gene HCV Rapid Test Cassette(S/P)40T/kit', NULL, NULL, 1),
(116, '22', NULL, '24.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ISY-302', NULL, 'Prime Gene Syphilis Rapid Test Cassette(S/P)40T/kit', NULL, NULL, 1),
(117, '22', '0000-00-00 00:00:00', '13.0000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'U031-10', NULL, 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', NULL, NULL, 1),
(118, '22', '0000-00-00 00:00:00', '30.0000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'IHBSG-301', NULL, 'Prime Gene HBsAg Rapid Test Dipstick(S/P)50T/kit,3mm', NULL, NULL, 1),
(119, '22', '0000-00-00 00:00:00', '35.0000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'IHC-301', NULL, 'Prime Gene HCV Rapid Test Dipstick(S/P),50T/kit', NULL, NULL, 1),
(120, '22', '0000-00-00 00:00:00', '12.5000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'FHC-101', NULL, 'Prime Gene Pregnancy (hCG) Rapid Test Dipstick(Urine)SOT/kit', NULL, NULL, 1),
(121, '21', '0000-00-00 00:00:00', '54.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0192B', NULL, 'Biorex Bilirubin (L.S) TOTAL (2x100ml; 1x50ml)', NULL, NULL, 1),
(122, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0222B', NULL, 'Biorex Albumin (Monoliquid) BCG (Ready to Use) (6x60ml; 1x5ml)', NULL, NULL, 1),
(123, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0292A', NULL, 'Biorex Calcium (Monoliquid) Arsenazo (2x125ml; 1x5ml)', NULL, NULL, 1),
(124, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0352B', NULL, 'Biorex Magnesium (Monoliquid) Xylidyl Blue (6x60ml; 1x5ml)', NULL, NULL, 1),
(125, '21', '0000-00-00 00:00:00', '46.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0173B', NULL, 'Biorex Total Protein (Monoliquid) Biuret (Ready To Use) (6x60ml; 1x5ml)', NULL, NULL, 1),
(126, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0138A', NULL, 'Biorex Potassium (Monoliquid) TPB (Colorimetric) 5x20ml; 1x5ml', NULL, NULL, 1),
(127, '21', '0000-00-00 00:00:00', '54.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0191B', NULL, 'Biorex Bilirubin (L.S) DIRECT (2x100ml; 1x50ml)', NULL, NULL, 1),
(128, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0111B', NULL, 'Biorex Creatinine (L.S) Jaffe without Deproteinization 3x60ml; 3x60ml; 1x5ml', NULL, NULL, 1),
(129, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0281A', NULL, 'Biorex Chloride (Monoliquid) Thiocyanate 2x60ml; 1x5ml; 1x5ml', NULL, NULL, 1),
(130, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0122A', NULL, 'Boirex Urea (L.S) Modified Berthelot (2x125ml; 1x50ml; 2x6.5ml; 1x5ml)', NULL, NULL, 1),
(131, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0271B', NULL, 'Biorex Triglycerides (Monoliquid) GPO‐PAP 4x60ml; 1x5ml', NULL, NULL, 1),
(132, '21', '0000-00-00 00:00:00', '120.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0603C', NULL, 'Biorex Uric Acid (Monoliquid) Uricase PAP (5x100ml; 1x5ml)', NULL, NULL, 1),
(133, '21', '0000-00-00 00:00:00', '130.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0362D', NULL, 'Biorex GGT (L.S) Carboxy (2x60ml; 2x12ml)', NULL, NULL, 1),
(134, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0146A', NULL, 'Biorex Sodium (Monoliquid) Colorimetric, Enzymatic (5x20ml; 2x5ml', NULL, NULL, 1),
(135, '21', '0000-00-00 00:00:00', '95.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0261B', NULL, 'Biorex Cholesterol (Monoliquid) CHOD‐PAP (6x60ml; 1x5ml)', NULL, NULL, 1),
(136, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0562B', NULL, 'Biorex Amylase (Monoliquid) CNPG3 (10x10ml)', NULL, NULL, 1),
(137, '21', '0000-00-00 00:00:00', '148.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0252C', NULL, 'Biorex CK‐nac (L.S) Nac Activation, Serum Start, DGKC (6x10ml; 1x12ml)', NULL, NULL, 1),
(138, '21', '0000-00-00 00:00:00', '261.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0452B', NULL, 'Biorex CK‐MB (L.S) Immunoinhibition (2x25ml; 2x5ml)', NULL, NULL, 1),
(139, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0312E', NULL, 'Biorex Human Assayed Control Normal (1x5ml)', NULL, NULL, 1),
(140, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0312F', NULL, 'Biorex Human Assayed Control Abnormal (1x5ml)', NULL, NULL, 1),
(141, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0312C', NULL, 'Biorex Human Assayed Control Normal (5x5ml)', NULL, NULL, 1),
(142, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0312D', NULL, 'Biorex Human Assayed Control Abnormal (5x5ml)', NULL, NULL, 1),
(143, '21', '0000-00-00 00:00:00', '140.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0101B', NULL, 'Biorex Glucose (Monoliquid) GOD‐PAP  (6x125ml; 1x5ml)', NULL, NULL, 1),
(144, '21', '0000-00-00 00:00:00', '180.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0101D', NULL, 'Biorex Glucose (Monoliquid) GOD‐PAP  (4x250ml; 1x5ml)', NULL, NULL, 1),
(145, '21', '0000-00-00 00:00:00', '240.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0152A', NULL, 'Biorex CO2 (Bicarbonate) (Monoliquid) Enzymatic (10x5ml; 1x1ml)', NULL, NULL, 1),
(146, '21', '0000-00-00 00:00:00', '96.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0185B', NULL, 'Biorex  Alkaline phosphatase - ALP (L.S) DEA (DGKC) 5x50ml; 1x50ml', NULL, NULL, 1),
(147, '21', '0000-00-00 00:00:00', '180.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0321L', NULL, 'Biorex Calibration Serum ', NULL, NULL, 1),
(148, '21', '0000-00-00 00:00:00', '220.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0511A', NULL, 'Biorex Lipase (L.S) Colorimetric( 2x10ml;1x10ml; 1x3ml)', NULL, NULL, 1),
(149, '21', '0000-00-00 00:00:00', '135.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0302A', NULL, 'Biorex Phosphorus (Inorganic) (Monoliquid) Molybdate (5x20ml; 1x5ml)', NULL, NULL, 1),
(150, '21', '0000-00-00 00:00:00', '92.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0213D', NULL, 'Biorex ALT (GPT) (L.S) IFCC (2x100ml; 2x20ml)', NULL, NULL, 1),
(151, '21', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, '1102160025', NULL, 'Tulip Lactate Dehydrogenase (LD) (L.S) Pyruvate → Lactate, DGKC 1x20ml; 1x5ml', NULL, NULL, 1),
(152, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'LXRF0050', NULL, 'Biorex RF Latex Kit -(50T)', NULL, NULL, 1),
(153, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0431A', NULL, 'Biorex HDL Cholesterol (L.S) Direct (without Calibrator) 3x10ml; 1x10ml', NULL, NULL, 1),
(154, '21', '0000-00-00 00:00:00', '92.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0203D', NULL, 'Biorex AST (GOT) (L.S) IFCC 2x100ml; 2x20ml', NULL, NULL, 1),
(155, '22', '0000-00-00 00:00:00', '70.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, '1234', NULL, 'Laboratory Timer ', NULL, NULL, 1),
(156, '22', '0000-00-00 00:00:00', '0.8000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'UC01', NULL, 'Urine Container (40 ml)', NULL, NULL, 1),
(157, '22', '0000-00-00 00:00:00', '26.0000', 'no_image.png', '10.0000', '', '12', 0, NULL, NULL, 'RCAVT05', NULL, 'K3 EDTA Vacuum Blood Collection Tubes (Lavender Top)', NULL, NULL, 1),
(158, '22', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'RCAVT02', NULL, 'Microtube Paedaitric K3 EDTA Vacuum Blood Collection Tubes', NULL, NULL, 1),
(159, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'MESR01', NULL, 'Manual ESR kits (100pcs/pk)', NULL, NULL, 1),
(160, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'LXASO025', NULL, 'ASO atex Reagent, +ve and -ve Controls, Pipette/Stirrers & Re-usable Test Slide (25T)', NULL, NULL, 1),
(161, '21', '0000-00-00 00:00:00', '20.0000', 'no_image.png', '5.0000', '', '12', 0, NULL, NULL, 'FEBSOH05', NULL, 'Biorex Widal Reagents Salmonella typhi H, typhi O & 0.5ml Positive Control (2x5ml; 1x0.5ml)', NULL, NULL, 1),
(162, '21', '0000-00-00 00:00:00', '30.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0493A', NULL, 'Alcohol, Ammonia, Carbonate Control Level 1(1x2ml)', NULL, NULL, 1),
(163, '21', '0000-00-00 00:00:00', '30.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0492A', NULL, 'Alcohol, Ammonia, Carbonate Calibrator (1x2ml)', NULL, NULL, 1),
(164, '21', '0000-00-00 00:00:00', '157.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'P14-03-105035-00', NULL, 'Genrui GE300-Electrolyte Reagents A & B (390.160 mL)', NULL, NULL, 1),
(165, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-105020-00', NULL, 'GE300 Electrolyte Ref. Filling Solution  (10 mL)', NULL, NULL, 1),
(166, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-105011-00', NULL, 'GE300 Electrolyte ISE. Filling Solution  (10 mL)', NULL, NULL, 1),
(167, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-05014-00', NULL, 'PVC Electrode Activating Solution for GE300 (50 mL)', NULL, NULL, 1),
(168, '22', '0000-00-00 00:00:00', '10.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-207002-00', NULL, 'Thermal Printer Paper for GE300 (80*35 mm)', NULL, NULL, 1),
(169, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-105023-00', NULL, 'Genrui GE-300-DeProtein Solution0 (50 mL)', NULL, NULL, 1),
(170, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P04-03-105209-00', NULL, 'Genrui QC Solution for GE300 (level 1:10 mL*1,level 2:10mL*1,level 3:10 mL*1)', NULL, NULL, 1),
(171, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-105028-00', NULL, 'Genrui DS-Ⅴ CO2 Standard (50 mL) for GE-300 Electrolytes Analyzer CO2 mode', NULL, NULL, 1),
(172, '21', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-105008-00', NULL, ' GE300-Electrolyte Cleaning Solutions (250 mL)', NULL, NULL, 1),
(173, '21', '0000-00-00 00:00:00', '160.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P14-03-105025-00', NULL, ' GE300-Electrolyte DS-C Standard C (400 mL) for CO2 mode', NULL, NULL, 1),
(174, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'GCCS-104', NULL, 'Chemistry Analyzer Cleaning Solutions (General Use) 250mL', NULL, NULL, 1),
(175, '22', '0000-00-00 00:00:00', '150.0000', '9bc8a44300665c70d49a8af7ea527ae4.jpg', '1.0000', '', '12', 0, NULL, NULL, '7030301004', NULL, 'DLab MicroPette Plus Autoclavable Pipette (0.5-10 uL)', NULL, NULL, 1),
(176, '22', '0000-00-00 00:00:00', '150.0000', 'f01eaf45d4d079e45a90527eb8d78283.jpg', '1.0000', '', '12', 0, NULL, NULL, '7030301014', NULL, 'DLab MicroPette Plus Autoclavable Pipette (10 -100 uL)', NULL, NULL, 1),
(177, '22', '0000-00-00 00:00:00', '200.0000', '592e8fbbd077340df7d7743ef17e5555.jpg', '1.0000', '', '12', 0, NULL, NULL, '70300000085', NULL, 'DLab MicroPette Plus Autoclavable Linear Pipette Stand', NULL, NULL, 1),
(178, '22', '0000-00-00 00:00:00', '200.0000', '1408941fc5bb8fe53a8d942a6c988bf4.png', '1.0000', '', '12', 0, NULL, NULL, '70300000840000027777', NULL, 'DLab MicroPette Plus Autoclavable Round Pipette Stand', NULL, NULL, 1),
(179, '22', '0000-00-00 00:00:00', '45.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'esrstand101', NULL, 'Manual ESR Stand  (30 Holes)', NULL, NULL, 1),
(180, '22', '0000-00-00 00:00:00', '120.0000', 'ed9844b5d3279b4960dc34ebe8de1d81.jpg', '1.0000', '', '12', 0, NULL, NULL, 'PT-01', NULL, 'Yellow Pipette Tips (1 - 200 uL)', NULL, NULL, 1),
(181, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'OI01', NULL, 'Oil Immersion (5ml)', NULL, NULL, 1),
(182, '22', '0000-00-00 00:00:00', '300.0000', 'ee8966d927ca893a47d43c0f7d751fed.jpg', '2.0000', '', '12', 0, NULL, NULL, 'HT404', NULL, 'HemoTypeSC Electrophoresis Kits (50 pcs/pk)', NULL, NULL, 1),
(183, '22', '0000-00-00 00:00:00', '18.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, 'CS01', NULL, 'Cover Slip (100 pcs/pk)', NULL, NULL, 1),
(184, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'P12-70-000069-41', NULL, 'Genrui WP21A Semi Automated Chemistry Analyzer Lamp', NULL, NULL, 1),
(185, '22', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'cryt01', NULL, 'Cryo Tube (1-2 mL) 500pcs/ctn', NULL, NULL, 1),
(186, '22', '0000-00-00 00:00:00', '30.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'ZL01', NULL, 'Zip Lock Bag 100pcs/pk ', NULL, NULL, 1),
(187, '22', '0000-00-00 00:00:00', '48.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'CL01', NULL, 'Colorant (100mL /Bottle)', NULL, NULL, 1),
(188, '22', '0000-00-00 00:00:00', '1500.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'WBC210', NULL, 'Hemocue WBC Analyzer incl. trafo', NULL, NULL, 1),
(189, '22', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'WBC210CH', NULL, 'Hemocue WBC Microcuvettes 4x40 pcs vial', NULL, NULL, 1),
(190, '22', '0000-00-00 00:00:00', '220.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'TPSA01', NULL, 'Total PSA ELISA kit', NULL, NULL, 1),
(191, '22', '0000-00-00 00:00:00', '180.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, 'TSH01', NULL, 'TSH ELISA kit', NULL, NULL, 1),
(192, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, 'FT301', NULL, 'Biorex Free T3 ELISA kit (96-Well)', NULL, NULL, 1),
(193, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, 'FT401', NULL, 'Biorex Free T4 ELISA kit (96-Well)', NULL, NULL, 1),
(194, '22', '0000-00-00 00:00:00', '8000.0000', 'ca165ceb1251c3922f628f155f223bee.jpg', '1.0000', '', '12', 0, NULL, NULL, 'P05-50-000114-00', NULL, 'GENRUI  KT-60 3-Part Auto Hematology Analyzer', NULL, NULL, 1),
(195, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, 'BGS01', NULL, 'Blood Grouping Sera (A, B, D)', NULL, NULL, 1),
(196, '21', '0000-00-00 00:00:00', '180.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0491A', NULL, 'Biorex Blood Alcohol(L.S.) UVR (1: 3 x 20ml  R2: 2 x   5ml  R4: 1 x 2ml)', NULL, NULL, 1),
(197, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0111A', NULL, 'Biorex Creatinine (L.S) Jaffe without Deproteinization 1 x 120ml  R2 1 x   120ml  R4 1 x 5ml', NULL, NULL, 1),
(198, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXC0741A', NULL, 'Biorex Transferrin (L.S) BX (R1: 2 x 20ml R2: 1 x   8ml);', NULL, NULL, 1),
(199, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '2.0000', '', '12', 0, NULL, NULL, 'BXC0123B', NULL, 'Boirex Urea (L.S) Modified Berthelot (R1: 3 x 100ml R2: 1 x   60ml  R4: 1 x 5ml)', NULL, NULL, 1),
(200, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'LXCRP050', NULL, 'Biorex CRP Latex Kit (50T)', NULL, NULL, 1),
(201, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BGAG1010', NULL, 'Biorex Atni Human Globilin AHG (Coomb\'s) 10ml', NULL, NULL, 1),
(202, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0811A', NULL, 'Biorex  Carcinoembryonic Antigen CEA ELISA (96-Wells Plate)', NULL, NULL, 1),
(203, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0831A', NULL, 'Biorex  Cortisol ELISA (96-Wells Plate)', NULL, NULL, 1),
(204, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0860A', NULL, 'Biorex  Estradiol ELISA (96-Wells Plate)', NULL, NULL, 1),
(205, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0622A', NULL, 'Biorex  Herpes Simplex Virus (HSV-  I/2), IgG ELISA (96-Wells Plate)', NULL, NULL, 1),
(206, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0621A', NULL, 'Biorex  Herpes Simplex Virus (HSV-  I/2), IgM ELISA (96-Wells Plate)', NULL, NULL, 1),
(207, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE08911A', NULL, 'Biorex  Ferritin  ELISA (96-Wells Plate)', NULL, NULL, 1),
(208, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0861A', NULL, 'Biorex  Free PSA  (96-Wells Plate)', NULL, NULL, 1),
(209, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0641A', NULL, 'Biorex  IgE ELISA (96-Wells Plate)', NULL, NULL, 1),
(210, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0661A', NULL, 'Biorex  Progesterone ELISAB (96-Wells Plate)', NULL, NULL, 1),
(211, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0864A', NULL, 'Biorex  Troponin-I ELISA  (96-Wells Plate)', NULL, NULL, 1),
(212, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png', '1.0000', '', '12', 0, NULL, NULL, 'BXE0960A', NULL, 'Biorex  Vitamin B12 ELISA  (96-Wells Plate)', NULL, NULL, 1),
(213, '21', '0000-00-00 00:00:00', '1200.0000', '460fc4e964f42d0e230a5890c1e42b4c.jpg', '1.0000', '', '12', 0, NULL, NULL, '90275000', NULL, 'Hemocue WBC Analyzer x10/9 /L', NULL, NULL, 1),
(214, '22', '0000-00-00 00:00:00', '20.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, 'ML012', NULL, 'Allele Malaria Cassettes (25T/PK)', NULL, NULL, 1),
(265, '23', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '0.0000', '', '16', 0, NULL, NULL, '0085', NULL, 'Product without warehouse', NULL, NULL, 1),
(266, '21', '0000-00-00 00:00:00', '100.0000', 'no_image.png', '0.0000', '', '12', 0, NULL, NULL, '1001', NULL, 'Test Product on 11_12_2021', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_equipments_mapping`
--

CREATE TABLE `sma_equipments_mapping` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_equipments_mapping`
--

INSERT INTO `sma_equipments_mapping` (`id`, `equipment_id`, `name`, `contact_no`, `email`, `signature`) VALUES
(34, NULL, '4', '0000-00-00 00:00:00', '60.0000', '72a40575aa1e484433bb0d8f810462a1.jpg'),
(35, NULL, '4', '0000-00-00 00:00:00', '20.0000', '73f505efb742203c4eec2c3098b9990e.jpg'),
(30, NULL, '4', '2000-02-14 00:00:00', '750.0000', '0204cf7b3a8a7956c075a9e3f4f8115d.jpg'),
(31, NULL, '4', '0000-00-00 00:00:00', '35.0000', 'f5aab8af1aed70c0a03adb3837f47000.jpg'),
(32, NULL, '22', '0000-00-00 00:00:00', '2500.0000', '6c54eb329d608ac8288ad1e1b2360848.jpg'),
(33, NULL, '22', '0000-00-00 00:00:00', '65.0000', '8f6ba95f75d46666084fb1de8b842d39.jpg'),
(29, NULL, '22', '0000-00-00 00:00:00', '50.0000', '031200702bb33e1c8f136ea86d16ab04.jpg'),
(28, NULL, '4', '0000-00-00 00:00:00', '650.0000', '38c8ef2fdacba260016d7263448f2f47.jpeg'),
(36, NULL, '4', '0000-00-00 00:00:00', '90.0000', 'b5a5e01d31b1765f4f33eecc406f0d3c.jpg'),
(37, NULL, '4', '0000-00-00 00:00:00', '35.0000', '551f60153a65eaee5d8431e8b94257e6.jpg'),
(38, NULL, '4', '0000-00-00 00:00:00', '37.0000', '9a7df842a8c95682857bc294f699eb56.jpg'),
(39, NULL, '4', '0000-00-00 00:00:00', '30.0000', '6ad673365c6bd63231f0ae5755da8dc9.png'),
(40, NULL, '22', '0000-00-00 00:00:00', '50.0000', '230501ff1d095ca8fa0fbec140beec02.png'),
(41, NULL, '4', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(42, NULL, '4', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(43, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(44, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(45, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(46, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(47, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(48, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(49, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(50, NULL, '4', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(51, NULL, '4', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(52, NULL, '21', '0000-00-00 00:00:00', '175.0000', 'no_image.png'),
(53, NULL, '21', '0000-00-00 00:00:00', '175.0000', 'no_image.png'),
(54, NULL, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(57, NULL, '22', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(56, NULL, '22', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(58, NULL, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(59, NULL, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(60, NULL, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(61, NULL, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(62, NULL, '22', '0000-00-00 00:00:00', '104.0000', 'no_image.png'),
(63, NULL, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(64, NULL, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(65, NULL, '22', '0000-00-00 00:00:00', '140.0000', 'no_image.png'),
(66, NULL, '22', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(67, NULL, '21', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(68, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(69, NULL, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(70, NULL, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(71, NULL, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(72, NULL, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(73, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(74, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(75, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(76, NULL, '21', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(77, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(78, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(79, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(80, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(81, NULL, '21', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(82, NULL, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(83, NULL, '22', '0000-00-00 00:00:00', '130.0000', 'no_image.png'),
(84, NULL, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(85, NULL, '22', '0000-00-00 00:00:00', '4000.0000', 'no_image.png'),
(86, NULL, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(87, NULL, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(88, NULL, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(89, NULL, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(90, NULL, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(91, NULL, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(92, NULL, '22', '0000-00-00 00:00:00', '130.0000', 'no_image.png'),
(93, NULL, '22', '0000-00-00 00:00:00', '3000.0000', '879d6782c2e5937e93998b244139c58f.jpg'),
(94, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(95, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(96, NULL, '22', '0000-00-00 00:00:00', '140.0000', 'no_image.png'),
(97, NULL, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(98, NULL, '22', '0000-00-00 00:00:00', '75.0000', 'no_image.png'),
(99, NULL, '22', '0000-00-00 00:00:00', '75.0000', 'no_image.png'),
(100, NULL, '22', '0000-00-00 00:00:00', '35.0000', 'no_image.png'),
(101, NULL, '22', '0000-00-00 00:00:00', '88.0000', 'no_image.png'),
(102, NULL, '22', '0000-00-00 00:00:00', '95.0000', 'no_image.png'),
(103, NULL, '22', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(104, NULL, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png'),
(105, NULL, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png'),
(106, NULL, '22', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(107, NULL, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png'),
(108, NULL, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(109, NULL, '22', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(110, NULL, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png'),
(111, NULL, '22', '0000-00-00 00:00:00', '40.0000', 'no_image.png'),
(112, NULL, '22', '0000-00-00 00:00:00', '90.0000', 'no_image.png'),
(113, NULL, '22', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(114, NULL, '22', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(115, NULL, '22', '0000-00-00 00:00:00', '40.0000', 'no_image.png'),
(116, NULL, '22', NULL, '24.0000', 'no_image.png'),
(117, NULL, '22', '0000-00-00 00:00:00', '13.0000', 'no_image.png'),
(118, NULL, '22', '0000-00-00 00:00:00', '30.0000', 'no_image.png'),
(119, NULL, '22', '0000-00-00 00:00:00', '35.0000', 'no_image.png'),
(120, NULL, '22', '0000-00-00 00:00:00', '12.5000', 'no_image.png'),
(121, NULL, '21', '0000-00-00 00:00:00', '54.0000', 'no_image.png'),
(122, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(123, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(124, NULL, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png'),
(125, NULL, '21', '0000-00-00 00:00:00', '46.0000', 'no_image.png'),
(126, NULL, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png'),
(127, NULL, '21', '0000-00-00 00:00:00', '54.0000', 'no_image.png'),
(128, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(129, NULL, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png'),
(130, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(131, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(132, NULL, '21', '0000-00-00 00:00:00', '120.0000', 'no_image.png'),
(133, NULL, '21', '0000-00-00 00:00:00', '130.0000', 'no_image.png'),
(134, NULL, '21', '0000-00-00 00:00:00', '70.0000', 'no_image.png'),
(135, NULL, '21', '0000-00-00 00:00:00', '95.0000', 'no_image.png'),
(136, NULL, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png'),
(137, NULL, '21', '0000-00-00 00:00:00', '148.0000', 'no_image.png'),
(138, NULL, '21', '0000-00-00 00:00:00', '261.0000', 'no_image.png'),
(139, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(140, NULL, '21', '0000-00-00 00:00:00', '60.0000', 'no_image.png'),
(141, NULL, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png'),
(142, NULL, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png'),
(143, NULL, '21', '0000-00-00 00:00:00', '140.0000', 'no_image.png'),
(144, NULL, '21', '0000-00-00 00:00:00', '180.0000', 'no_image.png'),
(145, NULL, '21', '0000-00-00 00:00:00', '240.0000', 'no_image.png'),
(146, NULL, '21', '0000-00-00 00:00:00', '96.0000', 'no_image.png'),
(147, NULL, '21', '0000-00-00 00:00:00', '180.0000', 'no_image.png'),
(148, NULL, '21', '0000-00-00 00:00:00', '220.0000', 'no_image.png'),
(149, NULL, '21', '0000-00-00 00:00:00', '135.0000', 'no_image.png'),
(150, NULL, '21', '0000-00-00 00:00:00', '92.0000', 'no_image.png'),
(151, NULL, '21', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(152, NULL, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(153, NULL, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png'),
(154, NULL, '21', '0000-00-00 00:00:00', '92.0000', 'no_image.png'),
(155, NULL, '22', '0000-00-00 00:00:00', '70.0000', 'no_image.png'),
(156, NULL, '22', '0000-00-00 00:00:00', '0.8000', 'no_image.png'),
(157, NULL, '22', '0000-00-00 00:00:00', '26.0000', 'no_image.png'),
(158, NULL, '22', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(159, NULL, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(160, NULL, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(161, NULL, '21', '0000-00-00 00:00:00', '20.0000', 'no_image.png'),
(162, NULL, '21', '0000-00-00 00:00:00', '30.0000', 'no_image.png'),
(163, NULL, '21', '0000-00-00 00:00:00', '30.0000', 'no_image.png'),
(164, NULL, '21', '0000-00-00 00:00:00', '157.0000', 'no_image.png'),
(165, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(166, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(167, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(168, NULL, '22', '0000-00-00 00:00:00', '10.0000', 'no_image.png'),
(169, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(170, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(171, NULL, '21', '0000-00-00 00:00:00', '150.0000', 'no_image.png'),
(172, NULL, '21', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(173, NULL, '21', '0000-00-00 00:00:00', '160.0000', 'no_image.png'),
(174, NULL, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(175, NULL, '22', '0000-00-00 00:00:00', '150.0000', '9bc8a44300665c70d49a8af7ea527ae4.jpg'),
(176, NULL, '22', '0000-00-00 00:00:00', '150.0000', 'f01eaf45d4d079e45a90527eb8d78283.jpg'),
(177, NULL, '22', '0000-00-00 00:00:00', '200.0000', '592e8fbbd077340df7d7743ef17e5555.jpg'),
(178, NULL, '22', '0000-00-00 00:00:00', '200.0000', '1408941fc5bb8fe53a8d942a6c988bf4.png'),
(179, NULL, '22', '0000-00-00 00:00:00', '45.0000', 'no_image.png'),
(180, NULL, '22', '0000-00-00 00:00:00', '120.0000', 'ed9844b5d3279b4960dc34ebe8de1d81.jpg'),
(181, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(182, NULL, '22', '0000-00-00 00:00:00', '300.0000', 'ee8966d927ca893a47d43c0f7d751fed.jpg'),
(183, NULL, '22', '0000-00-00 00:00:00', '18.0000', 'no_image.png'),
(184, NULL, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(185, NULL, '22', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(186, NULL, '22', '0000-00-00 00:00:00', '30.0000', 'no_image.png'),
(187, NULL, '22', '0000-00-00 00:00:00', '48.0000', 'no_image.png'),
(188, NULL, '22', '0000-00-00 00:00:00', '1500.0000', 'no_image.png'),
(189, NULL, '22', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(190, NULL, '22', '0000-00-00 00:00:00', '220.0000', 'no_image.png'),
(191, NULL, '22', '0000-00-00 00:00:00', '180.0000', 'no_image.png'),
(192, NULL, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(193, NULL, '22', '0000-00-00 00:00:00', '200.0000', 'no_image.png'),
(194, NULL, '22', '0000-00-00 00:00:00', '8000.0000', 'ca165ceb1251c3922f628f155f223bee.jpg'),
(195, NULL, '21', '0000-00-00 00:00:00', '25.0000', 'no_image.png'),
(196, NULL, '21', '0000-00-00 00:00:00', '180.0000', 'no_image.png'),
(197, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(198, NULL, '21', '0000-00-00 00:00:00', '250.0000', 'no_image.png'),
(199, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(200, NULL, '21', '0000-00-00 00:00:00', '80.0000', 'no_image.png'),
(201, NULL, '21', '0000-00-00 00:00:00', '50.0000', 'no_image.png'),
(202, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(203, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(204, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(205, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(206, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(207, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(208, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(209, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(210, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(211, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(212, NULL, '21', '0000-00-00 00:00:00', '300.0000', 'no_image.png'),
(213, NULL, '21', '0000-00-00 00:00:00', '1200.0000', '460fc4e964f42d0e230a5890c1e42b4c.jpg'),
(214, NULL, '22', '0000-00-00 00:00:00', '20.0000', 'no_image.png'),
(265, NULL, '23', '0000-00-00 00:00:00', '100.0000', 'no_image.png'),
(266, NULL, '21', '0000-00-00 00:00:00', '100.0000', 'no_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `sma_expenses`
--

CREATE TABLE `sma_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expense_name` text DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `amount` decimal(25,4) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_expenses`
--

INSERT INTO `sma_expenses` (`id`, `date`, `expense_name`, `reference`, `amount`, `note`, `created_by`, `attachment`, `category_id`, `warehouse_id`) VALUES
(1, '2021-12-18 18:25:00', '1', '1', '100.0000', '<p>1</p>', '1', 'ac72548c721319bb138e2aaed3abb6af.jpg', 1, 1),
(2, '2021-12-18 19:14:00', '1', '1', '1.0000', '<p>1</p>', '1', NULL, 1, 1),
(3, '2021-12-18 19:16:00', 'Test ', 'test', '100.0000', '<p>test</p>', '1', 'ba9293751cb1c828782aaaf5266f2231.png', 1, 1),
(4, '2021-12-18 19:17:00', 'Test ', '1', '100.0000', '', '1', '893160f511584aeadca840d7d21e1e2d.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_expense_categories`
--

CREATE TABLE `sma_expense_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_expense_categories`
--

INSERT INTO `sma_expense_categories` (`id`, `code`, `name`) VALUES
(1, '99', 'Category');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_cards`
--

CREATE TABLE `sma_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_card_topups`
--

CREATE TABLE `sma_gift_card_topups` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_groups`
--

CREATE TABLE `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'customer', 'Customer'),
(4, 'supplier', 'Supplier'),
(5, 'sales', 'Sales Staff');

-- --------------------------------------------------------

--
-- Table structure for table `sma_login_attempts`
--

CREATE TABLE `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_migrations`
--

CREATE TABLE `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Table structure for table `sma_notifications`
--

CREATE TABLE `sma_notifications` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT 3
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_notifications`
--

INSERT INTO `sma_notifications` (`id`, `comment`, `date`, `from_date`, `till_date`, `scope`) VALUES
(1, '<p>Thank you for purchasing Stock Manager Advance. Please do not forget to check the documentation in help folder. If you find any error/bug, please email to support@tecdiary.com with details. You can send us your valued suggestions/feedback too.</p><p>Please rate Stock Manager Advance on your download page of codecanyon.net</p>', '2014-08-15 06:00:57', '2015-01-01 00:00:00', '2017-01-01 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sma_order_ref`
--

CREATE TABLE `sma_order_ref` (
  `ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT 1,
  `qu` int(11) NOT NULL DEFAULT 1,
  `po` int(11) NOT NULL DEFAULT 1,
  `to` int(11) NOT NULL DEFAULT 1,
  `pos` int(11) NOT NULL DEFAULT 1,
  `do` int(11) NOT NULL DEFAULT 1,
  `pay` int(11) NOT NULL DEFAULT 1,
  `re` int(11) NOT NULL DEFAULT 1,
  `rep` int(11) NOT NULL DEFAULT 1,
  `ex` int(11) NOT NULL DEFAULT 1,
  `ppay` int(11) NOT NULL DEFAULT 1,
  `qa` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2015-03-01', 45, 8, 13, 1, 1, 37, 33, 2, 1, 2, 2, 211);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pages`
--

CREATE TABLE `sma_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(180) NOT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `body` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_no` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_payments`
--

CREATE TABLE `sma_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT 0.0000,
  `pos_balance` decimal(25,4) DEFAULT 0.0000,
  `approval_code` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(20, '2021-09-05 16:45:00', 23, NULL, NULL, 'IPAY2021/09/0017', NULL, 'cash', '', '', '', '', '', 'Visa', '586.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(12, '2021-08-27 03:22:00', 12, NULL, NULL, 'IPAY2021/08/0009', NULL, 'Cheque', '12345', '', '', '', '', 'Visa', '2500.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(13, '2021-08-31 18:06:00', 21, NULL, NULL, 'IPAY2021/08/0010', NULL, 'Cheque', '1234', '', '', '', '', 'Visa', '330.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(14, '2021-09-02 17:11:00', 23, NULL, NULL, 'IPAY2021/09/0011', NULL, 'Cheque', '1234', '', '', '', '', 'Visa', '954.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(15, '2021-09-05 16:39:00', 13, NULL, NULL, 'IPAY2021/09/0012', NULL, 'cash', '', '', '', '', '', 'Visa', '25.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(16, '2021-09-05 16:39:00', 15, NULL, NULL, 'IPAY2021/09/0013', NULL, 'cash', '', '', '', '', '', 'Visa', '840.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(17, '2021-09-05 16:39:00', 16, NULL, NULL, 'IPAY2021/09/0014', NULL, 'cash', '', '', '', '', '', 'Visa', '480.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(18, '2021-09-05 16:44:00', 14, NULL, NULL, 'IPAY2021/09/0015', NULL, 'cash', '', '', '', '', '', 'Visa', '536.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(19, '2021-09-05 16:45:00', 17, NULL, NULL, 'IPAY2021/09/0016', NULL, 'cash', '', '', '', '', '', 'Visa', '50.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(21, '2021-09-05 16:45:00', 23, NULL, NULL, 'IPAY2021/09/0018', NULL, 'cash', '', '', '', '', '', 'Visa', '-1172.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(22, '2021-09-07 10:56:00', 26, NULL, NULL, 'IPAY2021/09/0019', NULL, 'cash', '', '', '', '', '', 'Visa', '180.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(23, '2021-09-07 10:56:00', 25, NULL, NULL, 'IPAY2021/09/0020', NULL, 'cash', '', '', '', '', '', 'Visa', '768.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(24, '2021-09-08 16:10:00', 28, NULL, NULL, 'IPAY2021/09/0021', NULL, 'other', '', '', '', '', '', 'Visa', '470.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(25, '2021-09-13 19:13:00', 30, NULL, NULL, 'IPAY2021/09/0022', NULL, 'cash', '', '', '', '', '', 'Visa', '100.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(26, '2021-09-21 00:35:00', 31, NULL, NULL, 'IPAY2021/09/0023', NULL, 'cash', '', '', '', '', '', 'Visa', '195.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(27, '2021-09-21 00:35:00', 29, NULL, NULL, 'IPAY2021/09/0024', NULL, 'cash', '', '', '', '', '', 'Visa', '110.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(28, '2021-09-21 00:37:00', 18, NULL, NULL, 'IPAY2021/09/0025', NULL, 'cash', '', '', '', '', '', 'Visa', '2120.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(29, '2021-09-28 23:41:00', 32, NULL, NULL, 'IPAY2021/09/0026', NULL, 'cash', '', '', '', '', '', 'Visa', '700.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(30, '2021-09-28 23:41:00', 19, NULL, NULL, 'IPAY2021/09/0027', NULL, 'cash', '', '', '', '', '', 'Visa', '2000.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(31, '2021-10-20 13:26:00', 20, NULL, NULL, 'IPAY2021/10/0028', NULL, 'Cheque', '', '', '', '', '', 'Visa', '150.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(32, '2021-10-20 13:26:00', 33, NULL, NULL, 'IPAY2021/10/0029', NULL, 'Cheque', '', '', '', '', '', 'Visa', '312.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(33, '2021-10-28 01:07:00', 41, NULL, NULL, 'IPAY2021/10/0030', NULL, 'cash', '', '', '', '', '', 'Visa', '520.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(34, '2021-10-28 21:54:00', 34, NULL, NULL, 'IPAY2021/10/0031', NULL, 'cash', '', '', '', '', '', 'Visa', '1000.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL),
(35, '2021-10-28 22:05:00', 37, NULL, NULL, 'IPAY2021/10/0032', NULL, 'cash', '', '', '', '', '', 'Visa', '480.0000', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_paypal`
--

CREATE TABLE `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT 2.0000,
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT 3.9000,
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT 4.4000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_permissions`
--

CREATE TABLE `sma_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT 0,
  `products-add` tinyint(1) DEFAULT 0,
  `products-edit` tinyint(1) DEFAULT 0,
  `products-delete` tinyint(1) DEFAULT 0,
  `products-cost` tinyint(1) DEFAULT 0,
  `products-price` tinyint(1) DEFAULT 0,
  `quotes-index` tinyint(1) DEFAULT 0,
  `quotes-add` tinyint(1) DEFAULT 0,
  `quotes-edit` tinyint(1) DEFAULT 0,
  `quotes-pdf` tinyint(1) DEFAULT 0,
  `quotes-email` tinyint(1) DEFAULT 0,
  `quotes-delete` tinyint(1) DEFAULT 0,
  `sales-index` tinyint(1) DEFAULT 0,
  `sales-add` tinyint(1) DEFAULT 0,
  `sales-edit` tinyint(1) DEFAULT 0,
  `sales-pdf` tinyint(1) DEFAULT 0,
  `sales-email` tinyint(1) DEFAULT 0,
  `sales-delete` tinyint(1) DEFAULT 0,
  `purchases-index` tinyint(1) DEFAULT 0,
  `purchases-add` tinyint(1) DEFAULT 0,
  `purchases-edit` tinyint(1) DEFAULT 0,
  `purchases-pdf` tinyint(1) DEFAULT 0,
  `purchases-email` tinyint(1) DEFAULT 0,
  `purchases-delete` tinyint(1) DEFAULT 0,
  `transfers-index` tinyint(1) DEFAULT 0,
  `transfers-add` tinyint(1) DEFAULT 0,
  `transfers-edit` tinyint(1) DEFAULT 0,
  `transfers-pdf` tinyint(1) DEFAULT 0,
  `transfers-email` tinyint(1) DEFAULT 0,
  `transfers-delete` tinyint(1) DEFAULT 0,
  `customers-index` tinyint(1) DEFAULT 0,
  `customers-add` tinyint(1) DEFAULT 0,
  `customers-edit` tinyint(1) DEFAULT 0,
  `customers-delete` tinyint(1) DEFAULT 0,
  `suppliers-index` tinyint(1) DEFAULT 0,
  `suppliers-add` tinyint(1) DEFAULT 0,
  `suppliers-edit` tinyint(1) DEFAULT 0,
  `suppliers-delete` tinyint(1) DEFAULT 0,
  `sales-deliveries` tinyint(1) DEFAULT 0,
  `sales-add_delivery` tinyint(1) DEFAULT 0,
  `sales-edit_delivery` tinyint(1) DEFAULT 0,
  `sales-delete_delivery` tinyint(1) DEFAULT 0,
  `sales-email_delivery` tinyint(1) DEFAULT 0,
  `sales-pdf_delivery` tinyint(1) DEFAULT 0,
  `sales-gift_cards` tinyint(1) DEFAULT 0,
  `sales-add_gift_card` tinyint(1) DEFAULT 0,
  `sales-edit_gift_card` tinyint(1) DEFAULT 0,
  `sales-delete_gift_card` tinyint(1) DEFAULT 0,
  `pos-index` tinyint(1) DEFAULT 0,
  `sales-return_sales` tinyint(1) DEFAULT 0,
  `reports-index` tinyint(1) DEFAULT 0,
  `reports-warehouse_stock` tinyint(1) DEFAULT 0,
  `reports-quantity_alerts` tinyint(1) DEFAULT 0,
  `reports-expiry_alerts` tinyint(1) DEFAULT 0,
  `reports-products` tinyint(1) DEFAULT 0,
  `reports-daily_sales` tinyint(1) DEFAULT 0,
  `reports-monthly_sales` tinyint(1) DEFAULT 0,
  `reports-sales` tinyint(1) DEFAULT 0,
  `reports-payments` tinyint(1) DEFAULT 0,
  `reports-purchases` tinyint(1) DEFAULT 0,
  `reports-profit_loss` tinyint(1) DEFAULT 0,
  `reports-customers` tinyint(1) DEFAULT 0,
  `reports-suppliers` tinyint(1) DEFAULT 0,
  `reports-staff` tinyint(1) DEFAULT 0,
  `reports-register` tinyint(1) DEFAULT 0,
  `sales-payments` tinyint(1) DEFAULT 0,
  `purchases-payments` tinyint(1) DEFAULT 0,
  `purchases-expenses` tinyint(1) DEFAULT 0,
  `products-adjustments` tinyint(1) NOT NULL DEFAULT 0,
  `bulk_actions` tinyint(1) NOT NULL DEFAULT 0,
  `customers-deposits` tinyint(1) NOT NULL DEFAULT 0,
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT 0,
  `products-barcode` tinyint(1) NOT NULL DEFAULT 0,
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT 0,
  `reports-expenses` tinyint(1) NOT NULL DEFAULT 0,
  `reports-daily_purchases` tinyint(1) DEFAULT 0,
  `reports-monthly_purchases` tinyint(1) DEFAULT 0,
  `products-stock_count` tinyint(1) DEFAULT 0,
  `edit_price` tinyint(1) DEFAULT 0,
  `returns-index` tinyint(1) DEFAULT 0,
  `returns-add` tinyint(1) DEFAULT 0,
  `returns-edit` tinyint(1) DEFAULT 0,
  `returns-delete` tinyint(1) DEFAULT 0,
  `returns-email` tinyint(1) DEFAULT 0,
  `returns-pdf` tinyint(1) DEFAULT 0,
  `reports-tax` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `returns-index`, `returns-add`, `returns-edit`, `returns-delete`, `returns-email`, `returns-pdf`, `reports-tax`) VALUES
(1, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_register`
--

CREATE TABLE `sma_pos_register` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2020-01-14 00:15:00', 1, '200.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_settings`
--

CREATE TABLE `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT 1,
  `paypal_pro` tinyint(1) DEFAULT 0,
  `stripe` tinyint(1) DEFAULT 0,
  `rounding` tinyint(1) DEFAULT 0,
  `char_per_line` tinyint(4) DEFAULT 42,
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `after_sale_page` tinyint(1) DEFAULT 0,
  `item_order` tinyint(1) DEFAULT 0,
  `authorize` tinyint(1) DEFAULT 0,
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT 1,
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT 0,
  `customer_details` tinyint(1) DEFAULT NULL,
  `local_printers` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`, `local_printers`) VALUES
(1, 22, 20, 1, 1, 3, '1', 'GST Reg', 'VAT Reg', '123456789', '987654321', 'BIXOLON SRP-350II', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, 'BIXOLON SRP-350II, BIXOLON SRP-350II', 0, 'default', 1, 0, 0, 0, 42, NULL, 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, NULL, 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_price_groups`
--

CREATE TABLE `sma_price_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `sma_printers`
--

CREATE TABLE `sma_printers` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_products`
--

CREATE TABLE `sma_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT 20.0000,
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT 1,
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT 0,
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT 0,
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL,
  `sale_unit` int(11) DEFAULT NULL,
  `purchase_unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `weight` decimal(10,4) DEFAULT NULL,
  `hsn_code` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0,
  `second_name` varchar(255) DEFAULT NULL,
  `hide_pos` tinyint(1) NOT NULL DEFAULT 0,
  `product_type` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`, `hide_pos`, `product_type`) VALUES
(34, 'HbA1CdCC', 'HemoCue HbA1c 501, Daily Check Cartridge ', 4, '17.9200', '60.0000', '1.0000', '72a40575aa1e484433bb0d8f810462a1.jpg', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 12, 'hemocue-hba1c-501-daily-check-cartridge', NULL, '1.0000', NULL, 0, 0, '', 0, NULL),
(35, 'HbA1CmCC', 'HemoCue HbA1c 501, Monthly Check Cartridge', 4, '5.0000', '20.0000', '1.0000', '73f505efb742203c4eec2c3098b9990e.jpg', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 12, 'hemocue-hba1c-501-monthly-check-cartridge', NULL, '1.0000', NULL, 0, 0, '', 0, NULL),
(30, 'HbA1CA', 'HemoCue Hb-801 Analyzer', 4, '214.4600', '750.0000', '1.0000', '0204cf7b3a8a7956c075a9e3f4f8115d.jpg', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 12, 'hemocue-hb-801-analyzer', NULL, '1.0000', NULL, 0, 0, '', 0, NULL),
(31, '405110', 'HemoCue Hb-801 Mcrocuvette', 4, '15.0000', '35.0000', '1.0000', 'f5aab8af1aed70c0a03adb3837f47000.jpg', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 12, 'hemocue-hb-801-mcrocuvette', NULL, '50.0000', NULL, 0, 0, '', 0, NULL),
(32, '405210', 'HemoCue HbA1c 501 Analyzer', 22, '656.0000', '2500.0000', '1.0000', '6c54eb329d608ac8288ad1e1b2360848.jpg', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 12, 'hemocue-hba1c-501-analyzer', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(33, '4052100', 'HemoCue HbA1c 501, Test Cartridge', 22, '3.6000', '65.0000', '1.0000', '8f6ba95f75d46666084fb1de8b842d39.jpg', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 12, 'hemocue-hba1c-501-test-cartridge', NULL, '10.0000', NULL, 0, 0, '', 0, NULL),
(29, '1211801', 'HemoCue Hb-301 Microcuvette', 22, '13.0000', '50.0000', '5.0000', '031200702bb33e1c8f136ea86d16ab04.jpg', 12, NULL, '', '', '', '', '', '', '131.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 12, 'hemocue-hb-301-microcuvette', NULL, '50.0000', NULL, 0, 0, '', 0, NULL),
(28, '121804', 'HemoCue Hb-301 Analyzer', 4, '196.9600', '650.0000', '1.0000', '38c8ef2fdacba260016d7263448f2f47.jpeg', 12, NULL, '', '', '', '', '', '', '20.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 12, 'hemocue-hb-301-analyzer', NULL, '1.0000', NULL, 0, 0, '', 0, NULL),
(36, 'EGVBCT-01B', 'ESR Vacuum Blood Collection Tubes (Glass)', 4, '15.0000', '90.0000', '2.0000', 'b5a5e01d31b1765f4f33eecc406f0d3c.jpg', 12, NULL, '', '', '', '', '', '', '-8.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 0, 'esr-vacuum-blood-collection-tubes-glass', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(37, 'YGCAVBT-01G', 'Serum Gel Clot Activator Vacuum Blood Collection Tube', 4, '20.0000', '35.0000', '10.0000', '551f60153a65eaee5d8431e8b94257e6.jpg', 12, NULL, '', '', '', '', '', '', '44.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 0, 'serum-gel-clot-activator-vacuum-blood-collection-tube', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(38, 'CPDA-1SBB01', 'CPDA-1 Single Blood Bag', 4, '20.0000', '37.0000', '10.0000', '9a7df842a8c95682857bc294f699eb56.jpg', 12, NULL, '', '', '', '', '', '', '60.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 13, 'cpda-1-single-blood-bag', 1, '450.0000', NULL, 0, 0, '', 0, NULL),
(39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', 4, '5.0000', '30.0000', '30.0000', '6ad673365c6bd63231f0ae5755da8dc9.png', 12, NULL, '', '', '', '', '', '', '115.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 14, 'agl-550-at-tm-glucose-test-strips-50t', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(40, 'AGL-ST10-B', 'AllChek TM Glucose Meter', 22, '10.0000', '50.0000', '2.0000', '230501ff1d095ca8fa0fbec140beec02.png', 12, NULL, '', '', '', '', '', '', '31.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 14, 'allchek-tm-glucose-meter', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(41, '139123', 'HemoCue Cleaner', 4, '6.2500', '25.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 12, 'hemocue-cleaner', 1, '5.0000', NULL, 0, 0, '', 0, NULL),
(42, 'MF-18', 'Flourecare Testosterone (T) Diagnostic Kit', 4, '31.2600', '120.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-testosterone-t-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(43, 'MF-20', 'Flourecare Thyroid Stimulating Hormone (TSH) Diagnostic Kit', 4, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-thyroid-stimulating-hormone-tsh-diagnostic-k', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(44, 'MF-24', 'Flourecare Free triiodothyonine (fT3) Diagnostic Kit', 4, '25.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-free-triiodothyonine-ft3-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(45, 'MF-25', 'Flourecare Free Thyroxine (fT4) Diagnostic Kit', 4, '25.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-free-thyroxine-ft4-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 4, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-glycosylated-hemoglobin-hba1c-diagnostic-kit', NULL, '20.0000', NULL, 0, 0, '', 0, NULL),
(47, 'MF-28', 'Flourecare C-Reactive Protein (CRP) Diagnostic Kit', 4, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-c-reactive-protein-crp-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(48, 'MF-22', 'Flourecare Triiodothyronine (T3) Diagnostic Kit', 4, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-triiodothyronine-t3-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(49, 'MF-23', 'Flourecare Thyroxine (T4) Diagnostic Kit', 4, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 15, 'flourecare-thyroxine-t4-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(50, 'MF-46', 'Flourecare Prostate Specific Antigen (PSA) Kit', 4, '26.0000', '120.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-prostate-specific-antigen-psa-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(51, 'MF-14', 'Flourecare Beta Human Chorionic Gonadotropin (β- HCG) Kit', 4, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, 4, 15, 'flourecare-beta-human-chorionic-gonadotropin-v-hcg-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 21, '15.0000', '175.0000', '4.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '22.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 16, 'genrui-kt03a-diluent-for-3-parts-haematology-analyzer-2', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(53, 'P04-03-101056-00', 'GENRUI  KT05DIL Diluent for 5-Part Hematology Analyzer  (20 L)', 21, '5.0000', '175.0000', '10.0000', 'no_image.png', 12, 11, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 16, 'genrui-kt05dil-5-part-hematology-analyzer-diluent-20-l', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(54, 'MF-31', 'Floure Cardiac Troponin I (cTnI) Diagnostic Kit', 22, '31.0000', '160.0000', '1.0000', 'no_image.png', 12, 11, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'floure-cardiac-troponin-i-ctni-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(57, 'MF-17', 'Flourecare Prolactin (PRL) Diagnostic Kit', 22, '28.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-prolactin-prl-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(56, 'MF-16', 'Floure Follicle Stimulating Hormone (FSH) Diagnostic Kit', 22, '28.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 15, 'floure-follicle-stimulating-hormone-fsh-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(58, 'MF-19', 'Flourecare Progesterone (P) Diagnostic Kit', 22, '29.0000', '120.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-progesterone-p-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(59, 'MF-32', 'Flourecare Creatine Kinase Isoenzyme (CK-MB) Diagnostic Kit', 22, '31.0000', '160.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-creatine-kinase-isoenzyme-ck-mb-diagnostic-k', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(60, 'MF-34', 'Flourecare D-dimer(DD) Diagnostic Kit', 22, '40.0000', '200.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-d-dimerdd-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(61, 'MF-41', 'Flourecare C-peptide (C-P) Diagnostic Kit', 22, '40.0000', '200.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-c-peptide-c-p-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(62, 'MF-15', 'Flourecare Luteinizing Hormone (LH) Diagnostic Kit', 22, '26.0000', '104.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-luteinizing-hormone-lh-diagnostic-kit', NULL, '20.0000', NULL, 0, 0, '', 0, NULL),
(63, 'MF-12', 'Flourecare Ferritin (FERR) Diagnostic Kit', 22, '31.0000', '160.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-ferritin-ferr-diagnostic-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(64, 'MF-53', 'Flourecare Total Immunoglobulin E (Total IgE) Diagnostic Ki', 22, '31.0000', '160.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-total-immunoglobulin-e-total-ige-diagnostic-', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(65, 'MF-03', 'Flourecare Alpha-fetoprotein (AFP) Kit', 22, '30.0000', '140.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-alpha-fetoprotein-afp-kit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(66, 'MF-001', 'Flourecare Estrodial ', 22, '30.0000', '160.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 15, 'flourecare-estrodial', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(67, 'P04-03-101072-00', 'GENRUI  KT05DIFF Lyse for 5-Part Hematology Analyzer (500 mL)', 21, '25.0000', '200.0000', '10.0000', 'no_image.png', 12, 11, '', '', '', '', '', '', '37.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 16, 'genrui-kt05diff-lyse-for-5-part-hematology-analyzer-500', 1, '500.0000', NULL, 0, 0, '', 0, NULL),
(68, 'P04-03-101074-00', 'GENRUI  KT05LH Lyse for 5-Part Hematology Analyzer (200 mL)', 21, '15.0000', '150.0000', '1.0000', 'no_image.png', 12, 11, '', '', '', '', '', '', '46.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-kt05lh-lyse-for-5-part-hematology-analyzer-500-m', NULL, '200.0000', NULL, 0, 0, '', 0, NULL),
(69, 'P04-03-101108-000', 'Genrui Probe Cleanser for 3-Parts  Haematology Analyzer (50mL)', 21, '5.0000', '25.0000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 16, 'genrui-probe-cleanser-for-3-parts-haematology-analyzer-', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(70, 'P04-03-101108-001', 'Genrui EZ Cleanser for 3-Parts  Haematology Analyzer (50mL)', 21, '5.0000', '25.0000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-ez-cleanser-for-3-parts-haematology-analyzer-50m', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(71, 'P04-03-101111-000', 'Genrui Probe Cleanser for 5-Parts  Haematology Analyzer (50mL)', 21, '5.0000', '25.0000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '10.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-probe-cleanser-for-5-parts-haematology-analyzer-', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(72, 'P04-03-101108-002', 'Genrui EZ Cleanser for 5-Parts  Haematology Analyzer (50mL)', 21, '5.0000', '25.0000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-ez-cleanser-for-5-parts-haematology-analyzer-50m', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(73, 'P14-03-207084-01', 'Genrui CBC-3D QC High Level  for 5-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-3d-qc-high-level-for-3-parts-haematology-ana', 1, '3.0000', NULL, 0, 0, '', 0, NULL),
(74, 'P14-03-207085-00', 'Genrui CBC-3D QC Normal Level  for 3-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-3d-qc-normal-level-for-3-parts-haematology-a', 1, '3.0000', NULL, 0, 0, '', 0, NULL),
(75, 'P14-03-207086-00', 'Genrui CBC-3D QC Low Level  for 3-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-3d-qc-low-level-for-3-parts-haematology-anal', NULL, '3.0000', NULL, 0, 0, '', 0, NULL),
(76, 'P14-03-207083-00', 'Genrui CBC-CAL PLUS Calibrator  for 3-Parts  Haematology Analyzer (3mL)', 21, '25.0000', '120.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-cal-plus-calibrator-for-3-parts-haematology-', NULL, '3.0000', NULL, 0, 0, '', 0, NULL),
(77, 'P14-03-207083-01', 'Genrui CBC-CAL PLUS Calibrator  for 5-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-cal-plus-calibrator-for-5-parts-haematology-', NULL, '3.0000', NULL, 0, 0, '', 0, NULL),
(78, 'P14-03-207084-00', 'Genrui CBC-3D QC High Level  for 3-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-3d-qc-high-level-for-3-parts-haematology-ana', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(79, 'P14-03-207085-01', 'Genrui CBC-3D QC Normal Level  for 5-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-3d-qc-normal-level-for-5-parts-haematology-a', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(80, 'P14-03-207086-01', 'Genrui CBC-3D QC Low Level  for 5-Parts  Haematology Analyzer (3mL)', 21, '15.0000', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-cbc-3d-qc-low-level-for-5-parts-haematology-anal', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', 21, '25.0000', '200.0000', '10.0000', 'no_image.png', 12, 11, '', '', '', '', '', '', '20.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-kt03a-lyse-solution-for-3-part-hematology-analyz', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 22, '33.0000', '150.0000', '4.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-14.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'mnchip-general-chemistry-i-lyophilized-kit13', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(83, '02-01-2134', 'MNCHIP Clinical Emergency Lyophilized Kit', 22, '30.0000', '130.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'mnchip-clinical-emergency-lyophilized-kit', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(84, '02-01-2132', 'MNCHIP Electrolyte Panel Lyophilized Kit[7]', 22, '30.0000', '120.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'mnchip-electrolyte-panel-lyophilized-kit7', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(85, '01-01-0095', 'MNCHIP Celercare M5 Chemistry Analyzer', 22, '1350.0000', '4000.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'mnchip-celercare-m5-chemistry-analyzer', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(86, '02-01-2133', 'MNCHIP Renal Panel Lyophilized Kit[7]', 22, '30.0000', '100.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-renal-panel-lyophilized-kit7', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(87, '02-01-2142', 'MNCHIP Liver Function Panel Lyophilized Kit[11]', 22, '30.0000', '120.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-liver-function-panel-lyophilized-kit11', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(88, '02-01-2155', 'MNCHIP Myocardial Enzyme Panel Lyophilized Kit[5]', 22, '30.0000', '120.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-myocardial-enzyme-panel-lyophilized-kit5', NULL, '10.0000', NULL, 0, 0, '', 0, NULL),
(89, '02-01-2165', 'MNCHIP General Chemistry II Lyophilized Kit[8]', 22, '33.0000', '150.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-general-chemistry-ii-lyophilized-kit8', NULL, '10.0000', NULL, 0, 0, '', 0, NULL),
(90, '02-01-2162', 'MNCHIP Glucose & Lipid Panel Lyophilized Kit[6]', 22, '30.0000', '100.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-glucose-lipid-panel-lyophilized-kit6', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(91, '02-01-2136', 'MNCHIP GLU & Lipid & HCYPanel Lyophilized Kit[7]', 22, '30.0000', '100.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-glu-lipid-hcypanel-lyophilized-kit7', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(92, '02-01-2177', 'MNCHIP Liver and Renal Panel Lyophilized Kit[7]', 22, '30.0000', '130.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'mnchip-liver-and-renal-panel-lyophilized-kit7', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(93, 'P12-70-000069-40', 'Genrui WP21A Semi Automated Chemistry Analyzer', 22, '900.0000', '3000.0000', '1.0000', '879d6782c2e5937e93998b244139c58f.jpg', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 16, 'genrui-wp21a-semi-automated-chemistry-analyzer', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(94, 'GM123', 'Gram Stain Complete Sets', 21, '40.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'gram-stain-complete-sets', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(95, 'FCHB01', 'Finecare HBA1C Catridge', 21, '30.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 0, 'finecare-hba1c-catridge', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(96, 'FCPSA01', 'FineCare PSA', 22, '45.0000', '140.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'finecare-psa', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(97, 'FCCRP01', 'FineCare CRP', 22, '50.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'finecare-crp', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(98, 'IGO-502', 'Prime GeneGonorrhea Rapid Test Cassette(Swab)20T/kit', 22, '10.4000', '75.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '58.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-genegonorrhea-rapid-test-cassetteswab20tkit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(99, 'ICH-502', 'Prime Gene Chlamydia Rapid Test Cassette(Swab/Urine)20T/kit', 22, '11.0000', '75.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '33.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-chlamydia-rapid-test-cassetteswaburine20tkit', 1, '20.0000', NULL, 0, 0, '', 0, NULL),
(100, 'ISY-301', 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', 22, '5.0000', '35.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '51.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-syphilis-rapid-test-dipsticksp50tkit3mm', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(101, 'ITY-302', 'Prime Gene Typhoid IgG/IgM Rapid Test Cassette(S/P)40T/kit', 22, '16.0000', '88.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-typhoid-iggigm-rapid-test-cassettesp40tkit', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(102, 'IHB-355', 'Prime Gene HBV Combo Rapid Test Cassette(S/P)25T/kit', 22, '19.5000', '95.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-hbv-combo-rapid-test-cassettesp25tkit', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(103, 'IFIL-402', 'Prime Gene Filariasis IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', 22, '16.8000', '80.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-filariasis-iggigm-rapid-test-cassettewbsp40t', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(104, 'ISG-402', 'Prime Gene HSV 1/2 IgG Rapid Test Cassette(WB/S/P)40T/kit', 22, '20.4000', '90.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-hsv-12-igg-rapid-test-cassettewbsp40tkit', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(105, 'ISM-402', 'Prime Gene HSV 1/2 IgM Rapid Test Cassette(WB/S/P)40T/kit', 22, '20.4000', '90.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-hsv-12-igm-rapid-test-cassettewbsp40tkit', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(106, 'IHP-302', 'Prime Gene H. pylori Antibody Rapid Test Cassette(S/P)40T/kit', 22, '16.0000', '80.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '52.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-h-pylori-antibody-rapid-test-cassettesp40tki', 1, '16.0000', NULL, 0, 0, '', 0, NULL),
(107, 'ILEP-402', 'Prime Gene Leptospira IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', 22, '18.4000', '90.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-leptospira-iggigm-rapid-test-cassettewbsp40t', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(108, 'ITG-402', 'Prime Gene TOXO IgG Rapid Test Cassette(WB/S/P)40T/kit', 22, '20.4000', '100.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-toxo-igg-rapid-test-cassettewbsp40tkit', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(109, 'ITM-402', 'Prime Gene TOXO IgM Rapid Test Cassette(WB/S/P)40T/kit', 22, '20.4000', '100.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-toxo-igm-rapid-test-cassettewbsp40tkit', 1, '240.0000', NULL, 0, 0, '', 0, NULL),
(110, 'VICGM-425', 'Prime Gene CMV IgG/IgM Combo Rapid test Cassette （WB/S/P)25T/kit', 22, '16.5000', '90.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-cmv-iggigm-combo-rapid-test-cassette-wbsp25t', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(111, 'TFO-602', 'Prime Gene FOB Rapid Test Cassette(Feces)-50ng/ml,25T/kit', 22, '8.5000', '40.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-fob-rapid-test-cassettefeces-50ngml25tkit', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(112, 'IRO-602', 'Prime Gene Rotavirus Rapid Test Cassette（Feces）25T/kit', 22, '15.0000', '90.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-rotavirus-rapid-test-cassettefeces25tkit', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(113, 'DOA-1124', 'Prime Gene Multi-Drug 12 Drugs Rapid Test Panel(Urine)', 22, '2.2000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-multi-drug-12-drugs-rapid-test-panelurine', 1, '12.0000', NULL, 0, 0, '', 0, NULL),
(114, 'ITB-402', 'Prime Gene Tuberculosis (TB) Rapid Test Cassette(WB/S/P),40T/kit', 22, '18.0000', '120.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-tuberculosis-tb-rapid-test-cassettewbsp40tki', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(115, 'IHC-302', 'Prime Gene HCV Rapid Test Cassette(S/P)40T/kit', 22, '9.2000', '40.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-hcv-rapid-test-cassettesp40tkit', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(116, 'ISY-302', 'Prime Gene Syphilis Rapid Test Cassette(S/P)40T/kit', 22, NULL, '24.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-syphilis-rapid-test-cassettesp40tkit', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', 22, '3.0000', '13.0000', '10.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '40.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-urinalysis-reagent-dipsticks-10-parametersur', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(118, 'IHBSG-301', 'Prime Gene HBsAg Rapid Test Dipstick(S/P)50T/kit,3mm', 22, '4.5000', '30.0000', '10.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-16.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-hbsag-rapid-test-dipsticksp50tkit3mm', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(119, 'IHC-301', 'Prime Gene HCV Rapid Test Dipstick(S/P),50T/kit', 22, '9.0000', '35.0000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '10.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-hcv-rapid-test-dipsticksp50tkit', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(120, 'FHC-101', 'Prime Gene Pregnancy (hCG) Rapid Test Dipstick(Urine)SOT/kit', 22, '2.5000', '12.5000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'prime-gene-pregnancy-hcg-rapid-test-dipstickurinesotkit', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(121, 'BXC0192B', 'Biorex Bilirubin (L.S) TOTAL (2x100ml; 1x50ml)', 21, '8.6500', '54.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-bilirubin-ls-total-2x100ml-1x50ml', 1, '250.0000', NULL, 0, 0, '', 0, NULL),
(122, 'BXC0222B', 'Biorex Albumin (Monoliquid) BCG (Ready to Use) (6x60ml; 1x5ml)', 21, '6.9000', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-albumin-monoliquid-bcg-ready-to-use-6x60ml-1x5ml', 1, '360.0000', NULL, 0, 0, '', 0, NULL),
(123, 'BXC0292A', 'Biorex Calcium (Monoliquid) Arsenazo (2x125ml; 1x5ml)', 21, '8.2500', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-calcium-monoliquid-arsenazo-2x125ml-1x5ml', 1, '250.0000', NULL, 0, 0, '', 0, NULL),
(124, 'BXC0352B', 'Biorex Magnesium (Monoliquid) Xylidyl Blue (6x60ml; 1x5ml)', 21, '9.6500', '70.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-magnesium-monoliquid-xylidyl-blue-6x60ml-1x5ml', 1, '360.0000', NULL, 0, 0, '', 0, NULL),
(125, 'BXC0173B', 'Biorex Total Protein (Monoliquid) Biuret (Ready To Use) (6x60ml; 1x5ml)', 21, '8.6500', '46.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '8.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-total-protein-monoliquid-biuret-ready-to-use-6x6', 1, '360.0000', NULL, 0, 0, '', 0, NULL),
(126, 'BXC0138A', 'Biorex Potassium (Monoliquid) TPB (Colorimetric) 5x20ml; 1x5ml', 21, '13.8000', '70.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-potassium-monoliquid-tpb-colorimetric-5x20ml-1x5', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(127, 'BXC0191B', 'Biorex Bilirubin (L.S) DIRECT (2x100ml; 1x50ml)', 21, '9.6000', '54.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-bilirubin-ls-direct-2x100ml-1x50ml', 1, '250.0000', NULL, 0, 0, '', 0, NULL),
(128, 'BXC0111B', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 3x60ml; 3x60ml; 1x5ml', 21, '9.0000', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-creatinine-ls-jaffe-without-deproteinization-3x6', 1, '360.0000', NULL, 0, 0, '', 0, NULL),
(129, 'BXC0281A', 'Biorex Chloride (Monoliquid) Thiocyanate 2x60ml; 1x5ml; 1x5ml', 21, '7.3000', '70.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-chloride-monoliquid-thiocyanate-2x60ml-1x5ml-1x5', 1, '225.0000', NULL, 0, 0, '', 0, NULL),
(130, 'BXC0122A', 'Boirex Urea (L.S) Modified Berthelot (2x125ml; 1x50ml; 2x6.5ml; 1x5ml)', 21, '11.7500', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'boirex-urea-ls-modified-berthelot-2x125ml-1x50ml-2x65ml', 1, '300.0000', NULL, 0, 0, '', 0, NULL),
(131, 'BXC0271B', 'Biorex Triglycerides (Monoliquid) GPO‐PAP 4x60ml; 1x5ml', 21, '18.3500', '150.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '8.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-triglycerides-monoliquid-gpopap-4x60ml-1x5ml', NULL, '240.0000', NULL, 0, 0, '', 0, NULL),
(132, 'BXC0603C', 'Biorex Uric Acid (Monoliquid) Uricase PAP (5x100ml; 1x5ml)', 21, '13.5000', '120.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-uric-acid-monoliquid-uricase-pap-5x100ml-1x5ml', 1, '500.0000', NULL, 0, 0, '', 0, NULL),
(133, 'BXC0362D', 'Biorex GGT (L.S) Carboxy (2x60ml; 2x12ml)', 21, '13.8000', '130.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-ggt-ls-carboxy-2x60ml-2x12ml', 1, '142.0000', NULL, 0, 0, '', 0, NULL),
(134, 'BXC0146A', 'Biorex Sodium (Monoliquid) Colorimetric, Enzymatic (5x20ml; 2x5ml', 21, '20.4000', '70.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-sodium-monoliquid-colorimetric-enzymatic-5x20ml-', 1, '110.0000', NULL, 0, 0, '', 0, NULL),
(135, 'BXC0261B', 'Biorex Cholesterol (Monoliquid) CHOD‐PAP (6x60ml; 1x5ml)', 21, '11.0000', '95.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-cholesterol-monoliquid-chodpap-6x60ml-1x5ml', 1, '360.0000', NULL, 0, 0, '', 0, NULL),
(136, 'BXC0562B', 'Biorex Amylase (Monoliquid) CNPG3 (10x10ml)', 21, '23.5000', '250.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-amylase-monoliquid-cnpg3-10x10ml', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(137, 'BXC0252C', 'Biorex CK‐nac (L.S) Nac Activation, Serum Start, DGKC (6x10ml; 1x12ml)', 21, '26.2000', '148.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-cknac-ls-nac-activation-serum-start-dgkc-6x10ml-', 1, '72.0000', NULL, 0, 0, '', 0, NULL),
(138, 'BXC0452B', 'Biorex CK‐MB (L.S) Immunoinhibition (2x25ml; 2x5ml)', 21, '33.2000', '261.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-ckmb-ls-immunoinhibition-2x25ml-2x5ml', 1, '60.0000', NULL, 0, 0, '', 0, NULL),
(139, 'BXC0312E', 'Biorex Human Assayed Control Normal (1x5ml)', 21, '6.7500', '60.0000', '1.0000', 'no_image.png', 12, 15, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-human-assayed-control-normal-1x5ml', 1, '5.0000', NULL, 0, 0, '', 0, NULL),
(140, 'BXC0312F', 'Biorex Human Assayed Control Abnormal (1x5ml)', 21, '6.7500', '60.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-human-assayed-control-abnormal-1x5ml', 1, '5.0000', NULL, 0, 0, '', 0, NULL),
(141, 'BXC0312C', 'Biorex Human Assayed Control Normal (5x5ml)', 21, '31.5000', '250.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-human-assayed-control-normal-5x5ml', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(142, 'BXC0312D', 'Biorex Human Assayed Control Abnormal (5x5ml)', 21, '31.8000', '250.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-human-assayed-control-abnormal-5x5ml', 1, '25.0000', NULL, 0, 0, '', 0, NULL);
INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`, `hide_pos`, `product_type`) VALUES
(143, 'BXC0101B', 'Biorex Glucose (Monoliquid) GOD‐PAP  (6x125ml; 1x5ml)', 21, '10.7500', '140.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-glucose-monoliquid-godpap-6x125ml-1x5ml', 1, '750.0000', NULL, 0, 0, '', 0, NULL),
(144, 'BXC0101D', 'Biorex Glucose (Monoliquid) GOD‐PAP  (4x250ml; 1x5ml)', 21, '13.4500', '180.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-glucose-monoliquid-godpap-4x250ml-1x5ml', 1, '1000.0000', NULL, 0, 0, '', 0, NULL),
(145, 'BXC0152A', 'Biorex CO2 (Bicarbonate) (Monoliquid) Enzymatic (10x5ml; 1x1ml)', 21, '24.2500', '240.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-co2-bicarbonate-monoliquid-enzymatic-10x5ml-1x1m', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(146, 'BXC0185B', 'Biorex  Alkaline phosphatase - ALP (L.S) DEA (DGKC) 5x50ml; 1x50ml', 21, '8.4000', '96.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-alkaline-phosphatase-alp-ls-dea-dgkc-5x50ml-1x50', 1, '300.0000', NULL, 0, 0, '', 0, NULL),
(147, 'BXC0321L', 'Biorex Calibration Serum ', 21, '31.8500', '180.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-calibration-serum', 1, '15.0000', NULL, 0, 0, '', 0, NULL),
(148, 'BXC0511A', 'Biorex Lipase (L.S) Colorimetric( 2x10ml;1x10ml; 1x3ml)', 21, '19.3000', '220.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-lipase-ls-colorimetric-2x10ml1x10ml-1x3ml', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(149, 'BXC0302A', 'Biorex Phosphorus (Inorganic) (Monoliquid) Molybdate (5x20ml; 1x5ml)', 21, '9.4000', '135.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-phosphorus-inorganic-monoliquid-molybdate-5x20ml', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(150, 'BXC0213D', 'Biorex ALT (GPT) (L.S) IFCC (2x100ml; 2x20ml)', 21, '11.0000', '92.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-alt-gpt-ls-ifcc-2x100ml-2x20ml', 1, '250.0000', NULL, 0, 0, '', 0, NULL),
(151, '1102160025', 'Tulip Lactate Dehydrogenase (LD) (L.S) Pyruvate → Lactate, DGKC 1x20ml; 1x5ml', 21, '13.5000', '100.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'tulip-lactate-dehydrogenase-ld-ls-pyruvate-lactate-dgkc', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(152, 'LXRF0050', 'Biorex RF Latex Kit -(50T)', 21, '4.8500', '80.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-rf-latex-kit-50t', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(153, 'BXC0431A', 'Biorex HDL Cholesterol (L.S) Direct (without Calibrator) 3x10ml; 1x10ml', 21, '30.8000', '250.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-ldl-cholesterol-ls-direct-without-calibrator-3x1', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(154, 'BXC0203D', 'Biorex AST (GOT) (L.S) IFCC 2x100ml; 2x20ml', 21, '11.0000', '92.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-ast-got-ls-ifcc-2x100ml-2x20ml', 1, '240.0000', NULL, 0, 0, '', 0, NULL),
(155, '1234', 'Laboratory Timer ', 22, '20.0000', '70.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'laboratory-timer', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(156, 'UC01', 'Urine Container (40 ml)', 22, '0.1000', '0.8000', '10.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-1000.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'urine-container-40-ml', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(157, 'RCAVT05', 'K3 EDTA Vacuum Blood Collection Tubes (Lavender Top)', 22, '5.0000', '26.0000', '10.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '120.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'k3-edta-vacuum-blood-collection-tubes-lavender-top', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(158, 'RCAVT02', 'Microtube Paedaitric K3 EDTA Vacuum Blood Collection Tubes', 22, '15.0000', '25.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'microtube-paedaitric-k3-edta-vacuum-blood-collection-tu', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(159, 'MESR01', 'Manual ESR kits (100pcs/pk)', 22, '50.0000', '200.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'manual-esr-kits-100pcspk', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(160, 'LXASO025', 'ASO atex Reagent, +ve and -ve Controls, Pipette/Stirrers & Re-usable Test Slide (25T)', 21, '6.2000', '80.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'aso-atex-reagent-ve-and-ve-controls-pipettestirrers-re-', 1, '25.0000', NULL, 0, 0, '', 0, NULL),
(161, 'FEBSOH05', 'Biorex Widal Reagents Salmonella typhi H, typhi O & 0.5ml Positive Control (2x5ml; 1x0.5ml)', 21, '3.4500', '20.0000', '5.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '95.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'salmonella-typhi-h-typhi-o-1x05ml', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(162, 'BXC0493A', 'Alcohol, Ammonia, Carbonate Control Level 1(1x2ml)', 21, '3.8500', '30.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'alcohol-ammonia-carbonate-control-level-11x2ml', 1, '2.0000', NULL, 0, 0, '', 0, NULL),
(163, 'BXC0492A', 'Alcohol, Ammonia, Carbonate Calibrator (1x2ml)', 21, '3.8500', '30.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'alcohol-ammonia-carbonate-calibrator-1x2ml', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(164, 'P14-03-105035-00', 'Genrui GE300-Electrolyte Reagents A & B (390.160 mL)', 21, '20.0000', '157.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-ge300-electrolyte-reagents-a-b-390160-ml', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(165, 'P14-03-105020-00', 'GE300 Electrolyte Ref. Filling Solution  (10 mL)', 21, '8.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '7.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'ge300-electrolyte-ref-filling-solution-10-ml', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(166, 'P14-03-105011-00', 'GE300 Electrolyte ISE. Filling Solution  (10 mL)', 21, '8.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'ge300-electrolyte-ise-filling-solution-10-ml', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(167, 'P14-03-05014-00', 'PVC Electrode Activating Solution for GE300 (50 mL)', 21, '6.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'pvc-electrode-activating-solution-for-ge300-50-ml', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(168, 'P14-03-207002-00', 'Thermal Printer Paper for GE300 (80*35 mm)', 22, '1.0000', '10.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '11.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 16, 'thermal-printer-paper-for-ge300-8035-mm', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(169, 'P14-03-105023-00', 'Genrui GE-300-DeProtein Solution0 (50 mL)', 21, '20.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-ge-300-deprotein-solution0-50-ml', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(170, 'P04-03-105209-00', 'Genrui QC Solution for GE300 (level 1:10 mL*1,level 2:10mL*1,level 3:10 mL*1)', 21, '10.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-qc-solution-for-ge300-level-110-ml1level-210ml1l', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(171, 'P14-03-105028-00', 'Genrui DS-Ⅴ CO2 Standard (50 mL) for GE-300 Electrolytes Analyzer CO2 mode', 21, '10.0000', '150.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-co2-standard-50-ml-for-ge-300-electrolytes-analy', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(172, 'P14-03-105008-00', ' GE300-Electrolyte Cleaning Solutions (250 mL)', 21, '15.0000', '160.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '8.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 16, 'ge300-electrolyte-cleaning-solutions-250-ml', 1, '250.0000', NULL, 0, 0, '', 0, NULL),
(173, 'P14-03-105025-00', ' GE300-Electrolyte DS-C Standard C (400 mL) for CO2 mode', 21, '10.0000', '160.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'ge300-electrolyte-ds-c-standard-c-400-ml-for-co2-mode', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(174, 'GCCS-104', 'Chemistry Analyzer Cleaning Solutions (General Use) 250mL', 21, '20.0000', '80.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '5.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 0, 'chemistry-analyzer-cleaning-solutions-general-use-250ml', NULL, '250.0000', NULL, 0, 0, '', 0, NULL),
(175, '7030301004', 'DLab MicroPette Plus Autoclavable Pipette (0.5-10 uL)', 22, '33.0000', '150.0000', '1.0000', '9bc8a44300665c70d49a8af7ea527ae4.jpg', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'dlab-micropette-plus-autoclavable-pipette-05-10-ul', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(176, '7030301014', 'DLab MicroPette Plus Autoclavable Pipette (10 -100 uL)', 22, '33.0000', '150.0000', '1.0000', 'f01eaf45d4d079e45a90527eb8d78283.jpg', 12, NULL, '', '', '', '', '', '', '3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 18, 'dlab-micropette-plus-autoclavable-pipette-10-100-ul', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(177, '70300000085', 'DLab MicroPette Plus Autoclavable Linear Pipette Stand', 22, '33.0000', '200.0000', '1.0000', '592e8fbbd077340df7d7743ef17e5555.jpg', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'dlab-micropette-plus-autoclavable-linear-pipette-stand', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(178, '70300000840000027777', 'DLab MicroPette Plus Autoclavable Round Pipette Stand', 22, '33.0000', '200.0000', '1.0000', '1408941fc5bb8fe53a8d942a6c988bf4.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'dlab-micropette-plus-autoclavable-round-pipette-stand', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(179, 'esrstand101', 'Manual ESR Stand  (30 Holes)', 22, '15.0000', '45.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'manual-esr-stand-30-holes', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(180, 'PT-01', 'Yellow Pipette Tips (1 - 200 uL)', 22, '20.0000', '120.0000', '1.0000', 'ed9844b5d3279b4960dc34ebe8de1d81.jpg', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'yellow-pipette-tips-1-200-ul', 1, '1000.0000', NULL, 0, 0, '', 0, NULL),
(181, 'OI01', 'Oil Immersion (5ml)', 21, '1.0000', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '40.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 0, 'oil-immersion-5ml', 1, '5.0000', NULL, 0, 0, '', 0, NULL),
(182, 'HT404', 'HemoTypeSC Electrophoresis Kits (50 pcs/pk)', 22, '70.0000', '300.0000', '2.0000', 'ee8966d927ca893a47d43c0f7d751fed.jpg', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'hemotypesc-electrophoresis-kits-50-pcspk', 1, '50.0000', NULL, 0, 0, '', 0, NULL),
(183, 'CS01', 'Cover Slip (100 pcs/pk)', 22, '5.0000', '18.0000', '0.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-3.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'cover-slip-100-pcspk', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(184, 'P12-70-000069-41', 'Genrui WP21A Semi Automated Chemistry Analyzer Lamp', 22, '50.0000', '200.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-wp21a-semi-automated-chemistry-analyzer-lamp', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(185, 'cryt01', 'Cryo Tube (1-2 mL) 500pcs/ctn', 22, '100.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '8.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'cryo-tube-1-2-ml-500pcsctn', 1, '500.0000', NULL, 0, 0, '', 0, NULL),
(186, 'ZL01', 'Zip Lock Bag 100pcs/pk ', 22, '10.0000', '30.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '10.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'zip-lock-bag-100pcspk', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(187, 'CL01', 'Colorant (100mL /Bottle)', 22, '10.0000', '48.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'colorant-100ml-bottle', 1, '100.0000', NULL, 0, 0, '', 0, NULL),
(188, 'WBC210', 'Hemocue WBC Analyzer incl. trafo', 22, '362.0000', '1500.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 12, 'hemocue-wbc-analyzer-incl-trafo', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(189, 'WBC210CH', 'Hemocue WBC Microcuvettes 4x40 pcs vial', 22, '20.0000', '80.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'hemocue-wbc-microcuvettes-4x40-pcs-vial', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(190, 'TPSA01', 'Total PSA ELISA kit', 22, '70.0000', '220.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'total-psa-elisa-kit', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(191, 'TSH01', 'TSH ELISA kit', 22, '50.0000', '180.0000', '0.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 17, 'tsh-elisa-kit', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(192, 'FT301', 'Biorex Free T3 ELISA kit (96-Well)', 22, '60.0000', '200.0000', '0.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 17, 'free-t3-elisa-kit', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(193, 'FT401', 'Biorex Free T4 ELISA kit (96-Well)', 22, '60.0000', '200.0000', '0.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 17, 'free-t4-elisa-kit', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(194, 'P05-50-000114-00', 'GENRUI  KT-60 3-Part Auto Hematology Analyzer', 22, '2500.0000', '8000.0000', '1.0000', 'ca165ceb1251c3922f628f155f223bee.jpg', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 16, 'genrui-kt-60-3-part-auto-hematology-analyzer', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(195, 'BGS01', 'Blood Grouping Sera (A, B, D)', 21, '9.0000', '25.0000', '0.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-12.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 0, 'blood-grouping-sera-a-b-d', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(196, 'BXC0491A', 'Biorex Blood Alcohol(L.S.) UVR (1: 3 x 20ml  R2: 2 x   5ml  R4: 1 x 2ml)', 21, '15.0000', '180.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '2.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-blood-alcoholls-uvr-1-3-x-20ml-r2-2-x-5ml-r4-1-x', 1, '40.0000', NULL, 0, 0, '', 0, NULL),
(197, 'BXC0111A', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 1 x 120ml  R2 1 x   120ml  R4 1 x 5ml', 21, '9.0000', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'BiorexCreatinineLSJaffewithoutDeproteinizationR11x120ml', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(198, 'BXC0741A', 'Biorex Transferrin (L.S) BX (R1: 2 x 20ml R2: 1 x   8ml);', 21, '80.0000', '250.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 0, 'biorex-transferrin-ls-bx', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(199, 'BXC0123B', 'Boirex Urea (L.S) Modified Berthelot (R1: 3 x 100ml R2: 1 x   60ml  R4: 1 x 5ml)', 21, '11.7500', '50.0000', '2.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '4.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'boirex-urea-ls-modified-berthelot-r1-3-x-100ml-r2-1-x-6', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(200, 'LXCRP050', 'Biorex CRP Latex Kit (50T)', 21, '25.0000', '80.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '6.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-crp-latex-kit-50t', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(201, 'BGAG1010', 'Biorex Atni Human Globilin AHG (Coomb\'s) 10ml', 21, '15.0000', '50.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '10.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'biorex-atni-human-globilin-ahg-coombs-10ml', 1, '10.0000', NULL, 0, 0, '', 0, NULL),
(202, 'BXE0811A', 'Biorex  Carcinoembryonic Antigen CEA ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 17, 'biorex-cea-elisa-96-wells-plate', 1, '96.0000', NULL, 0, 0, '', 0, NULL),
(203, 'BXE0831A', 'Biorex  Cortisol ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-cortisol-elisa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(204, 'BXE0860A', 'Biorex  Estradiol ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-estradiol-elisa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(205, 'BXE0622A', 'Biorex  Herpes Simplex Virus (HSV-  I/2), IgG ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-herpes-simplex-virus-hsv-i2-igg-elisa-96-wells-p', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(206, 'BXE0621A', 'Biorex  Herpes Simplex Virus (HSV-  I/2), IgM ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-herpes-simplex-virus-hsv-i2-igm-elisa-96-wells-p', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(207, 'BXE08911A', 'Biorex  Ferritin  ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-ferritin-elisa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(208, 'BXE0861A', 'Biorex  Free PSA  (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-free-psa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(209, 'BXE0641A', 'Biorex  IgE ELISA (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-ige-elisa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(210, 'BXE0661A', 'Biorex  Progesterone ELISAB (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-progesterone-elisab-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(211, 'BXE0864A', 'Biorex  Troponin-I ELISA  (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-troponin-i-elisa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(212, 'BXE0960A', 'Biorex  Vitamin B12 ELISA  (96-Wells Plate)', 21, '150.0000', '300.0000', '1.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '1.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 17, 'biorex-vitamin-b12-elisa-96-wells-plate', NULL, '0.0000', NULL, 0, 0, '', 0, NULL),
(213, '90275000', 'Hemocue WBC Analyzer x10/9 /L', 21, '400.0000', '1200.0000', '1.0000', '460fc4e964f42d0e230a5890c1e42b4c.jpg', 12, NULL, '', '', '', '', '', '', NULL, 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 12, 'hemocue-wbc-analyzer-x109-l', 1, '1.0000', NULL, 0, 0, '', 0, NULL),
(214, 'ML012', 'Allele Malaria Cassettes (25T/PK)', 22, '8.0000', '20.0000', '0.0000', 'no_image.png', 12, NULL, '', '', '', '', '', '', '-8.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 22, 22, 0, 'allele-malaria-cassettes-25tpk', 1, '0.0000', NULL, 0, 0, '', 0, NULL),
(265, '0085', 'Product without warehouse', 23, '100.0000', '100.0000', '0.0000', 'no_image.png', 16, 17, '', '', '', '', '', '', '147.0000', 1, 1, '', NULL, 'code128', '', '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 23, 23, 0, '', NULL, NULL, NULL, 0, 0, '', 0, 'Reagents'),
(266, '1001', 'Test Product on 11_12_2021', 21, '100.0000', '100.0000', '0.0000', 'no_image.png', 12, 15, '', '', '', '', '', '', '17.0000', 1, 1, '<p>testing</p>', NULL, 'code25', '', '<p>for Testing</p>', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 21, 21, 0, '', NULL, NULL, NULL, 0, 0, '', 0, 'Reagents');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_prices`
--

CREATE TABLE `sma_product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_stock`
--

CREATE TABLE `sma_product_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `created_on` date DEFAULT NULL,
  `updated_on` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_stock`
--

INSERT INTO `sma_product_stock` (`id`, `product_id`, `product_variant_id`, `serial_no`, `manufacture_date`, `expire_date`, `quantity`, `created_on`, `updated_on`) VALUES
(1, 266, NULL, 1018, '2021-12-01', '2021-12-31', '2.0000', '2021-12-16', '2021-12-16'),
(2, 266, NULL, 1020, '2021-12-01', '2021-12-31', '1.0000', '2021-12-16', NULL),
(3, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', '2021-12-16', '2021-12-18'),
(4, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', '2021-12-16', '2021-12-18'),
(5, 265, NULL, 1018, '2021-12-01', '2021-12-31', '1.0000', '2021-12-18', NULL),
(6, 266, NULL, 10012, '2021-12-01', '2021-12-31', '1.0000', '2021-12-18', NULL),
(7, 265, NULL, 10181, '2021-12-01', '2021-12-31', '10.0000', '2021-12-18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_stock_history`
--

CREATE TABLE `sma_product_stock_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `action_area` enum('purchase','sale','adjustment') DEFAULT NULL,
  `action` enum('add','edit','delete') DEFAULT NULL COMMENT 'action set as add, edit or rollback',
  `entity_id` int(11) DEFAULT NULL,
  `action_type` enum('addition','subtraction') DEFAULT NULL,
  `existing_row_content` longtext DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_stock_history`
--

INSERT INTO `sma_product_stock_history` (`id`, `product_id`, `product_variant_id`, `serial_no`, `manufacture_date`, `expire_date`, `quantity`, `action_area`, `action`, `entity_id`, `action_type`, `existing_row_content`, `created_on`) VALUES
(4, 266, NULL, 1004, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 31, 'addition', '{\"id\":\"274\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1004\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(2, 266, 0, 1004, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(3, 265, 0, 1005, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(5, 265, NULL, 1005, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'delete', 31, 'addition', '{\"id\":\"275\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1005\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(6, 266, NULL, 1004, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 31, 'addition', '{\"id\":\"276\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1004\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 'purchase', 'edit', 31, 'addition', 'null', '2021-12-16 00:00:00'),
(8, 265, NULL, 1005, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 31, 'addition', '{\"id\":\"278\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1005\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(9, 266, NULL, 1004, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'delete', 31, 'addition', '{\"id\":\"277\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1004\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(10, 265, NULL, 1005, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 31, 'addition', '{\"id\":\"279\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1005\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 'purchase', 'edit', 31, 'addition', 'null', '2021-12-16 00:00:00'),
(12, 266, NULL, 1004, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'delete', 31, 'addition', '{\"id\":\"281\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1004\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(13, 265, NULL, 1005, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'delete', 31, 'addition', '{\"id\":\"280\",\"purchase_id\":\"31\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1005\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 'purchase', 'add', 0, 'addition', 'null', '2021-12-16 00:00:00'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 'purchase', 'add', 0, 'addition', 'null', '2021-12-16 00:00:00'),
(16, 266, 0, 1010, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(17, 265, 0, 1014, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(18, 265, 0, NULL, NULL, NULL, '-1.0000', 'purchase', 'delete', 36, 'addition', '', '2021-12-16 00:00:00'),
(19, 265, 0, 1016, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(20, 265, 0, 85, '0000-00-00', '0000-00-00', '-1.0000', 'purchase', 'delete', 38, 'addition', '', '2021-12-16 00:00:00'),
(21, 265, 0, 1017, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(22, 265, NULL, 1017, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'delete', 40, 'addition', '{\"id\":\"292\",\"purchase_id\":\"40\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1017\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(23, 266, 0, 1018, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(24, 266, NULL, 1018, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'delete', 42, 'addition', '{\"id\":\"294\",\"purchase_id\":\"42\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1018\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-16 00:00:00'),
(25, 266, 0, 1020, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(26, 266, 0, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(27, 265, 0, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-16 00:00:00'),
(28, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"298\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1021\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(29, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"299\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1022\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(30, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"300\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1021\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(31, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"301\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1022\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(32, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"302\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1021\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(33, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"303\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1022\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(34, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"304\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1021\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(35, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"305\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1022\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(36, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"306\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1021\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(37, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"307\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1022\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(38, 266, NULL, 1021, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"308\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"266\",\"product_code\":\"1001\",\"product_name\":\"Test Product on 11_12_2021\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1021\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"21\",\"product_unit_code\":\"(Vol\\/Pk)\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(39, 265, NULL, 1022, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'edit', 46, 'addition', '{\"id\":\"309\",\"purchase_id\":\"46\",\"transfer_id\":null,\"product_id\":\"265\",\"product_code\":\"0085\",\"product_name\":\"Product without warehouse\",\"option_id\":null,\"net_unit_cost\":\"100.0000\",\"quantity\":\"1.0000\",\"warehouse_id\":\"1\",\"item_tax\":\"0.0000\",\"tax_rate_id\":\"1\",\"tax\":\"0\",\"discount\":\"0\",\"item_discount\":\"0.0000\",\"serial_no\":\"1022\",\"manufacture_date\":\"2021-12-01\",\"expiry\":\"2021-12-31\",\"subtotal\":\"100.0000\",\"quantity_balance\":\"1.0000\",\"date\":\"2021-12-16\",\"status\":\"received\",\"unit_cost\":\"100.0000\",\"real_unit_cost\":\"100.0000\",\"quantity_received\":\"1.0000\",\"supplier_part_no\":null,\"purchase_item_id\":null,\"product_unit_id\":\"23\",\"product_unit_code\":\"Pks\",\"unit_quantity\":\"1.0000\",\"gst\":null,\"cgst\":null,\"sgst\":null,\"igst\":null}', '2021-12-18 00:00:00'),
(40, 265, 0, 1018, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-18 00:00:00'),
(41, 266, 0, 10012, '2021-12-01', '2021-12-31', '1.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-18 00:00:00'),
(42, 265, 0, 10181, '2021-12-01', '2021-12-31', '10.0000', 'purchase', 'add', 0, 'addition', '', '2021-12-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_type`
--

CREATE TABLE `sma_product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_type`
--

INSERT INTO `sma_product_type` (`id`, `name`, `description`) VALUES
(1, 'Reagents', 'test Description'),
(2, 'Kits', 'test Description'),
(3, 'Analyzers', 'test Description'),
(4, 'Instruments', 'test Description'),
(5, 'Equipment', 'test Description');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_variants`
--

CREATE TABLE `sma_product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_variants`
--

INSERT INTO `sma_product_variants` (`id`, `product_id`, `name`, `cost`, `price`, `quantity`) VALUES
(3, 2, 'size 59', NULL, '0.0000', NULL),
(4, 2, 'size 62', NULL, '0.0000', NULL),
(5, 3, 'size 49', NULL, '0.0000', NULL),
(6, 3, 'size 50', NULL, '0.0000', NULL),
(7, 3, 'size 51', NULL, '0.0000', NULL),
(8, 3, 'size 52', NULL, '0.0000', NULL),
(9, 3, 'size 54', NULL, '0.0000', NULL),
(10, 4, 'size 54', NULL, '0.0000', NULL),
(11, 4, 'size 57', NULL, '0.0000', NULL),
(12, 5, 'size 56', NULL, '0.0000', NULL),
(13, 5, 'size 54', NULL, '0.0000', NULL),
(14, 5, 'size 59', NULL, '0.0000', NULL),
(15, 6, 'size 52', NULL, '0.0000', NULL),
(16, 6, 'size 54', NULL, '0.0000', NULL),
(17, 7, 'size 49', NULL, '0.0000', NULL),
(18, 7, 'size 50', NULL, '0.0000', NULL),
(19, 7, 'size 55', NULL, '0.0000', NULL),
(20, 6, 'size 57', NULL, '0.0000', NULL),
(21, 8, 'size 48', NULL, '0.0000', NULL),
(22, 8, 'size 50', NULL, '0.0000', NULL),
(23, 8, 'size 51', NULL, '0.0000', NULL),
(24, 8, 'size 52', NULL, '0.0000', NULL),
(25, 8, 'size 56', NULL, '0.0000', NULL),
(26, 8, 'size 58', NULL, '0.0000', NULL),
(27, 9, 'size 48', NULL, '0.0000', NULL),
(28, 9, 'size 51', NULL, '0.0000', NULL),
(29, 4, 'size 58', NULL, '0.0000', NULL),
(30, 10, 'size 51', NULL, '0.0000', NULL),
(31, 10, 'size 52', NULL, '0.0000', NULL),
(32, 10, 'size 53', NULL, '0.0000', NULL),
(33, 10, 'size 54', NULL, '0.0000', NULL),
(34, 11, 'size 53', NULL, '0.0000', NULL),
(35, 12, 'size 52', NULL, '0.0000', NULL),
(36, 12, 'size 54', NULL, '0.0000', NULL),
(37, 12, 'size 63', NULL, '0.0000', NULL),
(38, 15, 'size 54', NULL, '0.0000', NULL),
(39, 15, 'size 59', NULL, '0.0000', NULL),
(40, 16, 'size 50', NULL, '0.0000', NULL),
(41, 16, 'size 51', NULL, '0.0000', NULL),
(42, 16, 'size 52', NULL, '0.0000', NULL),
(43, 17, 'size 56', NULL, '0.0000', NULL),
(44, 17, 'size 59', NULL, '0.0000', NULL),
(45, 18, 'size 52', NULL, '0.0000', NULL),
(46, 18, 'size 56', NULL, '0.0000', NULL),
(47, 19, 'size 49', NULL, '0.0000', NULL),
(48, 19, 'size 51', NULL, '0.0000', NULL),
(49, 19, 'size 54', NULL, '0.0000', NULL),
(50, 19, 'size 56', NULL, '0.0000', NULL),
(51, 19, 'size 59', NULL, '0.0000', NULL),
(52, 20, 'size 54', NULL, '0.0000', NULL),
(53, 224, 'size 50', NULL, '10.0000', '100.0000'),
(56, 227, 'size 50', NULL, '120.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_promos`
--

CREATE TABLE `sma_promos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product2buy` int(11) NOT NULL,
  `product2get` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchases`
--

CREATE TABLE `sma_purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `bank_charges` float(10,2) DEFAULT NULL,
  `document_charges` float(10,2) DEFAULT NULL,
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchases`
--

INSERT INTO `sma_purchases` (`id`, `reference_no`, `date`, `supplier_id`, `supplier`, `warehouse_id`, `note`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `bank_charges`, `document_charges`, `grand_total`, `paid`, `status`, `payment_status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `payment_term`, `due_date`, `return_id`, `surcharge`, `return_purchase_ref`, `purchase_id`, `return_purchase_total`, `cgst`, `sgst`, `igst`) VALUES
(5, 'PO2021/10/0003', '2021-10-27 23:12:00', 19, 'HEMOCUE AB', 1, '', '656.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '656.0000', '0.0000', 'received', 'pending', 1, 1, '2021-10-28 04:46:11', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(6, 'Test-purchase-24-11-2021', '2021-11-26 20:00:00', 11, 'kg store', 1, '', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '1000.0000', '0.0000', 'received', 'pending', 1, 1, '2021-11-26 20:01:59', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(7, 'test purchase on 27_11_2021', '2021-11-26 20:30:00', 11, 'kg store', 1, '&lt;p&gt;test&lt;&sol;p&gt;', '1100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '1100.0000', '0.0000', 'received', 'pending', 1, 1, '2021-12-01 20:02:49', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(8, 'test purchase on 27_11_2021', '2021-11-26 20:30:00', 11, 'kg store', 1, '&lt;p&gt;test&lt;&sol;p&gt;', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, 1, '2021-12-03 18:21:39', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(19, 'test on 05_12_2021', '2021-12-04 19:23:00', 30, 'HemoCue AB', 1, '&lt;p&gt;for testing&lt;&sol;p&gt;', '12954.4000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '12954.4000', '0.0000', 'received', 'pending', 1, 1, '2021-12-04 19:52:32', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(20, 'test purchase on 07_12_2021', '2021-12-06 19:33:00', 11, 'kg store', 1, '&lt;p&gt;for testing&lt;&sol;p&gt;', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '1000.0000', '0.0000', 'received', 'pending', 1, 1, '2021-12-06 19:34:15', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(21, 'test final', '2021-12-06 19:41:00', 11, 'kg store', 1, '', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '1000.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(22, 'purchase on 11_12_2021', '2021-12-10 20:43:00', 11, 'kg store', 1, '&lt;p&gt;t5&lt;&sol;p&gt;', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(23, 'test purchase on 11_12_2021', '2021-12-11 08:29:00', 13, 'lb store', 1, '&lt;p&gt;for testing&lt;&sol;p&gt;', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '1000.0000', '0.0000', 'received', 'pending', 1, 1, '2021-12-11 10:15:37', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(24, 'test purchase on dec', '2021-12-11 10:16:00', 30, 'HemoCue AB', 1, '&lt;p&gt;v0&lt;&sol;p&gt;', '500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '500.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(25, 'test purchase 1001', '2021-12-11 18:22:00', 11, 'kg store', 1, '&lt;p&gt;for testing&lt;&sol;p&gt;', '5000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '5000.0000', '0.0000', 'received', 'pending', 1, 1, '2021-12-11 18:24:25', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(32, 'test', '2021-12-15 20:11:00', 11, 'kg store', 1, '', '200.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '200.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 33, '100.0000', 'test', NULL, '-200.0000', NULL, NULL, NULL),
(33, 'test', '2021-12-15 20:15:00', 11, 'kg store', 1, '', '-200.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-200.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'test', 32, '0.0000', NULL, NULL, NULL),
(34, 'test1234', '2021-12-15 20:19:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 35, '100.0000', 'test1234', NULL, '-100.0000', NULL, NULL, NULL),
(35, 'test1234', '2021-12-15 20:20:00', 11, 'kg store', 1, '', '-100.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-100.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'test1234', 34, '0.0000', NULL, NULL, NULL),
(36, 'test1111', '2021-12-15 20:29:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 37, '100.0000', 'test', NULL, '-100.0000', NULL, NULL, NULL),
(37, 'test1111', '2021-12-15 20:31:00', 11, 'kg store', 1, '', '-100.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-100.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'test', 36, '0.0000', NULL, NULL, NULL),
(38, 'test v11', '2021-12-15 21:09:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 39, '100.0000', 'test', NULL, '-100.0000', NULL, NULL, NULL),
(39, 'test v11', '2021-12-15 21:10:00', 11, 'kg store', 1, '', '-100.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-100.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'test', 38, '0.0000', NULL, NULL, NULL),
(40, 'test pur', '2021-12-15 21:12:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 41, '100.0000', 'PR2021/12/0001', NULL, '-100.0000', NULL, NULL, NULL),
(41, 'test pur', '2021-12-15 21:23:00', 11, 'kg store', 1, '', '-100.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-100.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'PR2021/12/0001', 40, '0.0000', NULL, NULL, NULL),
(42, 'test1234', '2021-12-15 21:28:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 43, '100.0000', 'PR2021/12/0001', NULL, '-100.0000', NULL, NULL, NULL),
(43, 'test1234', '2021-12-15 21:29:00', 11, 'kg store', 1, '', '-100.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-100.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'PR2021/12/0001', 42, '0.0000', NULL, NULL, NULL),
(44, 'test', '2021-12-15 21:33:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, 45, '100.0000', 'PR2021/12/0001', NULL, '-100.0000', NULL, NULL, NULL),
(45, 'test', '2021-12-15 21:34:00', 11, 'kg store', 1, '', '-100.0000', '0.0000', NULL, '100.0000', '100.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', NULL, NULL, '-100.0000', '0.0000', 'returned', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '100.0000', 'PR2021/12/0001', 44, '0.0000', NULL, NULL, NULL),
(46, 'test', '2021-12-15 21:37:00', 11, 'kg store', 1, '', '200.0000', '0.0000', '10', '10.0000', '10.0000', '0.0000', 1, '0.0000', '0.0000', '9.0000', 9.00, 9.00, '199.0000', '0.0000', 'received', 'pending', 1, 1, '2021-12-17 21:48:47', NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(47, 'test on 18_12_2021', '2021-12-15 21:37:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '1', '1.0000', '1.0000', '0.0000', 1, '0.0000', '0.0000', '1.0000', 1.00, 1.00, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(48, 'test v11', '2021-12-18 14:43:00', 11, 'kg store', 1, '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', 1.00, 1.00, '100.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL),
(49, 'test v12', '2021-12-18 14:45:00', 11, 'kg store', 1, '', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', 1.00, 1.00, '1000.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_items`
--

CREATE TABLE `sma_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT 0.0000,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `serial_no`, `manufacture_date`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, NULL, NULL, 22, 's01', 'sampo', NULL, '90.9091', '500.0000', 1, '9.0909', 2, '10%', NULL, NULL, NULL, NULL, NULL, '50000.0000', '0.0000', '2021-01-13', 'received', '100.0000', '100.0000', '500.0000', NULL, NULL, 2, '2', '500.0000', NULL, NULL, NULL, NULL),
(2, NULL, NULL, 21, '26582301', 'Shampoo', NULL, '94.3396', '100.0000', 1, '5.6604', 3, '6%', NULL, NULL, NULL, NULL, NULL, '10000.0000', '55.0000', '2021-01-13', 'received', '100.0000', '100.0000', '100.0000', NULL, NULL, 2, '2', '100.0000', NULL, NULL, NULL, NULL),
(9, NULL, NULL, 32, '405210', 'HemoCue HbA1c 501 Analyzer', NULL, '656.0000', '-1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '-656.0000', '1.0000', '2021-08-17', 'received', '656.0000', '656.0000', '-1.0000', NULL, NULL, 1, NULL, '-1.0000', NULL, NULL, NULL, NULL),
(4, NULL, NULL, 25, 'HW123', 'Handwash', NULL, '16.3636', '2000.0000', 1, '1.6364', 2, '10%', NULL, NULL, NULL, NULL, NULL, '36000.0000', '2000.0000', '2021-08-14', 'received', '18.0000', '18.0000', '2000.0000', NULL, NULL, 1, '1', '2000.0000', NULL, NULL, NULL, NULL),
(10, NULL, NULL, 29, '1211801', 'HemoCue Hb-301 Microcuvette', NULL, '13.0000', '200.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '2600.0000', '131.0000', '2021-08-18', 'received', '13.0000', '13.0000', '200.0000', NULL, NULL, 1, NULL, '200.0000', NULL, NULL, NULL, NULL),
(6, NULL, NULL, 27, 'CR12', 'Chemistry Reagents', NULL, '20.0000', '200.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '4000.0000', '197.0000', '2021-08-17', 'received', '20.0000', '20.0000', '200.0000', NULL, NULL, 1, '1', '200.0000', NULL, NULL, NULL, NULL),
(11, NULL, NULL, 28, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(12, NULL, NULL, 35, 'HbA1CmCC', 'HemoCue HbA1c 501, Monthly Check Cartridge', NULL, '5.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '5.0000', '1.0000', '2021-08-18', 'received', '5.0000', '5.0000', '1.0000', NULL, NULL, 1, NULL, '1.0000', NULL, NULL, NULL, NULL),
(13, NULL, NULL, 36, 'EGVBCT-01B', 'ESR Vacuum Blood Collection Tubes (Glass)', NULL, '15.0000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '75.0000', '-8.0000', '2021-08-19', 'received', '15.0000', '15.0000', '5.0000', NULL, NULL, 4, '4', '5.0000', NULL, NULL, NULL, NULL),
(14, NULL, NULL, 37, 'YGCAVBT-01G', 'Serum Gel Clot Activator Vacuum Blood Collection Tube', NULL, '20.0000', '-7.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '-140.0000', '44.0000', '2021-08-19', 'received', '20.0000', '20.0000', '-7.0000', NULL, NULL, 4, '4', '-7.0000', NULL, NULL, NULL, NULL),
(15, NULL, NULL, 38, 'CPDA-1SBB01', 'CPDA-1 Single Blood Bag', NULL, '20.0000', '-40.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '-800.0000', '60.0000', '2021-08-19', 'received', '20.0000', '20.0000', '-40.0000', NULL, NULL, 4, '4', '-40.0000', NULL, NULL, NULL, NULL),
(16, NULL, NULL, 40, 'AGL-ST10-B', 'AllChek TM Glucose Meter', NULL, '10.0000', '33.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '330.0000', '31.0000', '2021-08-19', 'received', '10.0000', '10.0000', '33.0000', NULL, NULL, 4, '4', '33.0000', NULL, NULL, NULL, NULL),
(17, NULL, NULL, 39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', NULL, '5.0000', '182.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '910.0000', '115.0000', '2021-08-19', 'received', '5.0000', '5.0000', '182.0000', NULL, NULL, 4, '4', '182.0000', NULL, NULL, NULL, NULL),
(18, NULL, NULL, 41, '139123', 'HemoCue Cleaner', NULL, '6.2500', '8.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '50.0000', '7.0000', '2021-08-19', 'received', '6.2500', '6.2500', '8.0000', NULL, NULL, 4, '4', '8.0000', NULL, NULL, NULL, NULL),
(19, NULL, NULL, 42, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(20, NULL, NULL, 43, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(21, NULL, NULL, 44, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(22, NULL, NULL, 45, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(23, NULL, NULL, 46, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '5.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(24, NULL, NULL, 47, 'MF-28', 'Flourecare C-Reactive Protein (CRP) Diagnostic Kit', NULL, '26.0000', '7.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '182.0000', '3.0000', '2021-08-20', 'received', '26.0000', '26.0000', '7.0000', NULL, NULL, 4, '4', '7.0000', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 48, 'MF-22', 'Flourecare Triiodothyronine (T3) Diagnostic Kit', NULL, '26.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '52.0000', '3.0000', '2021-08-20', 'received', '26.0000', '26.0000', '2.0000', NULL, NULL, 4, '4', '2.0000', NULL, NULL, NULL, NULL),
(26, NULL, NULL, 49, 'MF-23', 'Flourecare Thyroxine (T4) Diagnostic Kit', NULL, '26.0000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '78.0000', '3.0000', '2021-08-20', 'received', '26.0000', '26.0000', '3.0000', NULL, NULL, 4, '4', '3.0000', NULL, NULL, NULL, NULL),
(27, NULL, NULL, 50, 'MF-46', 'Flourecare Prostate Specific Antigen (PSA) Kit', NULL, '26.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '52.0000', '2.0000', '2021-08-20', 'received', '26.0000', '26.0000', '2.0000', NULL, NULL, 4, '4', '2.0000', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 51, 'MF-14', 'Flourecare Beta Human Chorionic Gonadotropin (β- HCG) Kit', NULL, '26.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '52.0000', '3.0000', '2021-08-20', 'received', '26.0000', '26.0000', '2.0000', NULL, NULL, 4, '4', '2.0000', NULL, NULL, NULL, NULL),
(29, NULL, NULL, 52, 'P04-03-101138-00', 'Genrui KT03A 3-Parts  Haematology Analyzer Diluent ', NULL, '20.0000', '11.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '220.0000', '22.0000', '2021-08-21', 'received', '20.0000', '20.0000', '11.0000', NULL, NULL, 4, '4', '11.0000', NULL, NULL, NULL, NULL),
(30, NULL, NULL, 53, 'P04-03-101056-00', 'GENRUI  KT05DIL 5-Part Hematology Analyzer  Diluent (20 L)', NULL, '20.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '0.0000', '2021-08-21', 'received', '20.0000', '20.0000', '2.0000', NULL, NULL, 4, '4', '2.0000', NULL, NULL, NULL, NULL),
(31, NULL, NULL, 54, 'MF-31', 'Floure Cardiac Troponin I (cTnI) Diagnostic Kit', NULL, '31.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '62.0000', '1.0000', '2021-08-22', 'received', '31.0000', '31.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(32, NULL, NULL, 56, 'MF-16', 'Floure Follicle Stimulating Hormone (FSH) Diagnostic Kit', NULL, '28.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '56.0000', '2.0000', '2021-08-22', 'received', '28.0000', '28.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(33, NULL, NULL, 57, 'MF-17', 'Flourecare Prolactin (PRL) Diagnostic Kit', NULL, '28.0000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '84.0000', '3.0000', '2021-08-22', 'received', '28.0000', '28.0000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(34, NULL, NULL, 58, 'MF-19', 'Flourecare Progesterone (P) Diagnostic Kit', NULL, '29.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '58.0000', '2.0000', '2021-08-22', 'received', '29.0000', '29.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(35, NULL, NULL, 59, 'MF-32', 'Flourecare Creatine Kinase Isoenzyme (CK-MB) Diagnostic Kit', NULL, '31.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '62.0000', '2.0000', '2021-08-22', 'received', '31.0000', '31.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(36, NULL, NULL, 60, 'MF-34', 'Flourecare D-dimer(DD) Diagnostic Kit', NULL, '40.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '1.0000', '2021-08-22', 'received', '40.0000', '40.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(37, NULL, NULL, 61, 'MF-41', 'Flourecare C-peptide (C-P) Diagnostic Kit', NULL, '40.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '80.0000', '2.0000', '2021-08-22', 'received', '40.0000', '40.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(38, NULL, NULL, 62, 'MF-15', 'Flourecare Luteinizing Hormone (LH) Diagnostic Kit', NULL, '26.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '52.0000', '2.0000', '2021-08-22', 'received', '26.0000', '26.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(39, NULL, NULL, 63, 'MF-12', 'Flourecare Ferritin (FERR) Diagnostic Kit', NULL, '31.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '62.0000', '1.0000', '2021-08-22', 'received', '31.0000', '31.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(40, NULL, NULL, 64, 'MF-53', 'Flourecare Total Immunoglobulin E (Total IgE) Diagnostic Ki', NULL, '31.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '31.0000', '1.0000', '2021-08-22', 'received', '31.0000', '31.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(41, NULL, NULL, 65, 'MF-03', 'Flourecare Alpha-fetoprotein (AFP) Kit', NULL, '30.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.0000', '1.0000', '2021-08-22', 'received', '30.0000', '30.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(42, NULL, NULL, 66, 'MF-001', 'Flourecare Estrodial ', NULL, '30.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.0000', '1.0000', '2021-08-22', 'received', '30.0000', '30.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(43, NULL, NULL, 67, 'P04-03-101072-00', 'GENRUI  KT05DIFF Lyse for 5-Part Hematology Analyzer (500 mL)', NULL, '25.0000', '80.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '2000.0000', '37.0000', '2021-08-22', 'received', '25.0000', '25.0000', '80.0000', NULL, NULL, 21, '(Vol/Pk)', '80.0000', NULL, NULL, NULL, NULL),
(44, NULL, NULL, 68, 'P04-03-101074-00', 'GENRUI  KT05LH Lyse for 5-Part Hematology Analyzer (200 mL)', NULL, '30.0000', '-11.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '-330.0000', '46.0000', '2021-08-22', 'received', '30.0000', '30.0000', '-11.0000', NULL, NULL, 21, '(Vol/Pk)', '-11.0000', NULL, NULL, NULL, NULL),
(45, NULL, NULL, 81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', NULL, '25.0000', '9.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '225.0000', '20.0000', '2021-08-22', 'received', '25.0000', '25.0000', '9.0000', NULL, NULL, 21, '(Vol/Pk)', '9.0000', NULL, NULL, NULL, NULL),
(46, NULL, NULL, 69, 'P04-03-101108-000', 'Genrui Probe Cleanser for 3-Parts  Haematology Analyzer (50mL)', NULL, '5.0000', '9.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '45.0000', '4.0000', '2021-08-22', 'received', '5.0000', '5.0000', '9.0000', NULL, NULL, 21, '(Vol/Pk)', '9.0000', NULL, NULL, NULL, NULL),
(47, NULL, NULL, 71, 'P04-03-101111-000', 'Genrui Probe Cleanser for 5-Parts  Haematology Analyzer (50mL)', NULL, '5.0000', '10.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '50.0000', '10.0000', '2021-08-22', 'received', '5.0000', '5.0000', '10.0000', NULL, NULL, 21, '(Vol/Pk)', '10.0000', NULL, NULL, NULL, NULL),
(48, NULL, NULL, 70, 'P04-03-101108-001', 'Genrui EZ Cleanser for 3-Parts  Haematology Analyzer (50mL)', NULL, '5.0000', '6.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.0000', '7.0000', '2021-08-22', 'received', '5.0000', '5.0000', '6.0000', NULL, NULL, 21, '(Vol/Pk)', '6.0000', NULL, NULL, NULL, NULL),
(49, NULL, NULL, 72, 'P04-03-101108-002', 'Genrui EZ Cleanser for 5-Parts  Haematology Analyzer (50mL)', NULL, '5.0000', '7.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '35.0000', '7.0000', '2021-08-22', 'received', '5.0000', '5.0000', '7.0000', NULL, NULL, 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL),
(50, NULL, NULL, 82, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-14.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(51, NULL, NULL, 86, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(52, NULL, NULL, 83, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(53, NULL, NULL, 84, '02-01-2132', 'MNCHIP Electrolyte Panel Lyophilized Kit[7]', NULL, '30.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '120.0000', '7.0000', '2021-08-24', 'received', '30.0000', '30.0000', '4.0000', NULL, NULL, 22, 'Pcs / Pk', '4.0000', NULL, NULL, NULL, NULL),
(54, NULL, NULL, 33, '4052100', 'HemoCue HbA1c 501, Test Cartridge', NULL, '3.6000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '18.0000', '5.0000', '2021-08-24', 'received', '3.6000', '3.6000', '5.0000', NULL, NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL),
(55, NULL, NULL, 93, 'P12-70-000069-40', 'Genrui WP21A Semi Automated Chemistry Analyzer', NULL, '900.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '1800.0000', '1.0000', '2021-08-24', 'received', '900.0000', '900.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(56, NULL, NULL, 94, 'GM123', 'Gram Stain Complete Sets', NULL, '40.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '0.0000', '2021-08-25', 'received', '40.0000', '40.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(57, NULL, NULL, 95, 'FCHB01', 'Finecare HBA1C Catridge', NULL, '30.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.0000', '4.0000', '2021-08-25', 'received', '30.0000', '30.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(58, NULL, NULL, 96, 'FCPSA01', 'FineCare PSA', NULL, '45.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '45.0000', '1.0000', '2021-08-26', 'received', '45.0000', '45.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(59, NULL, NULL, 97, 'FCCRP01', 'FineCare CRP', NULL, '50.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '50.0000', '1.0000', '2021-08-26', 'received', '50.0000', '50.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(60, NULL, NULL, 98, 'IGO-502', 'Prime GeneGonorrhea Rapid Test Cassette(Swab)20T/kit', NULL, '10.4000', '58.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '603.2000', '58.0000', '2021-08-26', 'received', '10.4000', '10.4000', '58.0000', NULL, NULL, 22, 'Pcs / Pk', '58.0000', NULL, NULL, NULL, NULL),
(61, NULL, NULL, 99, 'ICH-502', 'Prime Gene Chlamydia Rapid Test Cassette(Swab/Urine)20T/kit', NULL, '11.0000', '38.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '418.0000', '33.0000', '2021-08-26', 'received', '11.0000', '11.0000', '38.0000', NULL, NULL, 22, 'Pcs / Pk', '38.0000', NULL, NULL, NULL, NULL),
(62, NULL, NULL, 100, 'ISY-301', 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', NULL, '5.0000', '99.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '495.0000', '51.0000', '2021-08-26', 'received', '5.0000', '5.0000', '99.0000', NULL, NULL, 22, 'Pcs / Pk', '99.0000', NULL, NULL, NULL, NULL),
(63, NULL, NULL, 101, 'ITY-302', 'Prime Gene Typhoid IgG/IgM Rapid Test Cassette(S/P)40T/kit', NULL, '16.0000', '31.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '496.0000', '7.0000', '2021-08-26', 'received', '16.0000', '16.0000', '31.0000', NULL, NULL, 22, 'Pcs / Pk', '31.0000', NULL, NULL, NULL, NULL),
(64, NULL, NULL, 102, 'IHB-355', 'Prime Gene HBV Combo Rapid Test Cassette(S/P)25T/kit', NULL, '19.5000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '78.0000', '2.0000', '2021-08-26', 'received', '19.5000', '19.5000', '4.0000', NULL, NULL, 22, 'Pcs / Pk', '4.0000', NULL, NULL, NULL, NULL),
(65, NULL, NULL, 108, 'ITG-402', 'Prime Gene TOXO IgG Rapid Test Cassette(WB/S/P)40T/kit', NULL, '20.4000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.8000', '2.0000', '2021-08-26', 'received', '20.4000', '20.4000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(66, NULL, NULL, 109, 'ITM-402', 'Prime Gene TOXO IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, '20.4000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.8000', '2.0000', '2021-08-26', 'received', '20.4000', '20.4000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(67, NULL, NULL, 107, 'ILEP-402', 'Prime Gene Leptospira IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, '18.4000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '55.2000', '3.0000', '2021-08-26', 'received', '18.4000', '18.4000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(68, NULL, NULL, 103, 'IFIL-402', 'Prime Gene Filariasis IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, '16.8000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '50.4000', '1.0000', '2021-08-26', 'received', '16.8000', '16.8000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(69, NULL, NULL, 104, 'ISG-402', 'Prime Gene HSV 1/2 IgG Rapid Test Cassette(WB/S/P)40T/kit', NULL, '20.4000', '6.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '122.4000', '6.0000', '2021-08-26', 'received', '20.4000', '20.4000', '6.0000', NULL, NULL, 22, 'Pcs / Pk', '6.0000', NULL, NULL, NULL, NULL),
(70, NULL, NULL, 105, 'ISM-402', 'Prime Gene HSV 1/2 IgM Rapid Test Cassette(WB/S/P)40T/kit', NULL, '20.4000', '6.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '122.4000', '6.0000', '2021-08-26', 'received', '20.4000', '20.4000', '6.0000', NULL, NULL, 22, 'Pcs / Pk', '6.0000', NULL, NULL, NULL, NULL),
(71, NULL, NULL, 115, 'IHC-302', 'Prime Gene HCV Rapid Test Cassette(S/P)40T/kit', NULL, '9.2000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '9.2000', '1.0000', '2021-08-26', 'received', '9.2000', '9.2000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(72, NULL, NULL, 111, 'TFO-602', 'Prime Gene FOB Rapid Test Cassette(Feces)-50ng/ml,25T/kit', NULL, '8.5000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '42.5000', '5.0000', '2021-08-26', 'received', '8.5000', '8.5000', '5.0000', NULL, NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL),
(73, NULL, NULL, 114, 'ITB-402', 'Prime Gene Tuberculosis (TB) Rapid Test Cassette(WB/S/P),40T/kit', NULL, '18.0000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '54.0000', '0.0000', '2021-08-26', 'received', '18.0000', '18.0000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(74, NULL, NULL, 113, 'DOA-1124', 'Prime Gene Multi-Drug 12 Drugs Rapid Test Panel(Urine)', NULL, '2.2000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '2.2000', '1.0000', '2021-08-26', 'received', '2.2000', '2.2000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(75, NULL, NULL, 112, 'IRO-602', 'Prime Gene Rotavirus Rapid Test Cassette（Feces）25T/kit', NULL, '15.0000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '45.0000', '3.0000', '2021-08-26', 'received', '15.0000', '15.0000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(76, NULL, NULL, 110, 'VICGM-425', 'Prime Gene CMV IgG/IgM Combo Rapid test Cassette （WB/S/P)25T/kit', NULL, '16.5000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '49.5000', '3.0000', '2021-08-26', 'received', '16.5000', '16.5000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(77, NULL, NULL, 117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', NULL, '3.0000', '66.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '198.0000', '40.0000', '2021-08-27', 'received', '3.0000', '3.0000', '66.0000', NULL, NULL, 22, 'Pcs / Pk', '66.0000', NULL, NULL, NULL, NULL),
(78, NULL, NULL, 118, 'IHBSG-301', 'Prime Gene HBsAg Rapid Test Dipstick(S/P)50T/kit,3mm', NULL, '4.5000', '14.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '63.0000', '-16.0000', '2021-08-27', 'received', '4.5000', '4.5000', '14.0000', NULL, NULL, 22, 'Pcs / Pk', '14.0000', NULL, NULL, NULL, NULL),
(79, NULL, NULL, 119, 'IHC-301', 'Prime Gene HCV Rapid Test Dipstick(S/P),50T/kit', NULL, '9.0000', '36.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '324.0000', '10.0000', '2021-08-27', 'received', '9.0000', '9.0000', '36.0000', NULL, NULL, 22, 'Pcs / Pk', '36.0000', NULL, NULL, NULL, NULL),
(80, NULL, NULL, 120, 'FHC-101', 'Prime Gene Pregnancy (hCG) Rapid Test Dipstick(Urine)SOT/kit', NULL, '2.5000', '16.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '2.0000', '2021-08-27', 'received', '2.5000', '2.5000', '16.0000', NULL, NULL, 22, 'Pcs / Pk', '16.0000', NULL, NULL, NULL, NULL),
(81, NULL, NULL, 106, 'IHP-302', 'Prime Gene H. pylori Antibody Rapid Test Cassette(S/P)40T/kit', NULL, '16.0000', '92.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '1472.0000', '52.0000', '2021-08-28', 'received', '16.0000', '16.0000', '92.0000', NULL, NULL, 22, 'Pcs / Pk', '92.0000', NULL, NULL, NULL, NULL),
(82, NULL, NULL, 121, 'BXC0192B', 'Biorex Bilirubin (L.S) TOTAL (2x100ml; 1x50ml)', NULL, '8.6500', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '34.6000', '4.0000', '2021-08-28', 'received', '8.6500', '8.6500', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(83, NULL, NULL, 122, 'BXC0222B', 'Biorex Albumin (Monoliquid) BCG (Ready to Use) (6x60ml; 1x5ml)', NULL, '6.9000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '34.5000', '5.0000', '2021-08-28', 'received', '6.9000', '6.9000', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(84, NULL, NULL, 123, 'BXC0292A', 'Biorex Calcium (Monoliquid) Arsenazo (2x125ml; 1x5ml)', NULL, '8.2500', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '33.0000', '4.0000', '2021-08-28', 'received', '8.2500', '8.2500', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(85, NULL, NULL, 124, 'BXC0352B', 'Biorex Magnesium (Monoliquid) Xylidyl Blue (6x60ml; 1x5ml)', NULL, '9.6500', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '48.2500', '5.0000', '2021-08-28', 'received', '9.6500', '9.6500', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(86, NULL, NULL, 125, 'BXC0173B', 'Biorex Total Protein (Monoliquid) Biuret (Ready To Use) (6x60ml; 1x5ml)', NULL, '8.6500', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '43.2500', '8.0000', '2021-08-28', 'received', '8.6500', '8.6500', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(87, NULL, NULL, 126, 'BXC0138A', 'Biorex Potassium (Monoliquid) TPB (Colorimetric) 5x20ml; 1x5ml', NULL, '13.8000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '55.2000', '4.0000', '2021-08-28', 'received', '13.8000', '13.8000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(88, NULL, NULL, 127, 'BXC0191B', 'Biorex Bilirubin (L.S) DIRECT (2x100ml; 1x50ml)', NULL, '9.6000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '28.8000', '4.0000', '2021-08-28', 'received', '9.6000', '9.6000', '3.0000', NULL, NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(89, NULL, NULL, 128, 'BXC0111B', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 3x60ml; 3x60ml; 1x5ml', NULL, '9.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '18.0000', '5.0000', '2021-08-28', 'received', '9.0000', '9.0000', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(90, NULL, NULL, 131, 'BXC0271B', 'Biorex Triglycerides (Monoliquid) GPO‐PAP 4x60ml; 1x5ml', NULL, '18.3500', '8.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '146.8000', '8.0000', '2021-08-28', 'received', '18.3500', '18.3500', '8.0000', NULL, NULL, 21, '(Vol/Pk)', '8.0000', NULL, NULL, NULL, NULL),
(91, NULL, NULL, 132, 'BXC0603C', 'Biorex Uric Acid (Monoliquid) Uricase PAP (5x100ml; 1x5ml)', NULL, '13.5000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '67.5000', '5.0000', '2021-08-28', 'received', '13.5000', '13.5000', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(92, NULL, NULL, 133, 'BXC0362D', 'Biorex GGT (L.S) Carboxy (2x60ml; 2x12ml)', NULL, '13.8000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '55.2000', '4.0000', '2021-08-28', 'received', '13.8000', '13.8000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(93, NULL, NULL, 134, 'BXC0146A', 'Biorex Sodium (Monoliquid) Colorimetric, Enzymatic (5x20ml; 2x5ml', NULL, '20.4000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '81.6000', '4.0000', '2021-08-28', 'received', '20.4000', '20.4000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(94, NULL, NULL, 135, 'BXC0261B', 'Biorex Cholesterol (Monoliquid) CHOD‐PAP (6x60ml; 1x5ml)', NULL, '11.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '44.0000', '4.0000', '2021-08-28', 'received', '11.0000', '11.0000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(95, NULL, NULL, 136, 'BXC0562B', 'Biorex Amylase (Monoliquid) CNPG3 (10x10ml)', NULL, '23.5000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '70.5000', '3.0000', '2021-08-28', 'received', '23.5000', '23.5000', '3.0000', NULL, NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(96, NULL, NULL, 137, 'BXC0252C', 'Biorex CK‐nac (L.S) Nac Activation, Serum Start, DGKC (6x10ml; 1x12ml)', NULL, '26.2000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '78.6000', '4.0000', '2021-08-28', 'received', '26.2000', '26.2000', '3.0000', NULL, NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(97, NULL, NULL, 139, 'BXC0312E', 'Biorex Human Assayed Control Normal (1x5ml)', NULL, '6.7500', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '33.7500', '5.0000', '2021-08-28', 'received', '6.7500', '6.7500', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(98, NULL, NULL, 140, 'BXC0312F', 'Biorex Human Assayed Control Abnormal (1x5ml)', NULL, '6.7500', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '6.7500', '0.0000', '2021-08-28', 'received', '6.7500', '6.7500', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(99, NULL, NULL, 141, 'BXC0312C', 'Biorex Human Assayed Control Normal (5x5ml)', NULL, '31.5000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '31.5000', '1.0000', '2021-08-28', 'received', '31.5000', '31.5000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(100, NULL, NULL, 142, 'BXC0312D', 'Biorex Human Assayed Control Abnormal (5x5ml)', NULL, '31.8000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '31.8000', '1.0000', '2021-08-28', 'received', '31.8000', '31.8000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(101, NULL, NULL, 143, 'BXC0101B', 'Biorex Glucose (Monoliquid) GOD‐PAP  (6x125ml; 1x5ml)', NULL, '10.7500', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '21.5000', '2.0000', '2021-08-29', 'received', '10.7500', '10.7500', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(102, NULL, NULL, 144, 'BXC0101D', 'Biorex Glucose (Monoliquid) GOD‐PAP  (4x250ml; 1x5ml)', NULL, '13.4500', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '53.8000', '4.0000', '2021-08-29', 'received', '13.4500', '13.4500', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(103, NULL, NULL, 145, 'BXC0152A', 'Biorex CO2 (Bicarbonate) (Monoliquid) Enzymatic (10x5ml; 1x1ml)', NULL, '24.2500', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '48.5000', '2.0000', '2021-08-29', 'received', '24.2500', '24.2500', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(104, NULL, NULL, 146, 'BXC0185B', 'Biorex  Alkaline phosphatase - ALP (L.S) DEA (DGKC) 5x50ml; 1x50ml', NULL, '8.4000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '16.8000', '4.0000', '2021-08-29', 'received', '8.4000', '8.4000', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(105, NULL, NULL, 147, 'BXC0321L', 'Biorex Calibration Serum ', NULL, '31.8500', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '95.5500', '2.0000', '2021-08-29', 'received', '31.8500', '31.8500', '3.0000', NULL, NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(106, NULL, NULL, 148, 'BXC0511A', 'Biorex Lipase (L.S) Colorimetric( 2x10ml;1x10ml; 1x3ml)', NULL, '19.3000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '77.2000', '5.0000', '2021-08-29', 'received', '19.3000', '19.3000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(107, NULL, NULL, 149, 'BXC0302A', 'Biorex Phosphorus (Inorganic) (Monoliquid) Molybdate (5x20ml; 1x5ml)', NULL, '9.4000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '9.4000', '1.0000', '2021-08-29', 'received', '9.4000', '9.4000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(108, NULL, NULL, 130, 'BXC0122A', 'Boirex Urea (L.S) Modified Berthelot (2x125ml; 1x50ml; 2x6.5ml; 1x5ml)', NULL, '11.7500', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '23.5000', '3.0000', '2021-08-29', 'received', '11.7500', '11.7500', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(109, NULL, NULL, 150, 'BXC0213D', 'Biorex ALT (GPT) (L.S) IFCC (2x100ml; 2x20ml)', NULL, '11.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '11.0000', '6.0000', '2021-08-29', 'received', '11.0000', '11.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(110, NULL, NULL, 138, 'BXC0452B', 'Biorex CK‐MB (L.S) Immunoinhibition (2x25ml; 2x5ml)', NULL, '33.2000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '33.2000', '1.0000', '2021-08-29', 'received', '33.2000', '33.2000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(111, NULL, NULL, 151, '1102160025', 'Tulip Lactate Dehydrogenase (LD) (L.S) Pyruvate → Lactate, DGKC 1x20ml; 1x5ml', NULL, '13.5000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '67.5000', '5.0000', '2021-08-29', 'received', '13.5000', '13.5000', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(112, NULL, NULL, 152, 'LXRF0050', 'Biorex RF Latex Kit -(50T)', NULL, '4.8500', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '4.8500', '5.0000', '2021-08-29', 'received', '4.8500', '4.8500', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(113, NULL, NULL, 153, 'BXC0431A', 'Biorex LDL Cholesterol (L.S) Direct (without Calibrator) 3x10ml; 1x10ml', NULL, '30.8000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.8000', '7.0000', '2021-08-30', 'received', '30.8000', '30.8000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(114, NULL, NULL, 154, 'BXC0203D', 'Biorex AST (GOT) (L.S) IFCC 2x100ml; 2x20ml', NULL, '11.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '11.0000', '6.0000', '2021-08-30', 'received', '11.0000', '11.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(115, NULL, NULL, 160, 'LXASO025', 'ASO atex Reagent, +ve and -ve Controls, Pipette/Stirrers & Re-usable Test Slide (25T)', NULL, '6.2000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '12.4000', '2.0000', '2021-09-05', 'received', '6.2000', '6.2000', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(116, NULL, NULL, 161, 'FEBSOH05', 'Widal Reagents Salmonella typhi H, typhi O & 0.5ml Positive Control (2x5ml; 1x0.5ml)', NULL, '3.4500', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '17.2500', '95.0000', '2021-09-05', 'received', '3.4500', '3.4500', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(117, NULL, NULL, 162, 'BXC0493A', 'Alcohol, Ammonia, Carbonate Control Level 1(1x2ml)', NULL, '3.8500', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '7.7000', '5.0000', '2021-09-05', 'received', '3.8500', '3.8500', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(118, NULL, NULL, 163, 'BXC0492A', 'Alcohol, Ammonia, Carbonate Calibrator (1x2ml)', NULL, '3.8500', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '11.5500', '5.0000', '2021-09-05', 'received', '3.8500', '3.8500', '3.0000', NULL, NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(119, NULL, NULL, 155, '1234', 'Laboratory Timer ', NULL, '20.0000', '10.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '200.0000', '7.0000', '2021-09-05', 'received', '20.0000', '20.0000', '10.0000', NULL, NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL),
(120, NULL, NULL, 164, 'P14-03-105035-00', 'Genrui GE300-Electrolyte Reagents A & B (390.160 mL)', NULL, '20.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '0.0000', '2021-09-05', 'received', '20.0000', '20.0000', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(121, NULL, NULL, 165, 'P14-03-105020-00', 'GE300 Electrolyte Ref. Filling Solution  (10 mL)', NULL, '8.0000', '7.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '56.0000', '7.0000', '2021-09-05', 'received', '8.0000', '8.0000', '7.0000', NULL, NULL, 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL),
(122, NULL, NULL, 166, 'P14-03-105011-00', 'GE300 Electrolyte ISE. Filling Solution  (10 mL)', NULL, '8.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '32.0000', '4.0000', '2021-09-05', 'received', '8.0000', '8.0000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(123, NULL, NULL, 167, 'P14-03-05014-00', 'PVC Electrode Activating Solution for GE300 (50 mL)', NULL, '6.0000', '6.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '36.0000', '6.0000', '2021-09-05', 'received', '6.0000', '6.0000', '6.0000', NULL, NULL, 21, '(Vol/Pk)', '6.0000', NULL, NULL, NULL, NULL),
(124, NULL, NULL, 168, 'P14-03-207002-00', 'Thermal Printer Paper for GE300 (80*35 mm)', NULL, '1.0000', '14.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '14.0000', '11.0000', '2021-09-05', 'received', '1.0000', '1.0000', '14.0000', NULL, NULL, 22, 'Pcs / Pk', '14.0000', NULL, NULL, NULL, NULL),
(125, NULL, NULL, 169, 'P14-03-105023-00', 'Genrui GE-300-DeProtein Solution0 (50 mL)', NULL, '20.0000', '6.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '120.0000', '6.0000', '2021-09-05', 'received', '20.0000', '20.0000', '6.0000', NULL, NULL, 21, '(Vol/Pk)', '6.0000', NULL, NULL, NULL, NULL),
(126, NULL, NULL, 170, 'P04-03-105209-00', 'Genrui QC Solution for GE300 (level 1:10 mL*1,level 2:10mL*1,level 3:10 mL*1)', NULL, '10.0000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.0000', '3.0000', '2021-09-05', 'received', '10.0000', '10.0000', '3.0000', NULL, NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(127, NULL, NULL, 171, 'P14-03-105028-00', 'Genrui DS-Ⅴ CO2 Standard (50 mL) for GE-300 Electrolytes Analyzer CO2 mode', NULL, '10.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '4.0000', '2021-09-05', 'received', '10.0000', '10.0000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(128, NULL, NULL, 172, 'P14-03-105008-00', ' GE300-Electrolyte Cleaning Solutions (250 mL)', NULL, '15.0000', '8.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '120.0000', '8.0000', '2021-09-05', 'received', '15.0000', '15.0000', '8.0000', NULL, NULL, 21, '(Vol/Pk)', '8.0000', NULL, NULL, NULL, NULL),
(129, NULL, NULL, 173, 'P14-03-105025-00', ' GE300-Electrolyte DS-C Standard C (400 mL) for CO2 mode', NULL, '10.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '4.0000', '2021-09-05', 'received', '10.0000', '10.0000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(130, NULL, NULL, 174, 'GCCS-104', 'Chemistry Analyzer Cleaning Solutions (General Use) 250mL', NULL, '20.0000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '100.0000', '5.0000', '2021-09-05', 'received', '20.0000', '20.0000', '5.0000', NULL, NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(131, NULL, NULL, 175, '7030301004', 'DLab MicroPette Plus Autoclavable Pipette (0.5-10 uL)', NULL, '33.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '66.0000', '2.0000', '2021-09-05', 'received', '33.0000', '33.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(132, NULL, NULL, 176, '7030301014', 'DLab MicroPette Plus Autoclavable Pipette (10 -100 uL)', NULL, '33.0000', '3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '99.0000', '3.0000', '2021-09-05', 'received', '33.0000', '33.0000', '3.0000', NULL, NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(133, NULL, NULL, 177, '70300000085', 'DLab MicroPette Plus Autoclavable Linear Pipette Stand', NULL, '33.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '66.0000', '2.0000', '2021-09-05', 'received', '33.0000', '33.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(134, NULL, NULL, 178, '70300000840000027777', 'DLab MicroPette Plus Autoclavable Round Pipette Stand', NULL, '33.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '66.0000', '2.0000', '2021-09-05', 'received', '33.0000', '33.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(135, NULL, NULL, 179, 'esrstand101', 'Manual ESR Stand  (30 Holes)', NULL, '15.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '60.0000', '4.0000', '2021-09-05', 'received', '15.0000', '15.0000', '4.0000', NULL, NULL, 22, 'Pcs / Pk', '4.0000', NULL, NULL, NULL, NULL),
(136, NULL, NULL, 180, 'PT-01', 'Yellow Pipette Tips (1 - 200 uL)', NULL, '20.0000', '5.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '100.0000', '1.0000', '2021-09-05', 'received', '20.0000', '20.0000', '5.0000', NULL, NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL),
(137, NULL, NULL, 181, 'OI01', 'Oil Immersion (5ml)', NULL, '1.0000', '40.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '40.0000', '2021-09-05', 'received', '1.0000', '1.0000', '40.0000', NULL, NULL, 21, '(Vol/Pk)', '40.0000', NULL, NULL, NULL, NULL),
(138, NULL, NULL, 182, 'HT404', 'HemoTypeSC Electrophoresis Kits (50 pcs/pk)', NULL, '70.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '140.0000', '0.0000', '2021-09-05', 'received', '70.0000', '70.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(139, NULL, NULL, 183, 'CS01', 'Cover Slip (100 pcs/pk)', NULL, '5.0000', '-3.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '-15.0000', '-3.0000', '2021-09-05', 'received', '5.0000', '5.0000', '-3.0000', NULL, NULL, 22, 'Pcs / Pk', '-3.0000', NULL, NULL, NULL, NULL),
(140, NULL, NULL, 187, 'CL01', 'Colorant (100mL /Bottle)', NULL, '10.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '10.0000', '1.0000', '2021-09-06', 'received', '10.0000', '10.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(141, NULL, NULL, 186, 'ZL01', 'Zip Lock Bag 100pcs/pk ', NULL, '10.0000', '10.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '100.0000', '10.0000', '2021-09-06', 'received', '10.0000', '10.0000', '10.0000', NULL, NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL),
(142, NULL, NULL, 185, 'cryt01', 'Cryo Tube (1-2 mL) 500pcs/ctn', NULL, '100.0000', '8.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '800.0000', '8.0000', '2021-09-06', 'received', '100.0000', '100.0000', '8.0000', NULL, NULL, 22, 'Pcs / Pk', '8.0000', NULL, NULL, NULL, NULL),
(143, NULL, NULL, 158, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-6.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(144, NULL, NULL, 159, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-2.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(145, NULL, NULL, 156, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-1000.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(146, NULL, NULL, 157, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '120.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(147, NULL, NULL, 194, 'P05-50-000114-00', 'GENRUI  KT-60 3-Part Auto Hematology Analyzer', NULL, '2500.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '2500.0000', '0.0000', '2021-10-03', 'received', '2500.0000', '2500.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(148, NULL, NULL, 195, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-12.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(149, NULL, NULL, 190, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-2.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(150, NULL, NULL, 191, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-1.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(151, NULL, NULL, 193, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(152, NULL, NULL, 192, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(153, NULL, NULL, 196, 'BXC0491A', 'Biorex Blood Alcohol(L.S.) UVR (1: 3 x 20ml  R2: 2 x   5ml  R4: 1 x 2ml)', NULL, '15.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '30.0000', '2.0000', '2021-10-23', 'received', '15.0000', '15.0000', '2.0000', NULL, NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(154, NULL, NULL, 197, 'BXC0111A', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 1 x 120ml  R2 1 x   120ml  R4 1 x 5ml', NULL, '9.0000', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '36.0000', '4.0000', '2021-10-23', 'received', '9.0000', '9.0000', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(155, NULL, NULL, 198, 'BXC0741A', 'Biorex Transferrin (L.S) BX (R1: 2 x 20ml R2: 1 x   8ml);', NULL, '80.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '80.0000', '1.0000', '2021-10-24', 'received', '80.0000', '80.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(156, NULL, NULL, 199, 'BXC0123B', 'Boirex Urea (L.S) Modified Berthelot (R1: 3 x 100ml R2: 1 x   60ml  R4: 1 x 5ml)', NULL, '11.7500', '4.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '47.0000', '4.0000', '2021-10-24', 'received', '11.7500', '11.7500', '4.0000', NULL, NULL, 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(157, NULL, NULL, 200, 'LXCRP050', 'Biorex CRP Latex Kit (50T)', NULL, '25.0000', '6.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '6.0000', '2021-10-24', 'received', '25.0000', '25.0000', '6.0000', NULL, NULL, 21, '(Vol/Pk)', '6.0000', NULL, NULL, NULL, NULL),
(158, NULL, NULL, 201, 'BGAG1010', 'Biorex Atni Human Globilin AHG (Coomb\'s) 10ml', NULL, '15.0000', '10.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '10.0000', '2021-10-24', 'received', '15.0000', '15.0000', '10.0000', NULL, NULL, 21, '(Vol/Pk)', '10.0000', NULL, NULL, NULL, NULL),
(159, NULL, NULL, 202, 'BXE0811A', 'Biorex  Carcinoembryonic Antigen CEA ELISA (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(160, NULL, NULL, 203, 'BXE0831A', 'Biorex  Cortisol ELISA (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(161, NULL, NULL, 204, 'BXE0860A', 'Biorex  Estradiol ELISA (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(162, NULL, NULL, 205, 'BXE0622A', 'Biorex  Herpes Simplex Virus (HSV-  I/2), IgG ELISA (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(163, NULL, NULL, 206, 'BXE0621A', 'Biorex  Herpes Simplex Virus (HSV-  I/2), IgM ELISA (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(164, NULL, NULL, 208, 'BXE0861A', 'Biorex  Free PSA  (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(165, NULL, NULL, 209, 'BXE0641A', 'Biorex  IgE ELISA (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(166, NULL, NULL, 210, 'BXE0661A', 'Biorex  Progesterone ELISAB (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(167, NULL, NULL, 211, 'BXE0864A', 'Biorex  Troponin-I ELISA  (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(168, NULL, NULL, 212, 'BXE0960A', 'Biorex  Vitamin B12 ELISA  (96-Wells Plate)', NULL, '150.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '150.0000', '1.0000', '2021-10-24', 'received', '150.0000', '150.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(169, NULL, NULL, 188, 'WBC210', 'Hemocue WBC Analyzer incl. trafo', NULL, '362.0000', '1.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '362.0000', '1.0000', '2021-10-24', 'received', '362.0000', '362.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(170, NULL, NULL, 189, 'WBC210CH', 'Hemocue WBC Microcuvettes 4x40 pcs vial', NULL, '20.0000', '2.0000', 1, '0.0000', 1, '0', NULL, NULL, NULL, NULL, NULL, '40.0000', '2.0000', '2021-10-24', 'received', '20.0000', '20.0000', '2.0000', NULL, NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL);
INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `serial_no`, `manufacture_date`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(172, 5, NULL, 32, '405210', 'HemoCue HbA1c 501 Analyzer', NULL, '656.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', NULL, NULL, NULL, '656.0000', '1.0000', '2021-10-27', 'received', '656.0000', '656.0000', '1.0000', NULL, NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(173, NULL, NULL, 214, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-8.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(174, NULL, NULL, 224, 'test1234', 'Test Product added on 24_11_2021', 53, '10.0000', '100.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '1000.0000', '100.0000', '2021-11-24', 'received', '10.0000', NULL, '100.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(175, NULL, NULL, 226, '001', '001', 57, '100.0000', '111.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '11100.0000', '111.0000', '2021-11-25', 'received', '100.0000', NULL, '111.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(176, NULL, NULL, 228, '00012', 'Test Final', 58, '100.0000', '111.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '11100.0000', '100.0000', '2021-11-25', 'received', '100.0000', NULL, '111.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(177, NULL, NULL, 229, '', '', NULL, '0.0000', '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '-10.0000', '0000-00-00', 'received', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(179, 6, NULL, 263, '001', 'Product without warehouse', NULL, '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', NULL, NULL, '2021-11-29', '1000.0000', '10.0000', '2021-11-27', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, 21, '(Vol/Pk)', '10.0000', NULL, NULL, NULL, NULL),
(180, NULL, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '10.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '1000.0000', '5.0000', '2021-11-27', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(189, 7, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '11.0000', 1, '0.0000', 1, '0', '0', '0.0000', '900', '2020-01-01', '2021-11-29', '1100.0000', '11.0000', '2021-11-27', 'received', '100.0000', '100.0000', '11.0000', NULL, NULL, 23, 'Pks', '11.0000', NULL, NULL, NULL, NULL),
(191, 8, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9001', '2021-12-01', '2021-12-04', '100.0000', '1.0000', '2021-11-27', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(232, 23, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9001', '2021-12-01', '2021-12-31', '1000.0000', '5.0000', '2021-12-11', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL),
(224, 22, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1008', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-11', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(223, 21, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9002', '2021-11-30', '2021-12-31', '1000.0000', '42.0000', '2021-12-07', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL),
(219, 19, NULL, 28, '121804', 'HemoCue Hb-301 Analyzer', NULL, '196.9600', '15.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9001', '2021-11-30', '2021-12-16', '2954.4000', '15.0000', '2021-12-05', 'received', '196.9600', '196.9600', '15.0000', NULL, NULL, 4, NULL, '15.0000', NULL, NULL, NULL, NULL),
(222, 20, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9002', '2021-12-07', '2021-12-31', '1000.0000', '5.0000', '2021-12-07', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL),
(220, 19, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '100.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9002', '2021-11-30', '2021-12-30', '10000.0000', '79.0000', '2021-12-05', 'received', '100.0000', '100.0000', '100.0000', NULL, NULL, 23, 'Pks', '100.0000', NULL, NULL, NULL, NULL),
(233, 24, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '9001', '2021-12-01', '2021-12-31', '500.0000', '-14.0000', '2021-12-11', 'received', '100.0000', '100.0000', '5.0000', NULL, NULL, 23, 'Pks', '5.0000', NULL, NULL, NULL, NULL),
(234, NULL, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '0.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '2021-12-11', 'received', '100.0000', '100.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(236, 25, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '50.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1001', '2021-12-01', '2021-12-31', '5000.0000', '15.0000', '2021-12-11', 'received', '100.0000', '100.0000', '50.0000', NULL, NULL, 21, '(Vol/Pk)', '50.0000', NULL, NULL, NULL, NULL),
(285, 33, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', NULL, NULL, NULL, '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 283, 23, 'Pks', '-1.0000', NULL, NULL, NULL, NULL),
(284, 33, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', NULL, NULL, NULL, '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 282, 21, '(Vol/Pk)', '-1.0000', NULL, NULL, NULL, NULL),
(283, 32, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1005', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(282, 32, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1004', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(286, 34, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1010', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(287, 35, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', NULL, NULL, NULL, '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 286, 21, '(Vol/Pk)', '-1.0000', NULL, NULL, NULL, NULL),
(288, 36, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1014', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(289, 37, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', NULL, NULL, NULL, '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 288, 23, 'Pks', '-1.0000', NULL, NULL, NULL, NULL),
(290, 38, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1016', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(291, 39, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '85', '0000-00-00', '0000-00-00', '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 290, 23, 'Pks', '-1.0000', NULL, NULL, NULL, NULL),
(292, 40, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1017', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(293, 41, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1017', '0000-00-00', '0000-00-00', '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 292, 23, 'Pks', '-1.0000', NULL, NULL, NULL, NULL),
(294, 42, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1018', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(295, 43, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1018', '0000-00-00', '0000-00-00', '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 294, 21, '(Vol/Pk)', '-1.0000', NULL, NULL, NULL, NULL),
(296, 44, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1020', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(297, 45, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '-1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1020', '0000-00-00', '0000-00-00', '-100.0000', '-1.0000', '0000-00-00', 'received', '100.0000', '100.0000', NULL, NULL, 296, 21, '(Vol/Pk)', '-1.0000', NULL, NULL, NULL, NULL),
(311, 46, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1022', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(310, 46, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1021', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(312, 47, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1018', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-16', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 23, 'Pks', '1.0000', NULL, NULL, NULL, NULL),
(313, 48, NULL, 266, '1001', 'Test Product on 11_12_2021', NULL, '100.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '10012', '2021-12-01', '2021-12-31', '100.0000', '1.0000', '2021-12-18', 'received', '100.0000', '100.0000', '1.0000', NULL, NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(314, 49, NULL, 265, '0085', 'Product without warehouse', NULL, '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '10181', '2021-12-01', '2021-12-31', '1000.0000', '10.0000', '2021-12-18', 'received', '100.0000', '100.0000', '10.0000', NULL, NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes`
--

CREATE TABLE `sma_quotes` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_quotes`
--

INSERT INTO `sma_quotes` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `warehouse_id`, `biller_id`, `biller`, `note`, `internal_note`, `total`, `product_discount`, `order_discount`, `order_discount_id`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `supplier_id`, `supplier`, `hash`, `cgst`, `sgst`, `igst`) VALUES
(6, '2021-08-30 08:29:00', 'QUOTE2021/08/0001', 25, 'SOS Medical Center', 1, 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', '', NULL, '2368.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2368.0000', 'pending', 1, NULL, NULL, 'b2ae0a68cbf84111d0f2972af5acd553.jpg', 0, NULL, '37367311581b3e0a5f303ebf6ade8d0d3f0128f8e44efba628562c6c6853a750', NULL, NULL, NULL),
(7, '2021-09-03 13:33:00', 'QUOTE2021/09/0002', 27, 'St Joseph Catholic Hospital ', 1, 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', '', NULL, '15295.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '15295.0000', 'completed', 1, NULL, NULL, NULL, 0, NULL, 'c57b99014b849c082ec475eeb79630a2d4bc7cdb6ca77cbce6a53f7ef769115e', NULL, NULL, NULL),
(10, '2021-09-08 09:45:00', 'QUOTE2021/09/0005', 21, 'AHMEDIYAA CLINIC', 1, 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', '', NULL, '110.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '110.0000', 'completed', 1, NULL, NULL, NULL, 0, NULL, '029690c5b3bef4ba587b12741b3207c9b1b66890a000825bfd3ad399f4790dc5', NULL, NULL, NULL),
(9, '2021-09-06 14:15:00', 'QUOTE2021/09/0004', 29, 'Francis JANJAY Sarpee', 1, 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', '', NULL, '2748.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2748.0000', 'pending', 1, NULL, NULL, NULL, 0, NULL, '4dc7a429b1be7ecbbe20030cebb2949483573b2ecc96f463ff6c5e4ac77b3bac', NULL, NULL, NULL),
(11, '2021-10-01 11:13:00', 'QUOTE2021/10/0006', 31, 'PARTNERS IN HEALTH', 1, 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', '', NULL, '520.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '520.0000', 'completed', 1, NULL, NULL, NULL, 0, NULL, '9d1f2a45ced1d4f3d1a689c308bb37105c5774caf66900f8553365af0749919f', NULL, NULL, NULL),
(12, '2021-10-04 22:27:00', 'QUOTE2021/10/0007', 27, 'St Joseph Catholic Hospital ', 1, 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', '', NULL, '12297.0000', '0.0000', '0.0000', '', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '12297.0000', 'completed', 1, NULL, NULL, NULL, 0, NULL, 'd6d56da01b681da4ffc786060b0d99ce063821b391f680fb6540eb3f6daa5361', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_quote_items`
--

CREATE TABLE `sma_quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_quote_items`
--

INSERT INTO `sma_quote_items` (`id`, `quote_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(6, 6, 143, 'BXC0101B', 'Biorex Glucose (Monoliquid) GOD‐PAP  (6x125ml; 1x5ml)', 'standard', NULL, '140.0000', '140.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '420.0000', NULL, '140.0000', 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(7, 6, 128, 'BXC0111B', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 3x60ml; 3x60ml; 1x5ml', 'standard', NULL, '50.0000', '50.0000', '4.0000', 1, '0.0000', 1, '0', '0', '0.0000', '200.0000', NULL, '50.0000', 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(8, 6, 135, 'BXC0261B', 'Biorex Cholesterol (Monoliquid) CHOD‐PAP (6x60ml; 1x5ml)', 'standard', NULL, '95.0000', '95.0000', '4.0000', 1, '0.0000', 1, '0', '0', '0.0000', '380.0000', NULL, '95.0000', 21, '(Vol/Pk)', '4.0000', NULL, NULL, NULL, NULL),
(9, 6, 124, 'BXC0352B', 'Biorex Magnesium (Monoliquid) Xylidyl Blue (6x60ml; 1x5ml)', 'standard', NULL, '70.0000', '70.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '140.0000', NULL, '70.0000', 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(10, 6, 150, 'BXC0213D', 'Biorex ALT (GPT) (L.S) IFCC (2x100ml; 2x20ml)', 'standard', NULL, '92.0000', '92.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '184.0000', NULL, '92.0000', 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(11, 6, 132, 'BXC0603C', 'Biorex Uric Acid (Monoliquid) Uricase PAP (5x100ml; 1x5ml)', 'standard', NULL, '120.0000', '120.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '360.0000', NULL, '120.0000', 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL),
(12, 6, 153, 'BXC0431A', 'Biorex LDL Cholesterol (L.S) Direct (without Calibrator) 3x10ml; 1x10ml', 'standard', NULL, '250.0000', '250.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '500.0000', NULL, '250.0000', 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(13, 6, 154, 'BXC0203D', 'Biorex AST (GOT) (L.S) IFCC 2x100ml; 2x20ml', 'standard', NULL, '92.0000', '92.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '184.0000', NULL, '92.0000', 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(14, 7, 53, 'P04-03-101056-00', 'GENRUI  KT05DIL Diluent for 5-Part Hematology Analyzer  (20 L)', 'standard', NULL, '175.0000', '175.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1225.0000', NULL, '175.0000', 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL),
(15, 7, 68, 'P04-03-101074-00', 'GENRUI  KT05LH Lyse for 5-Part Hematology Analyzer (200 mL)', 'standard', NULL, '150.0000', '150.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1050.0000', NULL, '150.0000', 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL),
(16, 7, 67, 'P04-03-101072-00', 'GENRUI  KT05DIFF Lyse for 5-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1400.0000', NULL, '200.0000', 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL),
(17, 7, 37, 'YGCAVBT-01G', 'Serum Gel Clot Activator Vacuum Blood Collection Tube', 'standard', NULL, '35.0000', '35.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '210.0000', NULL, '35.0000', 4, NULL, '6.0000', NULL, NULL, NULL, NULL),
(18, 7, 117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', 'standard', NULL, '13.0000', '13.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '130.0000', NULL, '13.0000', 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL),
(19, 7, 157, 'RCAVT05', 'K3 EDTA Vacuum Blood Collection Tubes (Lavender Top)', 'standard', NULL, '26.0000', '26.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '520.0000', NULL, '26.0000', 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL),
(20, 7, 39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', 'standard', NULL, '30.0000', '30.0000', '50.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1500.0000', NULL, '30.0000', 4, NULL, '50.0000', NULL, NULL, NULL, NULL),
(21, 7, 115, 'IHC-302', 'Prime Gene HCV Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '40.0000', '40.0000', '25.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1000.0000', NULL, '40.0000', 22, 'Pcs / Pk', '25.0000', NULL, NULL, NULL, NULL),
(22, 7, 155, '1234', 'Laboratory Timer ', 'standard', NULL, '70.0000', '70.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '210.0000', NULL, '70.0000', 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(23, 7, 101, 'ITY-302', 'Prime Gene Typhoid IgG/IgM Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '88.0000', '88.0000', '25.0000', 1, '0.0000', 1, '0', '0', '0.0000', '2200.0000', NULL, '88.0000', 22, 'Pcs / Pk', '25.0000', NULL, NULL, NULL, NULL),
(24, 7, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '30.0000', 1, '0.0000', 1, '0', '0', '0.0000', '4500.0000', NULL, '150.0000', 22, 'Pcs / Pk', '30.0000', NULL, NULL, NULL, NULL),
(25, 7, 156, 'UC01', 'Urine Container (40 ml)', 'standard', NULL, '0.8000', '0.8000', '1000.0000', 1, '0.0000', 1, '0', '0', '0.0000', '800.0000', NULL, '0.8000', 22, 'Pcs / Pk', '1000.0000', NULL, NULL, NULL, NULL),
(26, 7, 159, 'MESR01', 'Manual ESR kits (100pcs/pk)', 'standard', NULL, '200.0000', '200.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '400.0000', NULL, '200.0000', 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(27, 7, 158, 'RCAVT02', 'Microtube Paedaitric K3 EDTA Vacuum Blood Collection Tubes', 'standard', NULL, '25.0000', '25.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '150.0000', NULL, '25.0000', 22, 'Pcs / Pk', '6.0000', NULL, NULL, NULL, NULL),
(32, 10, 128, 'BXC0111B', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 3x60ml; 3x60ml; 1x5ml', 'standard', NULL, '50.0000', '50.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '50.0000', NULL, '50.0000', 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(29, 9, 187, 'CL01', 'Colorant (100mL /Bottle)', 'standard', NULL, '48.0000', '48.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '48.0000', NULL, '48.0000', 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL),
(30, 9, 186, 'ZL01', 'Zip Lock Bag 100pcs/pk ', 'standard', NULL, '30.0000', '30.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '300.0000', NULL, '30.0000', 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL),
(31, 9, 185, 'cryt01', 'Cryo Tube (1-2 mL) 500pcs/ctn', 'standard', NULL, '300.0000', '300.0000', '8.0000', 1, '0.0000', 1, '0', '0', '0.0000', '2400.0000', NULL, '300.0000', 22, 'Pcs / Pk', '8.0000', NULL, NULL, NULL, NULL),
(33, 10, 140, 'BXC0312F', 'Biorex Human Assayed Control Abnormal (1x5ml)', 'standard', NULL, '60.0000', '60.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '60.0000', NULL, '60.0000', 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL),
(34, 11, 46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '520.0000', NULL, '104.0000', 4, NULL, '5.0000', NULL, NULL, NULL, NULL),
(35, 12, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '30.0000', 1, '0.0000', 1, '0', '0', '0.0000', '4500.0000', NULL, '150.0000', 22, 'Pcs / Pk', '30.0000', NULL, NULL, NULL, NULL),
(36, 12, 157, 'RCAVT05', 'K3 EDTA Vacuum Blood Collection Tubes (Lavender Top)', 'standard', NULL, '26.0000', '26.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '520.0000', NULL, '26.0000', 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL),
(37, 12, 37, 'YGCAVBT-01G', 'Serum Gel Clot Activator Vacuum Blood Collection Tube', 'standard', NULL, '35.0000', '35.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '350.0000', NULL, '35.0000', 4, NULL, '10.0000', NULL, NULL, NULL, NULL),
(38, 12, 103, 'IFIL-402', 'Prime Gene Filariasis IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', 'standard', NULL, '80.0000', '80.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '160.0000', NULL, '80.0000', 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL),
(39, 12, 117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', 'standard', NULL, '13.0000', '13.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '130.0000', NULL, '13.0000', 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL),
(40, 12, 106, 'IHP-302', 'Prime Gene H. pylori Antibody Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '80.0000', '80.0000', '50.0000', 1, '0.0000', 1, '0', '0', '0.0000', '4000.0000', NULL, '80.0000', 22, 'Pcs / Pk', '50.0000', NULL, NULL, NULL, NULL),
(41, 12, 39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', 'standard', NULL, '30.0000', '30.0000', '15.0000', 1, '0.0000', 1, '0', '0', '0.0000', '450.0000', NULL, '30.0000', 4, NULL, '15.0000', NULL, NULL, NULL, NULL),
(42, 12, 69, 'P04-03-101108-000', 'Genrui Probe Cleanser for 3-Parts  Haematology Analyzer (50mL)', 'standard', NULL, '25.0000', '25.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '125.0000', NULL, '25.0000', 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL),
(43, 12, 164, 'P14-03-105035-00', 'Genrui GE300-Electrolyte Reagents A & B (390.160 mL)', 'standard', NULL, '157.0000', '157.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '314.0000', NULL, '157.0000', 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL),
(44, 12, 168, 'P14-03-207002-00', 'Thermal Printer Paper for GE300 (80*35 mm)', 'standard', NULL, '10.0000', '10.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '30.0000', NULL, '10.0000', 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL),
(45, 12, 195, 'BGS01', 'Blood Grouping Sera (A, B, D)', 'standard', NULL, '24.0000', '24.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '168.0000', NULL, '24.0000', 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL),
(46, 12, 29, '1211801', 'HemoCue Hb-301 Microcuvette', 'standard', NULL, '50.0000', '50.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '250.0000', NULL, '50.0000', 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL),
(47, 12, 100, 'ISY-301', 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', 'standard', NULL, '35.0000', '35.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '700.0000', NULL, '35.0000', 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL),
(48, 12, 118, 'IHBSG-301', 'Prime Gene HBsAg Rapid Test Dipstick(S/P)50T/kit,3mm', 'standard', NULL, '30.0000', '30.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '600.0000', NULL, '30.0000', 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_returns`
--

CREATE TABLE `sma_returns` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT 0.0000,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT 0.0000,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_return_items`
--

CREATE TABLE `sma_return_items` (
  `id` int(11) NOT NULL,
  `return_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_sales`
--

CREATE TABLE `sma_sales` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT 0.0000,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `paid` decimal(25,4) DEFAULT 0.0000,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `api` tinyint(1) DEFAULT 0,
  `shop` tinyint(1) DEFAULT 0,
  `address_id` int(11) DEFAULT NULL,
  `reserve_id` int(11) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `manual_payment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `manual_payment`, `cgst`, `sgst`, `igst`, `payment_method`) VALUES
(12, '2021-08-20 06:48:00', 'SALE2021/08/0005', 20, 'Jackie Sighn Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '5092.8000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '5092.8000', 'completed', 'due', 0, NULL, 1, 1, '2021-08-19 13:52:48', 160, 0, '2500.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'd1026e1ade858ddbccb1715cc108e2533a4b073cc52c170f9b7d7af681738e26', NULL, NULL, NULL, NULL, NULL),
(13, '2021-08-20 07:16:00', 'SALE2021/08/0006', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '25.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '25.0000', 'completed', 'paid', 15, '2021-09-04', 1, 1, '2021-08-19 13:46:36', 1, 0, '25.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'e5ef2ab7aa09b0c6e1b75cba422600dbcc392949ec16c0978dcf15cd9aa17efb', NULL, NULL, NULL, NULL, NULL),
(14, '2021-08-19 09:04:00', 'SALE2021/08/0007', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '536.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '536.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 5, 0, '536.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'a5ca7782f0856ab46df22fd71d9da68abd3b230c121bf3aa1481b8a96a689e03', NULL, NULL, NULL, NULL, NULL),
(15, '2021-08-23 09:12:00', 'SALE2021/08/0008', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1210.0000', '0.0000', '370', '370.0000', '370.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '840.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 9, 0, '840.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'feaff298421d6d75121e8d112d0d077cd48e6c65ce9f00ed2d74236627743ac7', NULL, NULL, NULL, NULL, NULL),
(16, '2021-08-23 09:28:00', 'SALE2021/08/0009', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '640.0000', '0.0000', '160', '160.0000', '160.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '480.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 16, 0, '480.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'c6efd89003a0307dfa479ae602b163a731ae5e5349a014858468fda6605034fd', NULL, NULL, NULL, NULL, NULL),
(17, '2021-08-23 13:34:00', 'SALE2021/08/0010', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '60.0000', '0.0000', '10', '10.0000', '10.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '50.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 2, 0, '50.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'e1e0d3e653ed54d732bf77eebb595ee3e1206cd35b372c5074274dd24f2e5984', NULL, NULL, NULL, NULL, NULL),
(18, '2021-08-24 21:41:00', 'SALE2021/08/0011', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '2630.0000', '0.0000', '510', '510.0000', '510.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2120.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, '2120.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '2631b09dcfbaf9d6987fc1186752badfed088a81052a2c69c5a9cfd479970c7e', NULL, NULL, NULL, NULL, NULL),
(19, '2021-08-24 21:59:00', 'SALE2021/08/0012', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '3000.0000', '0.0000', '1000', '1000.0000', '1000.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2000.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 0, '2000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '9d0baaa16b02e87cce738e5422dd9fbab6096ab4d7ee68cee53bc2f02fd50a4f', NULL, NULL, NULL, NULL, NULL),
(20, '2021-08-25 14:14:00', 'SALE2021/08/0013', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '150.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '150.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 0, '150.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '64d1659390414eabe67135d2c006f4c6b3f9afda49bc2e37d325820f22daa602', NULL, NULL, NULL, NULL, NULL),
(21, '2021-08-25 17:21:00', 'SALE2021/08/0014', 23, 'Global Pharm Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1295.0000', '0.0000', '65', '65.0000', '65.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1230.0000', 'completed', 'due', 0, NULL, 1, NULL, NULL, 9, 0, '330.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '3c43d0a86d6097cbb1d6cf230f2c700f8017d11e544c0ca37f45487fc13d6212', NULL, NULL, NULL, NULL, NULL),
(22, '2021-08-26 21:42:00', 'SALE2021/08/0015', 24, 'Diagnomedics ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '161.5000', '0.0000', '11.5', '11.5000', '11.5000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '150.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 2, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '7728b7d405e3525e3288e7bf1b9f1b5423010028133cb5943b7f68988e0c3e26', NULL, NULL, NULL, NULL, NULL),
(23, '2021-09-02 09:03:00', 'SALE2021/09/0016', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '368.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '368.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, '368.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '7cb2370d3b23f24bfce6f59a57adf63c3fca1c7a43304461175887ea3316eb91', NULL, NULL, NULL, NULL, NULL),
(24, '2021-09-02 11:37:00', 'SALE2021/09/0017', 26, 'Tripple T Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '104.0000', '0.0000', '24', '24.0000', '24.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '80.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '081f41656929569b95962a6ed6e569b67135814ce49c6b441d47e97117072b3c', NULL, NULL, NULL, NULL, NULL),
(25, '2021-09-06 07:41:00', 'SALE2021/09/0018', 28, 'Biomedical Link', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '900.0000', '0.0000', '132', '132.0000', '132.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '768.0000', 'completed', 'paid', 1, '2021-09-07', 1, NULL, NULL, 3, 0, '768.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '02777c01e7e703d4f25fc4c02e8b2724e6d40681ad93313ae4026a3057035638', NULL, NULL, NULL, NULL, NULL),
(26, '2021-09-06 08:23:00', 'SALE2021/09/0019', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '240.0000', '0.0000', '60', '60.0000', '60.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '180.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, '180.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '4a51943a9651ff58fed99142c665f42f94ece1e9e2a9a5e161a11a2ca613aa56', NULL, NULL, NULL, NULL, NULL),
(27, '2021-09-07 05:20:00', 'SALE2021/09/0020', 27, 'St Joseph Catholic Hospital ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '13795.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '13795.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 1193, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '3378f0cf93ec900b378847b6358f9dab29aeae1c3d5dd2d7d3e583396ca0ce39', NULL, NULL, NULL, NULL, NULL),
(28, '2021-09-08 10:18:00', 'SALE2021/09/0021', 23, 'Global Pharm Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '575.0000', '0.0000', '105', '105.0000', '105.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '470.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, '470.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'c69220f752a2210b49e530c23207385207807769083f2ce187e74207a0547d67', NULL, NULL, NULL, NULL, NULL),
(29, '2021-09-08 10:44:00', 'SALE2021/09/0022', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '110.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '110.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 2, 0, '110.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '8d8d1aa635c6f2a17ad7b66c705a317714040e27a644f88000bdc0f08dada3f5', NULL, NULL, NULL, NULL, NULL),
(30, '2021-09-13 11:29:00', 'SALE2021/09/0023', 27, 'St Joseph Catholic Hospital ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '100.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 2, 0, '100.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'd6e99befd9860014522d9187bbbf6cd62c24f33fd7b0b0c99aa693e7bd50b508', NULL, NULL, NULL, NULL, NULL),
(31, '2021-09-13 14:38:00', 'SALE2021/09/0024', 21, 'AHMEDIYAA CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '195.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '195.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, '195.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '2edadc02fc03c5457117f8bd807bcfc19a84ae27bf40808d127dfe28c2a60c6d', NULL, NULL, NULL, NULL, NULL),
(32, '2021-09-19 09:23:00', 'SALE2021/09/0025', 21, 'AHMADIYYA MUSLIM CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1050.0000', '0.0000', '350', '350.0000', '350.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '700.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 7, 0, '700.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '71487118d2f10adf53087788af87c653bedbfc3589caec0205d938ff9a33e354', NULL, NULL, NULL, NULL, NULL),
(33, '2021-09-23 14:56:00', 'SALE2021/09/0026', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '312.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '312.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 3, 0, '312.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'c7d2b4545254e0253ea99112dbc40a9f1b0edc415f7f63a7312517577ef9eedb', NULL, NULL, NULL, NULL, NULL),
(34, '2021-09-28 17:24:00', 'SALE2021/09/0027', 21, 'AHMADIYYA MUSLIM CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1500.0000', '0.0000', '500', '500.0000', '500.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1000.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 10, 0, '1000.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '6f5585cdf112990bb0a84027cc48146822be6de448bc850db4acf5c9eb8f7fc0', NULL, NULL, NULL, NULL, NULL),
(35, '2021-09-28 17:26:00', 'SALE2021/09/0028', 23, 'Global Pharm Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '175.0000', '0.0000', '5', '5.0000', '5.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '170.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'fa1d83457d7ed227b4f7d59337eaaef62135b1744556f262e736949719ae19fb', NULL, NULL, NULL, NULL, NULL),
(36, '2021-10-04 10:03:00', 'SALE2021/10/0029', 23, 'Global Pharm Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '300.0000', '0.0000', '120', '120.0000', '120.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '180.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 3, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'a1342314d2069cc4e087a6340e69ab682db6a3532bab9c23396b6dd5dbc2a6f4', NULL, NULL, NULL, NULL, NULL),
(37, '2021-10-05 14:39:00', 'SALE2021/10/0030', 21, 'AHMADIYYA MUSLIM CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '800.0000', '0.0000', '320', '320.0000', '320.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '480.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 16, 0, '480.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'b1e82f6c216579beb813c264d5b3ffdd8de9bfc96136446023f8132dfc0cc238', NULL, NULL, NULL, NULL, NULL),
(38, '2021-10-07 12:15:00', 'SALE2021/10/0031', 27, 'St Joseph Catholic Hospital ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '7777.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '7777.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 129, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '77c1027841ec955e5d0baae1d9354b62dbdc432e0b894422eed8718a05ea08f2', NULL, NULL, NULL, NULL, NULL),
(39, '2021-10-08 08:06:00', 'SALE2021/10/0032', 32, 'Hope For Women ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '8375.0000', '0.0000', '375', '375.0000', '375.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '8000.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 3, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '75d3c67fb740847e73c6ef83d563f57728ba9dc99897396df5e13a37edfc31bd', NULL, NULL, NULL, NULL, NULL),
(40, '2021-10-12 15:34:00', 'SALE2021/10/0033', 27, 'St Joseph Catholic Hospital ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '50.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '50.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 4, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '809c5756a1c66c4038539a657cf5cf9b04c3651ea5858ef7cd4056e48153013e', NULL, NULL, NULL, NULL, NULL),
(41, '2021-10-15 13:36:00', 'SALE2021/10/0034', 31, 'PARTNERS IN HEALTH', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '520.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '520.0000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 5, 0, '520.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '97780cf0cdff7e3a34a8fd14d88a2ee074b3bf44f860ba32553b533f42dce72c', NULL, NULL, NULL, NULL, NULL),
(42, '2021-10-20 07:47:00', 'SALE2021/10/0035', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '520.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '520.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 5, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '93ccc728339474f3634b71266169f08b380d66d58414392425f6a8836ab8b402', NULL, NULL, NULL, NULL, NULL),
(43, '2021-10-20 19:57:00', 'SALE2021/10/0036', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '6375.0000', '0.0000', '2255', '2255.0000', '2255.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '4120.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 89, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '6c8108898f82836264c5317f423c364ce4ca69f0faaf1b37759be5753360ad4f', NULL, NULL, NULL, NULL, NULL),
(44, '2021-10-20 20:21:00', 'SALE2021/10/0037', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '2265.0000', '0.0000', '155', '155.0000', '155.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2110.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 45, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '8c0196e85efc62652ca30c04864eab979381fc6e5b6c2757a51bc494482af847', NULL, NULL, NULL, NULL, NULL),
(45, '2021-10-20 13:01:00', 'SALE2021/10/0038', 23, 'Global Pharm Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1050.0000', '0.0000', '160', '160.0000', '160.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '890.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 6, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'aaf5e0c7546bb405fceb6b14ff28ddcd1c6eea021779927ad1c696e943ff4201', NULL, NULL, NULL, NULL, NULL),
(46, '2021-10-20 13:11:00', 'SALE2021/10/0039', 23, 'Global Pharm Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1050.0000', '0.0000', '160', '160.0000', '160.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '890.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 6, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '090a9913a78a54c45a5d01cd2e0ed218f07b33ae7f2dca6c30b59df17b651ba1', NULL, NULL, NULL, NULL, NULL),
(47, '2021-10-22 08:12:00', 'SALE2021/10/0040', 21, 'AHMADIYYA MUSLIM CLINIC', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '975.0000', '0.0000', '75', '75.0000', '75.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '900.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 15, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'f30e9abe5477e47653fb13cab3b7f92baa0386af5d8bd1443c8df593162c0394', NULL, NULL, NULL, NULL, NULL),
(48, '2021-10-29 13:58:00', 'SALE2021/10/0041', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '264.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '264.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 2, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '8e78083bd845d364015af2ec1d4c0370553fa460a57851a9ea97c2a4a9f8043a', NULL, NULL, NULL, NULL, NULL),
(49, '2021-11-04 07:10:00', 'SALE2021/11/0042', 27, 'St Joseph Catholic Hospital ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '7593.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '7593.0000', 'completed', 'due', 0, NULL, 1, 1, '2021-11-03 12:59:21', 70, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '1a9fa9ede478a1f8d80e5c2022608299d736c1c830f1a9b71ff09a93b178362d', NULL, NULL, NULL, NULL, NULL),
(50, '2021-11-05 11:51:00', 'SALE2021/11/0043', 22, 'Clinilab Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '208.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '208.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 2, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '8b88cced83bd8b3eb3cb21aa29b606e24719141d833e3f7f64997bcea58875ec', NULL, NULL, NULL, NULL, NULL),
(51, '2021-11-24 19:42:00', 'test', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '220.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '220.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 11, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'a8c6debce5abc77ed8f469b2ea92d4c3defea31f71cf0ed815f6208102856768', NULL, NULL, NULL, NULL, NULL),
(52, '2021-11-24 19:57:00', 'test sale', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '100.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '100.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 10, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '1e30d222a91a3aa33322f762de60bebe20c079cda34131e3f5a618e146a33f6c', NULL, NULL, NULL, NULL, NULL),
(53, '2021-11-26 20:28:00', 'test sale on 27_11_2021', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '500.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 5, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '36dc95debf064cf3508cbd48991c67d7b520f9e80721b98671b7aa5c44a7759e', NULL, NULL, NULL, NULL, NULL),
(54, '2021-12-05 17:56:00', 'test', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1000.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 10, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '38909865d1f82ff9266b80d531427e844c4752d443d5445c53202d42c332390a', NULL, NULL, NULL, NULL, NULL),
(55, '2021-12-05 19:52:00', 'SALE2021/12/0044', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1000.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 10, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '2b9f4e4183bf96e174c3f488abebc55c8d361ffa6e583123986274d3dfb38f80', NULL, NULL, NULL, NULL, NULL),
(56, '2021-12-06 19:35:00', 'test sale on 07_12_2021', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '500.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '500.0000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 5, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, 'f795af015ed7478cc077f6fb93820642def9340c2d3cbc8fc8fd57237d8e8c39', NULL, NULL, NULL, NULL, NULL),
(57, '2021-12-11 11:01:00', 'test sale', 27, 'St Joseph Catholic Hospital ', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '&lt;p&gt;test&lt;&sol;p&gt;', '', '1000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '1000.0000', 'completed', 'due', 0, NULL, 1, 1, '2021-12-11 11:02:28', 10, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '374d8b8fdf4757d16c6e3fe3be660079483eaff9fbb92cd8fcaf8faca23d4de6', NULL, NULL, NULL, NULL, NULL),
(58, '2021-12-11 18:26:00', 'test sale dec', 25, 'SOS Medical Center', 6, 'NORTHLAND BIOMEDICAL SOLUTIONS', 1, '', '', '2000.0000', '0.0000', '', '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '2000.0000', 'completed', 'due', 0, NULL, 1, 1, '2021-12-11 18:27:57', 20, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, 0, 0, NULL, NULL, '70065835c100e1f01fbe3debe918830c927e6081ba6b3ac01a77c274d3bd71a6', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_items`
--

CREATE TABLE `sma_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(37, 12, 29, '1211801', 'HemoCue Hb-301 Microcuvette', 'standard', NULL, '31.8300', '31.8300', '160.0000', 1, '0.0000', 1, '0', '0', '0.0000', '5092.8000', '', '31.8300', NULL, 4, '4', '160.0000', NULL, NULL, NULL, NULL, NULL),
(36, 13, 41, '139123', 'HemoCue Cleaner', 'standard', NULL, '25.0000', '25.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '25.0000', '', '25.0000', NULL, 4, '4', '1.0000', NULL, NULL, NULL, NULL, NULL),
(38, 14, 42, 'MF-18', 'Flourecare Testosterone (T) Diagnostic Kit', 'standard', NULL, '120.0000', '120.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '120.0000', '20210304', '120.0000', NULL, 4, '4', '1.0000', NULL, NULL, NULL, NULL, NULL),
(39, 14, 43, 'MF-20', 'Flourecare Thyroid Stimulating Hormone (TSH) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '20210304', '104.0000', NULL, 4, '4', '1.0000', NULL, NULL, NULL, NULL, NULL),
(40, 14, 44, 'MF-24', 'Flourecare Free triiodothyonine (fT3) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '20210304', '104.0000', NULL, 4, '4', '1.0000', NULL, NULL, NULL, NULL, NULL),
(41, 14, 45, 'MF-25', 'Flourecare Free Thyroxine (fT4) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '20210304', '104.0000', NULL, 4, '4', '1.0000', NULL, NULL, NULL, NULL, NULL),
(42, 14, 46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '20210304', '104.0000', NULL, 4, '4', '1.0000', NULL, NULL, NULL, NULL, NULL),
(43, 15, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '750.0000', '', '150.0000', NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL, NULL),
(44, 15, 86, '02-01-2133', 'MNCHIP Renal Panel Lyophilized Kit[7]', 'standard', NULL, '100.0000', '100.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '200.0000', '', '100.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(45, 15, 83, '02-01-2134', 'MNCHIP Clinical Emergency Lyophilized Kit', 'standard', NULL, '130.0000', '130.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '260.0000', '', '130.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(46, 16, 29, '1211801', 'HemoCue Hb-301 Microcuvette', 'standard', NULL, '40.0000', '40.0000', '16.0000', 1, '0.0000', 1, '0', '0', '0.0000', '640.0000', '', '40.0000', NULL, 22, 'Pcs / Pk', '16.0000', NULL, NULL, NULL, NULL, NULL),
(47, 17, 39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', 'standard', NULL, '30.0000', '30.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '60.0000', '', '30.0000', NULL, NULL, NULL, '2.0000', NULL, NULL, NULL, NULL, NULL),
(48, 18, 32, '405210', 'HemoCue HbA1c 501 Analyzer', 'standard', NULL, '2500.0000', '2500.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '2500.0000', '', '2500.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(49, 18, 33, '4052100', 'HemoCue HbA1c 501, Test Cartridge', 'standard', NULL, '65.0000', '65.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '130.0000', '', '65.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(50, 19, 93, 'P12-70-000069-40', 'Genrui WP21A Semi Automated Chemistry Analyzer', 'standard', NULL, '3000.0000', '3000.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '3000.0000', '', '3000.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(51, 20, 94, 'GM123', 'Gram Stain Complete Sets', 'standard', NULL, '150.0000', '150.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '150.0000', '', '150.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(52, 21, 36, 'EGVBCT-01B', 'ESR Vacuum Blood Collection Tubes (Glass)', 'standard', NULL, '90.0000', '90.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '270.0000', '', '90.0000', NULL, NULL, NULL, '3.0000', NULL, NULL, NULL, NULL, NULL),
(53, 21, 95, 'FCHB01', 'Finecare HBA1C Catridge', 'standard', NULL, '150.0000', '150.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '300.0000', '', '150.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(54, 21, 52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 'standard', NULL, '175.0000', '175.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '525.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '3.0000', NULL, NULL, NULL, NULL, NULL),
(55, 21, 81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '200.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(56, 22, 102, 'IHB-355', 'Prime Gene HBV Combo Rapid Test Cassette(S/P)25T/kit', 'standard', NULL, '80.7500', '80.7500', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '161.5000', '', '80.7500', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(57, 23, 43, 'MF-20', 'Flourecare Thyroid Stimulating Hormone (TSH) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(58, 23, 63, 'MF-12', 'Flourecare Ferritin (FERR) Diagnostic Kit', 'standard', NULL, '160.0000', '160.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '160.0000', '', '160.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(59, 23, 47, 'MF-28', 'Flourecare C-Reactive Protein (CRP) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(60, 24, 46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(61, 25, 182, 'HT404', 'HemoTypeSC Electrophoresis Kits (50 pcs/pk)', 'standard', NULL, '300.0000', '300.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '900.0000', '', '300.0000', NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL, NULL),
(62, 26, 106, 'IHP-302', 'Prime Gene H. pylori Antibody Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '80.0000', '80.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '240.0000', '', '80.0000', NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL, NULL),
(63, 27, 158, 'RCAVT02', 'Microtube Paedaitric K3 EDTA Vacuum Blood Collection Tubes', 'standard', NULL, '25.0000', '25.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '150.0000', '', '25.0000', NULL, 22, 'Pcs / Pk', '6.0000', NULL, NULL, NULL, NULL, NULL),
(64, 27, 159, 'MESR01', 'Manual ESR kits (100pcs/pk)', 'standard', NULL, '200.0000', '200.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '400.0000', '', '200.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(65, 27, 156, 'UC01', 'Urine Container (40 ml)', 'standard', NULL, '0.8000', '0.8000', '1000.0000', 1, '0.0000', 1, '0', '0', '0.0000', '800.0000', '', '0.8000', NULL, 22, 'Pcs / Pk', '1000.0000', NULL, NULL, NULL, NULL, NULL),
(66, 27, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '30.0000', 1, '0.0000', 1, '0', '0', '0.0000', '4500.0000', '', '150.0000', NULL, 22, 'Pcs / Pk', '30.0000', NULL, NULL, NULL, NULL, NULL),
(67, 27, 155, '1234', 'Laboratory Timer ', 'standard', NULL, '70.0000', '70.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '210.0000', '', '70.0000', NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL, NULL),
(68, 27, 115, 'IHC-302', 'Prime Gene HCV Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '40.0000', '40.0000', '25.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1000.0000', '', '40.0000', NULL, 22, 'Pcs / Pk', '25.0000', NULL, NULL, NULL, NULL, NULL),
(69, 27, 39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', 'standard', NULL, '30.0000', '30.0000', '50.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1500.0000', '', '30.0000', NULL, NULL, NULL, '50.0000', NULL, NULL, NULL, NULL, NULL),
(70, 27, 157, 'RCAVT05', 'K3 EDTA Vacuum Blood Collection Tubes (Lavender Top)', 'standard', NULL, '26.0000', '26.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '520.0000', '', '26.0000', NULL, 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL, NULL),
(71, 27, 117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', 'standard', NULL, '13.0000', '13.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '130.0000', '', '13.0000', NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL, NULL),
(72, 27, 37, 'YGCAVBT-01G', 'Serum Gel Clot Activator Vacuum Blood Collection Tube', 'standard', NULL, '35.0000', '35.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '210.0000', '', '35.0000', NULL, NULL, NULL, '6.0000', NULL, NULL, NULL, NULL, NULL),
(73, 27, 67, 'P04-03-101072-00', 'GENRUI  KT05DIFF Lyse for 5-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1400.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL, NULL),
(74, 27, 68, 'P04-03-101074-00', 'GENRUI  KT05LH Lyse for 5-Part Hematology Analyzer (200 mL)', 'standard', NULL, '150.0000', '150.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1050.0000', '', '150.0000', NULL, 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL, NULL),
(75, 27, 53, 'P04-03-101056-00', 'GENRUI  KT05DIL Diluent for 5-Part Hematology Analyzer  (20 L)', 'standard', NULL, '175.0000', '175.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1225.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL, NULL),
(76, 27, 100, 'ISY-301', 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', 'standard', NULL, '35.0000', '35.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '700.0000', '', '35.0000', NULL, 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL, NULL),
(77, 28, 52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 'standard', NULL, '175.0000', '175.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '175.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(78, 28, 81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '400.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(79, 29, 140, 'BXC0312F', 'Biorex Human Assayed Control Abnormal (1x5ml)', 'standard', NULL, '60.0000', '60.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '60.0000', '', '60.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(80, 29, 128, 'BXC0111B', 'Biorex Creatinine (L.S) Jaffe without Deproteinization 3x60ml; 3x60ml; 1x5ml', 'standard', NULL, '50.0000', '50.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '50.0000', '', '50.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(81, 30, 40, 'AGL-ST10-B', 'AllChek TM Glucose Meter', 'standard', NULL, '50.0000', '50.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '100.0000', '', '50.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(82, 31, 33, '4052100', 'HemoCue HbA1c 501, Test Cartridge', 'standard', NULL, '65.0000', '65.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '195.0000', '', '65.0000', NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL, NULL),
(83, 32, 130, 'BXC0122A', 'Boirex Urea (L.S) Modified Berthelot (2x125ml; 1x50ml; 2x6.5ml; 1x5ml)', 'standard', NULL, '50.0000', '50.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '50.0000', '', '50.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(84, 32, 153, 'BXC0431A', 'Biorex HDL Cholesterol (L.S) Direct (without Calibrator) 3x10ml; 1x10ml', 'standard', NULL, '250.0000', '250.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '250.0000', '', '250.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(85, 32, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '750.0000', '', '150.0000', NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL, NULL),
(86, 33, 47, 'MF-28', 'Flourecare C-Reactive Protein (CRP) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '208.0000', '', '104.0000', NULL, NULL, NULL, '2.0000', NULL, NULL, NULL, NULL, NULL),
(87, 33, 46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(88, 34, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1500.0000', '', '150.0000', NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL, NULL),
(89, 35, 52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 'standard', NULL, '175.0000', '175.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '175.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(90, 36, 147, 'BXC0321L', 'Biorex Calibration Serum ', 'standard', NULL, '180.0000', '180.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '180.0000', '', '180.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(91, 36, 139, 'BXC0312E', 'Biorex Human Assayed Control Normal (1x5ml)', 'standard', NULL, '60.0000', '60.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '60.0000', '', '60.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(92, 36, 140, 'BXC0312F', 'Biorex Human Assayed Control Abnormal (1x5ml)', 'standard', NULL, '60.0000', '60.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '60.0000', '', '60.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(93, 37, 29, '1211801', 'HemoCue Hb-301 Microcuvette', 'standard', NULL, '50.0000', '50.0000', '16.0000', 1, '0.0000', 1, '0', '0', '0.0000', '800.0000', '', '50.0000', NULL, 22, 'Pcs / Pk', '16.0000', NULL, NULL, NULL, NULL, NULL),
(94, 38, 118, 'IHBSG-301', 'Prime Gene HBsAg Rapid Test Dipstick(S/P)50T/kit,3mm', 'standard', NULL, '30.0000', '30.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '600.0000', '', '30.0000', NULL, 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL, NULL),
(95, 38, 100, 'ISY-301', 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', 'standard', NULL, '35.0000', '35.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '700.0000', '', '35.0000', NULL, 22, 'Pcs / Pk', '20.0000', NULL, NULL, NULL, NULL, NULL),
(96, 38, 29, '1211801', 'HemoCue Hb-301 Microcuvette', 'standard', NULL, '50.0000', '50.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '250.0000', '', '50.0000', NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL, NULL),
(97, 38, 195, 'BGS01', 'Blood Grouping Sera (A, B, D)', 'standard', NULL, '24.0000', '24.0000', '7.0000', 1, '0.0000', 1, '0', '0', '0.0000', '168.0000', '', '24.0000', NULL, 21, '(Vol/Pk)', '7.0000', NULL, NULL, NULL, NULL, NULL),
(98, 38, 168, 'P14-03-207002-00', 'Thermal Printer Paper for GE300 (80*35 mm)', 'standard', NULL, '10.0000', '10.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '30.0000', '', '10.0000', NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL, NULL),
(99, 38, 164, 'P14-03-105035-00', 'Genrui GE300-Electrolyte Reagents A & B (390.160 mL)', 'standard', NULL, '157.0000', '157.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '314.0000', '', '157.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(100, 38, 69, 'P04-03-101108-000', 'Genrui Probe Cleanser for 3-Parts  Haematology Analyzer (50mL)', 'standard', NULL, '25.0000', '25.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '125.0000', '', '25.0000', NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL, NULL),
(101, 38, 39, 'AGL-550', 'AGL-550 AT TM Glucose Test Strips (50T)', 'standard', NULL, '30.0000', '30.0000', '15.0000', 1, '0.0000', 1, '0', '0', '0.0000', '450.0000', '', '30.0000', NULL, NULL, NULL, '15.0000', NULL, NULL, NULL, NULL, NULL),
(102, 38, 117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', 'standard', NULL, '13.0000', '13.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '130.0000', '', '13.0000', NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL, NULL),
(103, 38, 103, 'IFIL-402', 'Prime Gene Filariasis IgG/IgM Rapid Test Cassette(WB/S/P)40T/kit', 'standard', NULL, '80.0000', '80.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '160.0000', '', '80.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(104, 38, 37, 'YGCAVBT-01G', 'Serum Gel Clot Activator Vacuum Blood Collection Tube', 'standard', NULL, '35.0000', '35.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '350.0000', '', '35.0000', NULL, NULL, NULL, '10.0000', NULL, NULL, NULL, NULL, NULL),
(105, 38, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '30.0000', 1, '0.0000', 1, '0', '0', '0.0000', '4500.0000', '', '150.0000', NULL, 22, 'Pcs / Pk', '30.0000', NULL, NULL, NULL, NULL, NULL),
(106, 39, 194, 'P05-50-000114-00', 'GENRUI  KT-60 3-Part Auto Hematology Analyzer', 'standard', NULL, '8000.0000', '8000.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '8000.0000', '', '8000.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(107, 39, 52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 'standard', NULL, '175.0000', '175.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '175.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(108, 39, 81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '200.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '1.0000', NULL, NULL, NULL, NULL, NULL),
(109, 40, 120, 'FHC-101', 'Prime Gene Pregnancy (hCG) Rapid Test Dipstick(Urine)SOT/kit', 'standard', NULL, '12.5000', '12.5000', '4.0000', 1, '0.0000', 1, '0', '0', '0.0000', '50.0000', '', '12.5000', NULL, 22, 'Pcs / Pk', '4.0000', NULL, NULL, NULL, NULL, NULL),
(110, 41, 46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '520.0000', '', '104.0000', NULL, NULL, NULL, '5.0000', NULL, NULL, NULL, NULL, NULL),
(111, 42, 46, 'MF-37', 'Flourecare Glycosylated Hemoglobin (HbA1c) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(112, 42, 47, 'MF-28', 'Flourecare C-Reactive Protein (CRP) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '208.0000', '', '104.0000', NULL, NULL, NULL, '2.0000', NULL, NULL, NULL, NULL, NULL),
(113, 42, 43, 'MF-20', 'Flourecare Thyroid Stimulating Hormone (TSH) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(114, 42, 51, 'MF-14', 'Flourecare Beta Human Chorionic Gonadotropin (β- HCG) Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(115, 43, 106, 'IHP-302', 'Prime Gene H. pylori Antibody Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '80.0000', '80.0000', '37.0000', 1, '0.0000', 1, '0', '0', '0.0000', '2960.0000', '', '80.0000', NULL, 22, 'Pcs / Pk', '37.0000', NULL, NULL, NULL, NULL, NULL),
(116, 43, 99, 'ICH-502', 'Prime Gene Chlamydia Rapid Test Cassette(Swab/Urine)20T/kit', 'standard', NULL, '75.0000', '75.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '375.0000', '', '75.0000', NULL, 22, 'Pcs / Pk', '5.0000', NULL, NULL, NULL, NULL, NULL),
(117, 43, 101, 'ITY-302', 'Prime Gene Typhoid IgG/IgM Rapid Test Cassette(S/P)40T/kit', 'standard', NULL, '88.0000', '88.0000', '25.0000', 1, '0.0000', 1, '0', '0', '0.0000', '2200.0000', '', '88.0000', NULL, 22, 'Pcs / Pk', '25.0000', NULL, NULL, NULL, NULL, NULL),
(118, 43, 118, 'IHBSG-301', 'Prime Gene HBsAg Rapid Test Dipstick(S/P)50T/kit,3mm', 'standard', NULL, '30.0000', '30.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '300.0000', '', '30.0000', NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL, NULL),
(119, 43, 100, 'ISY-301', 'Prime Gene Syphilis Rapid Test Dipstick（S/P）50T/kit,3mm', 'standard', NULL, '35.0000', '35.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '350.0000', '', '35.0000', NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL, NULL),
(120, 43, 102, 'IHB-355', 'Prime Gene HBV Combo Rapid Test Cassette(S/P)25T/kit', 'standard', NULL, '95.0000', '95.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '190.0000', '', '95.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(121, 44, 161, 'FEBSOH05', 'Widal Reagents Salmonella typhi H, typhi O & 0.5ml Positive Control (2x5ml; 1x0.5ml)', 'standard', NULL, '20.0000', '20.0000', '30.0000', 1, '0.0000', 1, '0', '0', '0.0000', '600.0000', '', '20.0000', NULL, 21, '(Vol/Pk)', '30.0000', NULL, NULL, NULL, NULL, NULL),
(122, 44, 114, 'ITB-402', 'Prime Gene Tuberculosis (TB) Rapid Test Cassette(WB/S/P),40T/kit', 'standard', NULL, '120.0000', '120.0000', '3.0000', 1, '0.0000', 1, '0', '0', '0.0000', '360.0000', '', '120.0000', NULL, 22, 'Pcs / Pk', '3.0000', NULL, NULL, NULL, NULL, NULL),
(123, 44, 152, 'LXRF0050', 'Biorex RF Latex Kit -(50T)', 'standard', NULL, '80.0000', '80.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '160.0000', '', '80.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(124, 44, 195, 'BGS01', 'Blood Grouping Sera (A, B, D)', 'standard', NULL, '25.0000', '25.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '125.0000', '', '25.0000', NULL, 21, '(Vol/Pk)', '5.0000', NULL, NULL, NULL, NULL, NULL),
(125, 44, 190, 'TPSA01', 'Total PSA ELISA kit', 'standard', NULL, '220.0000', '220.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '440.0000', '', '220.0000', NULL, 22, 'Pcs / Pk', '2.0000', NULL, NULL, NULL, NULL, NULL),
(126, 44, 191, 'TSH01', 'TSH ELISA kit', 'standard', NULL, '180.0000', '180.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '180.0000', '', '180.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(127, 44, 193, 'FT401', 'Free T4 ELISA kit', 'standard', NULL, '200.0000', '200.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '200.0000', '', '200.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(128, 44, 192, 'FT301', 'Free T3 ELISA kit', 'standard', NULL, '200.0000', '200.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '200.0000', '', '200.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(129, 45, 95, 'FCHB01', 'Finecare HBA1C Catridge', 'standard', NULL, '150.0000', '150.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '300.0000', '', '150.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(130, 45, 52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 'standard', NULL, '175.0000', '175.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '350.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(131, 45, 81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '400.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(132, 46, 81, 'P04-03-101139-00', 'GENRUI KT03A Lyse Solution for 3-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '400.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(133, 46, 95, 'FCHB01', 'Finecare HBA1C Catridge', 'standard', NULL, '150.0000', '150.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '300.0000', '', '150.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(134, 46, 52, 'P04-03-101138-00', 'Genrui KT03A  Diluent  for 3-Parts  Haematology Analyzer (20L)', 'standard', NULL, '175.0000', '175.0000', '2.0000', 1, '0.0000', 1, '0', '0', '0.0000', '350.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '2.0000', NULL, NULL, NULL, NULL, NULL),
(135, 47, 33, '4052100', 'HemoCue HbA1c 501, Test Cartridge', 'standard', NULL, '65.0000', '65.0000', '15.0000', 1, '0.0000', 1, '0', '0', '0.0000', '975.0000', '', '65.0000', NULL, 22, 'Pcs / Pk', '15.0000', NULL, NULL, NULL, NULL, NULL),
(136, 48, 43, 'MF-20', 'Flourecare Thyroid Stimulating Hormone (TSH) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(137, 48, 54, 'MF-31', 'Floure Cardiac Troponin I (cTnI) Diagnostic Kit', 'standard', NULL, '160.0000', '160.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '160.0000', '', '160.0000', NULL, 22, 'Pcs / Pk', '1.0000', NULL, NULL, NULL, NULL, NULL),
(149, 49, 117, 'U031-10', 'Prime Gene Urinalysis Reagent Dipsticks - 10 parameters(Urine)', 'standard', NULL, '13.0000', '13.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '78.0000', '', '13.0000', NULL, 22, 'Pcs / Pk', '6.0000', NULL, NULL, NULL, NULL, NULL),
(148, 49, 67, 'P04-03-101072-00', 'GENRUI  KT05DIFF Lyse for 5-Part Hematology Analyzer (500 mL)', 'standard', NULL, '200.0000', '200.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1200.0000', '', '200.0000', NULL, 21, '(Vol/Pk)', '6.0000', NULL, NULL, NULL, NULL, NULL),
(147, 49, 180, 'PT-01', 'Yellow Pipette Tips (1 - 200 uL)', 'standard', NULL, '120.0000', '120.0000', '4.0000', 1, '0.0000', 1, '0', '0', '0.0000', '480.0000', '', '120.0000', NULL, 22, 'Pcs / Pk', '4.0000', NULL, NULL, NULL, NULL, NULL),
(144, 49, 53, 'P04-03-101056-00', 'GENRUI  KT05DIL Diluent for 5-Part Hematology Analyzer  (20 L)', 'standard', NULL, '175.0000', '175.0000', '6.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1050.0000', '', '175.0000', NULL, 21, '(Vol/Pk)', '6.0000', NULL, NULL, NULL, NULL, NULL),
(145, 49, 82, '02-01-2135', 'MNCHIP General Chemistry I Lyophilized Kit[13]', 'standard', NULL, '150.0000', '150.0000', '30.0000', 1, '0.0000', 1, '0', '0', '0.0000', '4500.0000', '', '150.0000', NULL, 22, 'Pcs / Pk', '30.0000', NULL, NULL, NULL, NULL, NULL),
(146, 49, 120, 'FHC-101', 'Prime Gene Pregnancy (hCG) Rapid Test Dipstick(Urine)SOT/kit', 'standard', NULL, '12.5000', '12.5000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '125.0000', '', '12.5000', NULL, 22, 'Pcs / Pk', '10.0000', NULL, NULL, NULL, NULL, NULL),
(150, 49, 214, 'ML012', 'Allele Malaria Cassettes (25T/PK)', 'standard', NULL, '20.0000', '20.0000', '8.0000', 1, '0.0000', 1, '0', '0', '0.0000', '160.0000', '', '20.0000', NULL, 22, 'Pcs / Pk', '8.0000', NULL, NULL, NULL, NULL, NULL),
(151, 50, 44, 'MF-24', 'Flourecare Free triiodothyonine (fT3) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(152, 50, 45, 'MF-25', 'Flourecare Free Thyroxine (fT4) Diagnostic Kit', 'standard', NULL, '104.0000', '104.0000', '1.0000', 1, '0.0000', 1, '0', '0', '0.0000', '104.0000', '', '104.0000', NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, NULL, NULL),
(153, 51, 228, '00012', 'Test Final', 'standard', 58, '20.0000', '20.0000', '11.0000', 1, '0.0000', 1, '0', '0', '0.0000', '220.0000', '011', '10.0000', NULL, 21, '(Vol/Pk)', '11.0000', NULL, NULL, NULL, NULL, NULL),
(154, 52, 229, '0085', 'Product without warehouse', 'standard', NULL, '10.0000', '10.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '100.0000', '', '10.0000', NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL, NULL),
(155, 53, 265, '0085', 'Product without warehouse', 'standard', NULL, '100.0000', '100.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '500.0000', '', '100.0000', NULL, 23, 'Pks', '5.0000', NULL, NULL, NULL, NULL, NULL),
(156, 54, 265, '0085', 'Product without warehouse', 'standard', NULL, '100.0000', '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1000.0000', '9002', '100.0000', NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL, NULL),
(157, 55, 265, '0085', 'Product without warehouse', 'standard', NULL, '100.0000', '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1000.0000', '9002', '100.0000', NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL, NULL),
(158, 56, 265, '0085', 'Product without warehouse', 'standard', NULL, '100.0000', '100.0000', '5.0000', 1, '0.0000', 1, '0', '0', '0.0000', '500.0000', '9002', '100.0000', NULL, 23, 'Pks', '5.0000', NULL, NULL, NULL, NULL, NULL),
(160, 57, 265, '0085', 'Product without warehouse', 'standard', NULL, '100.0000', '100.0000', '10.0000', 1, '0.0000', 1, '0', '0', '0.0000', '1000.0000', '9001', '100.0000', NULL, 23, 'Pks', '10.0000', NULL, NULL, NULL, NULL, NULL),
(162, 58, 266, '1001', 'Test Product on 11_12_2021', 'standard', NULL, '100.0000', '100.0000', '20.0000', 1, '0.0000', 1, '0', '0', '0.0000', '2000.0000', '1001', '100.0000', NULL, 21, '(Vol/Pk)', '20.0000', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sessions`
--

CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bvs7ulr18ljs2cmhtp8fjfhikt174t8s', '::1', 1640447673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434373637333b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('35bfo4orgj0og0pgh33dvqauf8cev6mi', '::1', 1640449921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434393932313b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('3b82t8478olqg52sr3v2hi0o2aj2uufn', '::1', 1640455801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435353830313b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('v9hlm517niauuoonrabl4d1brpnlur41', '::1', 1640456156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435363135363b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('jm4jrbr6d3ur0umo5d52tq4dkgj8f61e', '::1', 1640456635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435363633353b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('jirvem6ugls02m683sbkc0rtljn93mj6', '::1', 1640457007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435373030373b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7hf8cftn12uancesje8fad38d8frfrph', '::1', 1640457351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435373335313b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('4e6ppfrsu8jm8l2gpf1hs7u27asdkmt6', '::1', 1640458497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435383439373b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('o4hadenkrfj489jlou211kmjj4hbog4v', '::1', 1640459109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435393130393b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('rm5k93u1h5rvil55b26opvu14pp9vc1p', '::1', 1640458505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435383530343b),
('ch2gggurec6m069fh2equdrm0n7d89pt', '::1', 1640460594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303436303539343b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('vmo194rfnudq3g035gsovuccovkjrgiq', '::1', 1640447004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434373030343b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('b2ne4ev85prqlkgv1pm71fbtl3okp3if', '::1', 1640446414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434363431343b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('nhaeo4kgho4agmok07auh77u56ediin0', '::1', 1640446077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434363037373b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('r1icmfghbbokii2deeiedfpb39pr6jhg', '::1', 1640443934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434333933343b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('jncoghdu42ks5sgcc7cto377ar23rllj', '::1', 1640443521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434333532313b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('3tf0s4k9unvhtb763h2855q5efa2khs9', '::1', 1640441313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434313331333b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('4660bgvo345gjdk5kb3upnmnpt6rhkgg', '::1', 1640440925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303434303932353b7265717565737465645f706167657c733a33353a2261646d696e2f70726f64756374732f7175616e746974795f61646a7573746d656e7473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c733a3132343a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6c6f63616c686f73742f6e62732f61646d696e2f65717569706d656e742f6170706c69636174696f6e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('ekf292buvuseiom7viek7efp2goq6jur', '::1', 1640460747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303436303734373b),
('skjplad8im732ktou6sfv2dgvnhmmlbc', '::1', 1640461130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303436303930353b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('0iicf41h77lg56hl7e0q1nbagpdaildt', '::1', 1640459166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303435393136363b),
('cjpc3hdrl71i6g3p3k08h18m3h2c98pf', '::1', 1640460905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303436303930353b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363430333732343236223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b);

-- --------------------------------------------------------

--
-- Table structure for table `sma_settings`
--

CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT 0,
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT 0,
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT 0,
  `restrict_user` tinyint(4) NOT NULL DEFAULT 0,
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT 0,
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT 0,
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `captcha` tinyint(1) NOT NULL DEFAULT 1,
  `reference_format` tinyint(1) NOT NULL DEFAULT 1,
  `racks` tinyint(1) DEFAULT 0,
  `attributes` tinyint(1) NOT NULL DEFAULT 0,
  `product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `decimals` tinyint(2) NOT NULL DEFAULT 2,
  `qty_decimals` tinyint(2) NOT NULL DEFAULT 2,
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT 0,
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT 0,
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT 0,
  `sac` tinyint(1) DEFAULT 0,
  `display_all_products` tinyint(1) DEFAULT 0,
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT 0,
  `barcode_separator` varchar(2) NOT NULL DEFAULT '-',
  `set_focus` tinyint(1) NOT NULL DEFAULT 0,
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT 1,
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT 90,
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT 0,
  `state` varchar(100) DEFAULT NULL,
  `pdf_lib` varchar(20) DEFAULT 'dompdf'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `state`, `pdf_lib`) VALUES
(1, 'imageedit_20_89397389.png', 'imageedit_20_893973891.png', 'Northland Biomedical Solutions', 'english', 1, 2, 'USD', 1, 10, '3.4.25', 1, 5, 'SALE', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 1, 1, 1, 1, 1, 1, 0, 'Asia/Kolkata', 800, 800, 150, 150, 1, 0, 0, 0, NULL, 'mail', '/usr/sbin/sendmail', 'pop.gmail.com', 'contact@sma.tecdiary.org', '123456', '25', NULL, NULL, 1, 'contact@ubiniumtechsol.com', 0, 4, 1, 0, 2, 1, 1, 1, 2, 2, '.', ',', 0, 6, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 2, '$', 0, '-', 0, 1, 1, 'POP', 90, '', 1, 0, 'AN', 'dompdf');

-- --------------------------------------------------------

--
-- Table structure for table `sma_shop_settings`
--

CREATE TABLE `sma_shop_settings` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(55) NOT NULL,
  `description` varchar(160) NOT NULL,
  `warehouse` int(11) NOT NULL,
  `biller` int(11) NOT NULL,
  `about_link` varchar(55) NOT NULL,
  `terms_link` varchar(55) NOT NULL,
  `privacy_link` varchar(55) NOT NULL,
  `contact_link` varchar(55) NOT NULL,
  `payment_text` varchar(100) NOT NULL,
  `follow_text` varchar(100) NOT NULL,
  `facebook` varchar(55) NOT NULL,
  `twitter` varchar(55) DEFAULT NULL,
  `google_plus` varchar(55) DEFAULT NULL,
  `instagram` varchar(55) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `cookie_message` varchar(180) DEFAULT NULL,
  `cookie_link` varchar(55) DEFAULT NULL,
  `slider` text DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `logo` varchar(55) DEFAULT NULL,
  `bank_details` varchar(255) DEFAULT NULL,
  `products_page` tinyint(1) DEFAULT NULL,
  `hide0` tinyint(1) DEFAULT 0,
  `products_description` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT 0,
  `hide_price` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_shop_settings`
--

INSERT INTO `sma_shop_settings` (`shop_id`, `shop_name`, `description`, `warehouse`, `biller`, `about_link`, `terms_link`, `privacy_link`, `contact_link`, `payment_text`, `follow_text`, `facebook`, `twitter`, `google_plus`, `instagram`, `phone`, `email`, `cookie_message`, `cookie_link`, `slider`, `shipping`, `purchase_code`, `envato_username`, `version`, `logo`, `bank_details`, `products_page`, `hide0`, `products_description`, `private`, `hide_price`) VALUES
(1, 'U POS E COMMERCE', 'E Commerce POS', 1, 6, '', '', '', '', 'Cash or Cheque', 'Please click the link below to follow us on social media.', 'http://facebook.com/ubinium', 'http://twitter.com/ubinium', '', '', '+231775508118', 'biomedicalsolutions@gmail.com', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"s1.jpg\",\"link\":\"http:\\/\\/ci.dev\\/sma\\/shop\\/products\",\"caption\":\"\"},{\"image\":\"s2.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"s3.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '3.4.25', 'sma-shop.png', '', 0, 0, 'Jewelry', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_skrill`
--

CREATE TABLE `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_sms_settings`
--

CREATE TABLE `sma_sms_settings` (
  `id` int(11) NOT NULL,
  `auto_send` tinyint(1) DEFAULT NULL,
  `config` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sms_settings`
--

INSERT INTO `sma_sms_settings` (`id`, `auto_send`, `config`) VALUES
(1, NULL, '{\"gateway\":\"Log\",\"Log\":{}');

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_counts`
--

CREATE TABLE `sma_stock_counts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `products` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `differences` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_stock_counts`
--

INSERT INTO `sma_stock_counts` (`id`, `date`, `reference_no`, `warehouse_id`, `type`, `initial_file`, `final_file`, `brands`, `brand_names`, `categories`, `category_names`, `note`, `products`, `rows`, `differences`, `matches`, `missing`, `created_by`, `updated_by`, `updated_at`, `finalized`) VALUES
(1, '2021-01-12 13:01:00', '', 1, 'full', 'd6b22f4f480ad898c4f3878ad02423aa.csv', NULL, '', '', '', '', NULL, 2, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, '2021-01-12 13:28:00', '', 1, 'partial', '5e8ab526b12a76a72b1738fb60ea5b07.csv', NULL, '', '', '', '', NULL, 2, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(3, '2021-01-13 17:28:00', 's01', 1, 'full', '57d950a8d773ce2213683e346cc2642d.csv', NULL, '', '', '', '', NULL, 4, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(4, '2021-01-13 17:31:00', 's01', 1, 'full', 'badbd5701c950ff9bb4fe7dd8f14fe45.csv', NULL, '', '', '', '', NULL, 4, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(5, '2021-01-13 17:32:00', 's01', 1, 'partial', '0a3e8ac91de8edee64c52f1f00afec52.csv', NULL, '', '', '', '', NULL, 4, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(6, '2021-08-14 22:01:00', '', 1, 'full', '5846b979a66ef3164b26b6e57b8216f8.csv', NULL, '', '', '', '', NULL, 6, 7, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(7, '2021-08-17 10:48:00', '', 1, 'full', '08c743b6df07579c31eb10c46457b758.csv', NULL, '', '', '', '', NULL, 7, 8, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(8, '2021-08-18 20:05:00', '', 1, 'full', 'c93434eaff5c046964e864b588210550.csv', NULL, '', '', '', '', NULL, 8, 8, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(9, '2021-10-26 21:58:00', '', 1, 'full', '6727f2ce00294ef376b169668dc37210.csv', NULL, '', '', '', '', NULL, 184, 184, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_count_items`
--

CREATE TABLE `sma_stock_count_items` (
  `id` int(11) NOT NULL,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_variant` varchar(55) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `expected` decimal(15,4) NOT NULL,
  `counted` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_bills`
--

CREATE TABLE `sma_suspended_bills` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `shipping` decimal(15,4) DEFAULT 0.0000,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_items`
--

CREATE TABLE `sma_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_tax_rates`
--

CREATE TABLE `sma_tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(2, 'VAT @10%', 'VAT10', '10.0000', '1'),
(3, 'GST @6%', 'GST', '6.0000', '1'),
(4, 'Instruments', 'sdfsdf', '0.0000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfers`
--

CREATE TABLE `sma_transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfer_items`
--

CREATE TABLE `sma_transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_units`
--

CREATE TABLE `sma_units` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(1) DEFAULT NULL,
  `unit_value` varchar(55) DEFAULT NULL,
  `operation_value` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(21, '(Vol/Pk)', 'Volume/Pack', NULL, 'N', NULL, NULL),
(22, 'Pcs / Pk', 'Pieces / Pack', NULL, NULL, NULL, NULL),
(23, 'Pks', 'pks', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_users`
--

CREATE TABLE `sma_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `biller_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT 0,
  `show_price` tinyint(1) DEFAULT 0,
  `award_points` int(11) DEFAULT 0,
  `view_right` tinyint(1) NOT NULL DEFAULT 0,
  `edit_right` tinyint(1) NOT NULL DEFAULT 0,
  `allow_discount` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(1, 0x3a3a31, 0x0000, 'owner', '2c8ab736b2ccab4f50e72d5fd7d21020cbb77ae7', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '6e5e2f4c47ba10736e92891840965955f42f6f45', 1351661704, 1640440059, 1, 'Owner', 'Owner', 'Stock Manager', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(2, NULL, 0x3139362e3138392e3235352e323431, 'das01', '8db957016de574b7a7a5175d2f71163cb23ded58', NULL, 'x@gmail.com', NULL, NULL, NULL, NULL, 1610545382, 1610545382, 1, 'x das', 'y das', 'xx', '45', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0),
(3, NULL, 0x3130332e3231312e32302e313239, 'tanisha', 'ec4fffb6e44d65f4d3f658ca6725123680e2af53', NULL, 'tanisha@ubiniumtechsol.com', NULL, NULL, NULL, NULL, 1629185388, 1629185388, 1, 'Tanisha', 'Bhattacharya', 'Ubinium Tech Solutions', '7056081666', NULL, 'female', 2, 0, 0, NULL, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_user_logins`
--

CREATE TABLE `sma_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(1, 1, NULL, 0x35382e31312e32372e313232, 'owner@tecdiary.com', '2019-10-22 05:51:08'),
(5, 1, NULL, 0x3135372e34302e3130342e313533, 'owner', '2020-01-13 12:57:28'),
(6, 1, NULL, 0x3132322e3136332e31382e313131, 'owner', '2020-02-05 08:19:51'),
(7, 1, NULL, 0x3132322e3136332e31382e313131, 'owner', '2020-02-05 08:31:32'),
(8, 1, NULL, 0x3232332e3232332e3135312e3634, 'owner', '2020-02-05 09:44:42'),
(9, 1, NULL, 0x3132322e3136332e342e323131, 'owner', '2020-02-12 07:20:00'),
(10, 1, NULL, 0x35392e3130332e3139342e323031, 'owner', '2020-03-20 08:00:51'),
(11, 1, NULL, 0x3131322e3139362e3137392e323230, 'owner', '2020-04-05 02:05:49'),
(12, 1, NULL, 0x3135372e34302e36302e323134, 'owner', '2020-04-21 10:47:25'),
(13, 1, NULL, 0x3130322e38392e332e3435, 'owner', '2020-04-27 18:40:13'),
(14, 1, NULL, 0x3135372e34302e39362e313638, 'owner', '2020-04-30 11:51:38'),
(15, 1, NULL, 0x32332e3232382e3130322e3638, 'owner', '2020-05-18 03:54:53'),
(16, 1, NULL, 0x34372e31352e3137302e3332, 'owner', '2020-05-26 08:02:59'),
(17, 1, NULL, 0x34372e31352e3137302e3332, 'owner', '2020-05-26 08:08:54'),
(18, 1, NULL, 0x34372e31352e3137302e3332, 'owner', '2020-05-26 08:09:30'),
(19, 1, NULL, 0x34372e31352e3230372e313935, 'owner', '2020-06-03 11:14:49'),
(20, 1, NULL, 0x3138362e3234392e3138342e3134, 'owner', '2020-07-22 17:02:20'),
(21, 1, NULL, 0x3138362e3234392e3138342e3134, 'owner', '2020-07-22 17:05:31'),
(22, 1, NULL, 0x3130332e3134342e3137332e3238, 'owner', '2020-07-26 22:35:32'),
(23, 1, NULL, 0x3135372e33332e3138352e3739, 'owner', '2020-08-01 04:20:47'),
(24, 1, NULL, 0x39332e3130332e392e313532, 'owner', '2020-08-12 03:26:27'),
(25, 1, NULL, 0x3131302e3232372e38332e313133, 'owner', '2020-08-18 02:50:00'),
(26, 1, NULL, 0x37372e33302e3130322e313136, 'owner', '2020-08-22 08:26:13'),
(27, 1, NULL, 0x3232332e3139312e302e3135, 'owner', '2020-08-30 08:33:21'),
(28, 1, NULL, 0x34372e31352e33362e313436, 'owner', '2020-08-31 01:27:26'),
(29, 1, NULL, 0x34372e31352e33362e313436, 'owner', '2020-08-31 01:27:43'),
(30, 1, NULL, 0x34352e3131332e3130332e313334, 'owner', '2020-08-31 01:32:37'),
(31, 1, NULL, 0x3132322e3136332e3130372e3533, 'owner', '2020-09-01 23:14:36'),
(32, 1, NULL, 0x3132322e3136332e3130372e3533, 'owner', '2020-09-02 02:57:54'),
(33, 1, NULL, 0x3132322e3136332e3130372e3533, 'owner', '2020-09-02 23:56:30'),
(34, 1, NULL, 0x352e36392e3235352e313339, 'owner', '2020-09-14 11:18:37'),
(35, 1, NULL, 0x3131302e3232372e3130362e3536, 'owner', '2020-09-22 01:59:37'),
(36, 1, NULL, 0x34372e31352e34332e3836, 'owner', '2020-10-06 09:26:39'),
(37, 1, NULL, 0x34392e3230362e33352e323138, 'owner', '2020-10-06 19:33:37'),
(38, 1, NULL, 0x34372e31352e31332e3238, 'owner', '2020-10-18 02:28:01'),
(39, 1, NULL, 0x3138322e36362e3134382e3732, 'owner', '2020-10-27 12:11:17'),
(40, 1, NULL, 0x3131372e39392e39352e3838, 'owner', '2020-11-24 00:53:09'),
(41, 1, NULL, 0x3131302e3232352e342e313439, 'owner', '2020-12-10 02:42:58'),
(42, 1, NULL, 0x31342e3134302e3232392e323035, 'owner', '2021-01-08 00:47:38'),
(43, 1, NULL, 0x3133362e3233322e37302e313035, 'owner', '2021-01-12 02:00:59'),
(44, 1, NULL, 0x3232332e3233352e3132342e3233, 'owner', '2021-01-12 02:06:06'),
(45, 1, NULL, 0x31342e3134302e3232392e323035, 'OWNER', '2021-01-12 02:23:03'),
(46, 1, NULL, 0x3133362e3233322e37302e313035, 'owner', '2021-01-12 02:24:22'),
(47, 1, NULL, 0x31342e3134302e3232392e323035, 'OWNER', '2021-01-12 03:24:41'),
(48, 1, NULL, 0x31342e3134302e3232392e323035, 'OWNER', '2021-01-12 03:58:10'),
(49, 1, NULL, 0x3133362e3233322e37302e313035, 'owner', '2021-01-13 05:28:26'),
(50, 1, NULL, 0x3139362e3138392e3235352e323431, 'owner', '2021-01-13 05:30:42'),
(51, 1, NULL, 0x3139362e3138392e3235352e323431, 'owner', '2021-01-14 05:10:49'),
(52, 1, NULL, 0x3139362e3138392e3235352e323431, 'owner', '2021-02-02 03:12:32'),
(53, 1, NULL, 0x3139362e3138392e3235352e323431, 'owner', '2021-02-02 03:30:12'),
(54, 1, NULL, 0x34352e3235312e3233342e313932, 'owner', '2021-06-19 14:38:42'),
(55, 1, NULL, 0x34352e3235312e3233342e313932, 'owner', '2021-06-19 15:39:17'),
(56, 1, NULL, 0x34352e3235312e3233342e313637, 'owner', '2021-08-14 11:41:57'),
(57, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-14 12:27:14'),
(58, 1, NULL, 0x34352e3235312e3233342e313637, 'owner', '2021-08-14 16:49:14'),
(59, 1, NULL, 0x3133362e3233322e37332e3730, 'owner', '2021-08-15 23:34:13'),
(60, 1, NULL, 0x3133362e3233322e37332e3730, 'owner', '2021-08-16 06:46:13'),
(61, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-16 10:00:38'),
(62, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-16 10:59:42'),
(63, 1, NULL, 0x3139352e3138312e3137342e323239, 'owner', '2021-08-16 11:06:02'),
(64, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-16 11:23:50'),
(65, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-16 11:27:41'),
(66, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-17 00:22:50'),
(67, 1, NULL, 0x3130332e3231312e32302e313239, 'owner', '2021-08-17 00:47:19'),
(68, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-08-17 00:50:14'),
(69, 1, NULL, 0x3133362e3233322e37332e3730, 'owner', '2021-08-18 00:12:48'),
(70, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-08-18 00:59:37'),
(71, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-08-18 07:17:20'),
(72, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-08-18 10:13:03'),
(73, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-18 13:30:09'),
(74, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-18 14:06:45'),
(75, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-18 14:08:44'),
(76, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-08-18 15:53:46'),
(77, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-08-19 01:42:40'),
(78, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-08-19 04:01:30'),
(79, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-08-19 09:58:01'),
(80, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-20 02:18:28'),
(81, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-20 04:48:21'),
(82, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-08-20 17:45:52'),
(83, 1, NULL, 0x34312e3139312e3130352e323238, 'owner', '2021-08-21 07:50:25'),
(84, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-21 17:03:23'),
(85, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-21 18:11:07'),
(86, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-08-22 03:03:52'),
(87, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-22 10:43:26'),
(88, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-22 21:01:37'),
(89, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-23 02:40:37'),
(90, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-08-23 04:17:40'),
(91, 1, NULL, 0x3131302e3232372e39392e313732, 'owner', '2021-08-23 04:40:06'),
(92, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-23 09:34:33'),
(93, 1, NULL, 0x34312e3139312e3130342e313037, 'owner', '2021-08-23 09:55:05'),
(94, 1, NULL, 0x34312e3139312e3130342e313037, 'owner', '2021-08-23 13:05:46'),
(95, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-08-23 17:27:42'),
(96, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-25 10:11:34'),
(97, 1, NULL, 0x34312e3139312e3130372e323132, 'owner', '2021-08-25 13:16:50'),
(98, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-25 17:38:48'),
(99, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-26 04:07:07'),
(100, 1, NULL, 0x34312e3139312e3130372e323332, 'owner', '2021-08-26 09:51:27'),
(101, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-08-26 14:51:13'),
(102, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-08-27 01:32:21'),
(103, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-08-27 13:43:11'),
(104, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-08-28 03:18:11'),
(105, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-08-28 11:24:02'),
(106, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-29 07:46:02'),
(107, 1, NULL, 0x34312e3139312e3130372e3538, 'owner', '2021-08-29 14:46:46'),
(108, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-08-30 02:18:19'),
(109, 1, NULL, 0x34312e3139312e3130372e313239, 'owner', '2021-08-30 07:10:31'),
(110, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-08-31 04:41:24'),
(111, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-08-31 08:04:03'),
(112, 1, NULL, 0x34312e3139312e3130342e3436, 'owner', '2021-09-02 04:50:08'),
(113, 1, NULL, 0x34312e3139312e3130342e3830, 'owner', '2021-09-02 05:02:11'),
(114, 1, NULL, 0x34312e3139312e3130342e3435, 'owner', '2021-09-02 06:59:47'),
(115, 1, NULL, 0x34312e3139312e3130342e3435, 'owner', '2021-09-02 07:26:31'),
(116, 1, NULL, 0x34312e3139312e3130372e323233, 'owner', '2021-09-02 09:50:59'),
(117, 1, NULL, 0x34312e3139312e3130342e3738, 'owner', '2021-09-02 15:30:21'),
(118, 1, NULL, 0x34312e3139312e3130352e323335, 'owner', '2021-09-03 04:08:19'),
(119, 1, NULL, 0x34312e3139312e3130352e323335, 'owner', '2021-09-03 06:41:25'),
(120, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-09-03 06:51:27'),
(121, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-09-03 08:59:30'),
(122, 1, NULL, 0x34312e3139312e3130342e323333, 'owner', '2021-09-04 04:57:08'),
(123, 1, NULL, 0x34312e3139312e3130342e3430, 'owner', '2021-09-04 14:34:24'),
(124, 1, NULL, 0x34312e3139312e3130342e323533, 'owner', '2021-09-05 02:53:36'),
(125, 1, NULL, 0x34312e3139312e3130372e313330, 'owner', '2021-09-06 01:48:25'),
(126, 1, NULL, 0x34312e3139312e3130372e313339, 'owner', '2021-09-06 03:37:41'),
(127, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-09-06 04:20:40'),
(128, 1, NULL, 0x34312e3139312e3130342e3638, 'owner', '2021-09-06 09:56:38'),
(129, 1, NULL, 0x34312e3139312e3130342e3931, 'owner', '2021-09-07 01:19:16'),
(130, 1, NULL, 0x34312e3139312e3130342e3931, 'owner', '2021-09-07 01:33:42'),
(131, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-09-07 03:51:59'),
(132, 1, NULL, 0x34312e3139312e3130342e313034, 'owner', '2021-09-08 03:34:08'),
(133, 1, NULL, 0x34312e3139312e3130342e313034, 'owner', '2021-09-08 05:44:11'),
(134, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-09-08 06:38:09'),
(135, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-09-09 10:23:11'),
(136, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-09-13 07:24:27'),
(137, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-09-13 09:40:43'),
(138, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-09-13 10:37:28'),
(139, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-09-13 11:52:09'),
(140, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-09-17 02:37:42'),
(141, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-09-17 03:16:04'),
(142, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-09-17 06:16:55'),
(143, 1, NULL, 0x34312e3139312e3130372e313935, 'owner', '2021-09-17 06:35:23'),
(144, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-09-17 14:54:22'),
(145, 1, NULL, 0x34312e3139312e3130342e313134, 'owner', '2021-09-18 10:05:54'),
(146, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-09-18 15:42:53'),
(147, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-09-18 23:34:22'),
(148, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-09-19 02:54:57'),
(149, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-09-19 08:03:30'),
(150, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-09-19 14:08:43'),
(151, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-09-20 02:50:06'),
(152, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-09-20 04:42:42'),
(153, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-09-20 13:02:52'),
(154, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-09-21 19:50:52'),
(155, 1, NULL, 0x34312e3139312e3130342e313135, 'owner', '2021-09-23 08:56:27'),
(156, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-09-23 10:10:08'),
(157, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-09-25 01:21:07'),
(158, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-09-27 03:44:43'),
(159, 1, NULL, 0x34312e3139312e3130342e3430, 'owner', '2021-09-28 10:51:37'),
(160, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-09-28 11:24:52'),
(161, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-09-28 12:10:01'),
(162, 1, NULL, 0x34312e3139312e3130342e3430, 'owner', '2021-09-29 08:08:36'),
(163, 1, NULL, 0x34312e3139312e3130342e3430, 'owner', '2021-09-30 09:51:20'),
(164, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-10-01 05:10:07'),
(165, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-10-03 03:20:47'),
(166, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-10-03 03:21:54'),
(167, 1, NULL, 0x34312e3139312e3130342e3430, 'owner', '2021-10-04 15:49:29'),
(168, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-10-05 01:58:33'),
(169, 1, NULL, 0x34312e3139312e3130342e3432, 'owner', '2021-10-05 06:54:09'),
(170, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-10-05 08:39:01'),
(171, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-10-06 07:44:54'),
(172, 1, NULL, 0x34312e3139312e3130372e323236, 'owner', '2021-10-06 12:36:34'),
(173, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-07 03:02:19'),
(174, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-07 06:15:23'),
(175, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-08 02:03:49'),
(176, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-10-08 03:25:52'),
(177, 1, NULL, 0x34312e3139312e3130372e323036, 'owner', '2021-10-11 12:32:06'),
(178, 1, NULL, 0x34312e3139312e3130372e313331, 'owner', '2021-10-11 15:12:18'),
(179, 1, NULL, 0x34312e3139312e3130342e323334, 'owner', '2021-10-12 03:08:52'),
(180, 1, NULL, 0x34312e3139312e3130372e323033, 'owner', '2021-10-12 06:58:46'),
(181, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-10-12 09:34:11'),
(182, 1, NULL, 0x34312e3139312e3130342e313133, 'owner', '2021-10-12 11:39:43'),
(183, 1, NULL, 0x34312e3139312e3130372e313434, 'owner', '2021-10-14 08:36:45'),
(184, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-10-15 07:36:26'),
(185, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-19 01:47:23'),
(186, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-10-19 13:56:07'),
(187, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-20 07:01:24'),
(188, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-10-21 02:12:19'),
(189, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-10-22 04:43:12'),
(190, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-23 02:19:22'),
(191, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-10-24 07:52:19'),
(192, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-10-25 02:20:12'),
(193, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-10-26 02:20:04'),
(194, 1, NULL, 0x3131352e39362e3135302e3634, 'owner', '2021-10-26 09:25:18'),
(195, 1, NULL, 0x3131352e39362e3135302e3634, 'owner', '2021-10-26 09:25:54'),
(196, 1, NULL, 0x34352e3234392e37352e3631, 'owner', '2021-10-26 09:38:20'),
(197, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-10-26 10:48:40'),
(198, 1, NULL, 0x3131302e3232362e3235322e313037, 'owner', '2021-10-26 10:56:48'),
(199, 1, NULL, 0x3131352e39362e3131342e323233, 'owner', '2021-10-26 23:09:24'),
(200, 1, NULL, 0x3131302e3232362e3235322e313037, 'owner', '2021-10-27 00:38:40'),
(201, 1, NULL, 0x3230322e3134322e3132332e31, 'owner', '2021-10-27 04:20:07'),
(202, 1, NULL, 0x34312e3139312e3130352e3934, 'owner', '2021-10-27 06:05:36'),
(203, 1, NULL, 0x3230322e3134322e3132332e31, 'owner', '2021-10-27 06:34:09'),
(204, 1, NULL, 0x3131352e39362e3131342e323233, 'owner', '2021-10-27 07:03:02'),
(205, 1, NULL, 0x34312e3139312e3130342e313037, 'owner', '2021-10-27 09:27:17'),
(206, 1, NULL, 0x34312e3139312e3130352e3933, 'owner', '2021-10-27 10:28:42'),
(207, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-10-28 01:38:39'),
(208, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-10-28 05:01:56'),
(209, 1, NULL, 0x34312e3139312e3130342e3433, 'owner', '2021-10-28 08:43:04'),
(210, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-10-28 10:03:53'),
(211, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-10-28 14:24:20'),
(212, 1, NULL, 0x3230322e3134322e3132332e31, 'owner', '2021-10-28 23:41:02'),
(213, 1, NULL, 0x34322e3130352e352e3237, 'owner', '2021-10-29 00:20:45'),
(214, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-10-29 05:31:17'),
(215, 1, NULL, 0x34312e3139312e3130352e3932, 'owner', '2021-10-29 07:58:35'),
(216, 1, NULL, 0x34322e3130352e3130312e3638, 'owner', '2021-10-29 09:23:32'),
(217, 1, NULL, 0x34312e3139312e3130342e3437, 'owner', '2021-10-29 11:13:56'),
(218, 1, NULL, 0x34312e3139312e3130352e323336, 'owner', '2021-10-29 14:42:09'),
(219, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-10-30 19:03:57'),
(220, 1, NULL, 0x3230322e3134322e3132332e31, 'owner', '2021-10-31 11:13:05'),
(221, 1, NULL, 0x34312e3139312e3130342e313235, 'owner', '2021-10-31 14:01:17'),
(222, 1, NULL, 0x34312e3139312e3130352e3838, 'owner', '2021-11-01 03:45:15'),
(223, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-11-01 10:02:04'),
(224, 1, NULL, 0x34312e3139312e3130352e3839, 'owner', '2021-11-02 04:04:33'),
(225, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-11-02 05:18:36'),
(226, 1, NULL, 0x34312e3139312e3130342e323432, 'owner', '2021-11-02 06:30:16'),
(227, 1, NULL, 0x34312e3139312e3130352e3930, 'owner', '2021-11-03 01:09:53'),
(228, 1, NULL, 0x34312e3139312e3130352e3931, 'owner', '2021-11-05 05:51:50'),
(229, 1, NULL, 0x34312e3139312e3130372e313439, 'owner', '2021-11-05 08:32:46'),
(230, 1, NULL, 0x34312e3139312e3130352e3935, 'owner', '2021-11-05 11:38:25'),
(231, 1, NULL, 0x3a3a31, 'owner', '2021-11-13 15:07:18'),
(232, 1, NULL, 0x3a3a31, 'owner', '2021-11-14 11:07:53'),
(233, 1, NULL, 0x3a3a31, 'owner', '2021-11-15 15:39:30'),
(234, 1, NULL, 0x3a3a31, 'owner', '2021-11-16 02:52:40'),
(235, 1, NULL, 0x3a3a31, 'owner', '2021-11-16 15:59:28'),
(236, 1, NULL, 0x3a3a31, 'owner', '2021-11-18 08:53:31'),
(237, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-11-18 14:44:14'),
(238, 1, NULL, 0x3a3a31, 'owner', '2021-11-19 07:14:24'),
(239, 1, NULL, 0x3a3a31, 'owner', '2021-11-19 11:22:42'),
(240, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-11-19 13:06:51'),
(241, 1, NULL, 0x3a3a31, 'owner', '2021-11-19 17:57:17'),
(242, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-11-19 18:34:50'),
(243, 1, NULL, 0x3a3a31, 'owner', '2021-11-20 06:30:41'),
(244, 1, NULL, 0x3a3a31, 'owner', '2021-11-23 18:45:55'),
(245, 1, NULL, 0x3a3a31, 'owner', '2021-11-24 13:28:39'),
(246, 1, NULL, 0x3a3a31, 'owner', '2021-11-25 16:22:40'),
(247, 1, NULL, 0x3a3a31, 'owner', '2021-11-26 17:41:47'),
(248, 1, NULL, 0x3a3a31, 'owner', '2021-11-30 15:49:38'),
(249, 1, NULL, 0x3a3a31, 'owner', '2021-11-30 18:07:37'),
(250, 1, NULL, 0x3a3a31, 'owner', '2021-12-01 12:18:53'),
(251, 1, NULL, 0x3a3a31, 'owner', '2021-12-01 14:32:42'),
(252, 1, NULL, 0x3a3a31, 'owner', '2021-12-02 19:41:12'),
(253, 1, NULL, 0x3a3a31, 'owner', '2021-12-02 20:31:38'),
(254, 1, NULL, 0x3a3a31, 'owner', '2021-12-03 17:48:23'),
(255, 1, NULL, 0x3a3a31, 'owner', '2021-12-04 15:57:16'),
(256, 1, NULL, 0x3a3a31, 'owner', '2021-12-05 13:04:01'),
(257, 1, NULL, 0x3a3a31, 'owner', '2021-12-05 15:10:53'),
(258, 1, NULL, 0x3a3a31, 'owner', '2021-12-05 16:57:39'),
(259, 1, NULL, 0x3a3a31, 'owner', '2021-12-06 13:28:14'),
(260, 1, NULL, 0x3a3a31, 'owner', '2021-12-09 17:41:44'),
(261, 1, NULL, 0x3a3a31, 'owner', '2021-12-10 13:26:33'),
(262, 1, NULL, 0x3a3a31, 'owner', '2021-12-11 06:23:45'),
(263, 1, NULL, 0x3a3a31, 'owner', '2021-12-11 17:28:34'),
(264, 1, NULL, 0x3a3a31, 'owner', '2021-12-14 08:05:28'),
(265, 1, NULL, 0x3a3a31, 'owner', '2021-12-14 15:35:22'),
(266, 1, NULL, 0x3a3a31, 'owner', '2021-12-14 18:11:13'),
(267, 1, NULL, 0x3a3a31, 'owner', '2021-12-15 05:45:01'),
(268, 1, NULL, 0x3a3a31, 'owner', '2021-12-15 17:57:45'),
(269, 1, NULL, 0x3a3a31, 'owner', '2021-12-17 17:35:22'),
(270, 1, NULL, 0x3a3a31, 'owner', '2021-12-18 10:41:40'),
(271, 1, NULL, 0x3a3a31, 'owner', '2021-12-22 18:08:06'),
(272, 1, NULL, 0x3a3a31, 'owner', '2021-12-23 09:42:22'),
(273, 1, NULL, 0x3a3a31, 'owner', '2021-12-24 14:38:57'),
(274, 1, NULL, 0x3a3a31, 'owner', '2021-12-24 19:00:26'),
(275, 1, NULL, 0x3a3a31, 'owner', '2021-12-25 13:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `sma_variants`
--

CREATE TABLE `sma_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_variants`
--

INSERT INTO `sma_variants` (`id`, `name`) VALUES
(1, 'size 50'),
(2, 'size 51'),
(3, 'size 52'),
(4, 'size 53'),
(5, 'size 54'),
(6, 'size 55'),
(7, 'size 56'),
(8, 'size 57'),
(9, 'size 58'),
(10, 'size 59'),
(11, 'size 60'),
(12, 'size 61'),
(13, 'size 62'),
(14, 'size 63'),
(15, 'size 49'),
(16, 'size 48');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses`
--

CREATE TABLE `sma_warehouses` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, 'WHI', 'Warehouse 1', '<p>Address, City</p>', NULL, '+231775508118', 'Biomedicalsolutionsgh@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products`
--

CREATE TABLE `sma_warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(33, 33, 1, '5.0000', NULL, '3.6000'),
(2, 2, 1, '0.0000', NULL, '640.0000'),
(3, 3, 1, '0.0000', NULL, '109.0000'),
(4, 4, 1, '0.0000', NULL, '330.0000'),
(5, 5, 1, '0.0000', NULL, '180.0000'),
(6, 6, 1, '0.0000', NULL, '150.0000'),
(7, 7, 1, '0.0000', NULL, '140.0000'),
(8, 8, 1, '0.0000', NULL, '130.0000'),
(9, 9, 1, '0.0000', NULL, '130.0000'),
(10, 10, 1, '0.0000', NULL, '130.0000'),
(11, 11, 1, '0.0000', NULL, '130.0000'),
(12, 12, 1, '0.0000', NULL, '490.0000'),
(13, 13, 1, '0.0000', NULL, '140.0000'),
(14, 14, 1, '0.0000', NULL, '180.0000'),
(15, 15, 1, '0.0000', NULL, '140.0000'),
(16, 16, 1, '0.0000', NULL, '130.0000'),
(17, 17, 1, '0.0000', NULL, '195.0000'),
(18, 18, 1, '0.0000', NULL, '120.0000'),
(19, 19, 1, '0.0000', NULL, '140.0000'),
(20, 20, 1, '0.0000', NULL, '160.0000'),
(28, 28, 1, '20.0000', NULL, '196.9600'),
(29, 29, 1, '131.0000', NULL, '13.0000'),
(30, 30, 1, '0.0000', NULL, '214.4600'),
(31, 31, 1, '0.0000', NULL, '15.0000'),
(32, 32, 1, '2.0000', NULL, '656.0000'),
(34, 34, 1, '0.0000', NULL, '17.9200'),
(35, 35, 1, '1.0000', NULL, '5.0000'),
(36, 22, 1, '0.0000', NULL, '0.0000'),
(37, 21, 1, '55.0000', NULL, '0.0000'),
(38, 25, 1, '2000.0000', NULL, '0.0000'),
(39, 27, 1, '197.0000', NULL, '0.0000'),
(40, 36, 1, '-8.0000', NULL, '15.0000'),
(41, 37, 1, '44.0000', NULL, '20.0000'),
(42, 38, 1, '60.0000', NULL, '20.0000'),
(43, 39, 1, '115.0000', NULL, '5.0000'),
(44, 40, 1, '31.0000', NULL, '10.0000'),
(45, 41, 1, '7.0000', NULL, '6.2500'),
(46, 42, 1, '1.0000', NULL, '31.2600'),
(47, 43, 1, '1.0000', NULL, '26.0000'),
(48, 44, 1, '1.0000', NULL, '25.0000'),
(49, 45, 1, '1.0000', NULL, '25.0000'),
(50, 46, 1, '5.0000', NULL, '26.0000'),
(51, 47, 1, '3.0000', NULL, '26.0000'),
(52, 48, 1, '3.0000', NULL, '26.0000'),
(53, 49, 1, '3.0000', NULL, '26.0000'),
(54, 50, 1, '2.0000', NULL, '26.0000'),
(55, 51, 1, '3.0000', NULL, '26.0000'),
(56, 52, 1, '22.0000', NULL, '20.0000'),
(57, 53, 1, '0.0000', NULL, '20.0000'),
(58, 54, 1, '1.0000', NULL, '31.0000'),
(61, 57, 1, '3.0000', NULL, '28.0000'),
(60, 56, 1, '2.0000', NULL, '28.0000'),
(62, 58, 1, '2.0000', NULL, '29.0000'),
(63, 59, 1, '2.0000', NULL, '31.0000'),
(64, 60, 1, '1.0000', NULL, '40.0000'),
(65, 61, 1, '2.0000', NULL, '40.0000'),
(66, 62, 1, '2.0000', NULL, '26.0000'),
(67, 63, 1, '1.0000', NULL, '31.0000'),
(68, 64, 1, '1.0000', NULL, '31.0000'),
(69, 65, 1, '1.0000', NULL, '30.0000'),
(70, 66, 1, '1.0000', NULL, '30.0000'),
(71, 67, 1, '37.0000', NULL, '25.0000'),
(72, 68, 1, '46.0000', NULL, '30.0000'),
(73, 69, 1, '4.0000', NULL, '20.0000'),
(74, 70, 1, '7.0000', NULL, '5.0000'),
(75, 71, 1, '10.0000', NULL, '5.0000'),
(76, 72, 1, '7.0000', NULL, '5.0000'),
(77, 73, 1, '0.0000', NULL, '15.0000'),
(78, 74, 1, '0.0000', NULL, '15.0000'),
(79, 75, 1, '0.0000', NULL, '15.0000'),
(80, 76, 1, '0.0000', NULL, '25.0000'),
(81, 77, 1, '0.0000', NULL, '15.0000'),
(82, 78, 1, '0.0000', NULL, '15.0000'),
(83, 79, 1, '0.0000', NULL, '15.0000'),
(84, 80, 1, '0.0000', NULL, '15.0000'),
(85, 81, 1, '20.0000', NULL, '25.0000'),
(86, 82, 1, '-14.0000', NULL, '33.0000'),
(87, 83, 1, '0.0000', NULL, '30.0000'),
(88, 84, 1, '7.0000', NULL, '30.0000'),
(89, 85, 1, '0.0000', NULL, '1350.0000'),
(90, 86, 1, '0.0000', NULL, '30.0000'),
(91, 87, 1, '0.0000', NULL, '30.0000'),
(92, 88, 1, '0.0000', NULL, '30.0000'),
(93, 89, 1, '0.0000', NULL, '33.0000'),
(94, 90, 1, '0.0000', NULL, '30.0000'),
(95, 91, 1, '0.0000', NULL, '30.0000'),
(96, 92, 1, '0.0000', NULL, '30.0000'),
(97, 93, 1, '1.0000', NULL, '900.0000'),
(98, 94, 1, '0.0000', NULL, '40.0000'),
(99, 95, 1, '4.0000', NULL, '30.0000'),
(100, 96, 1, '1.0000', NULL, '45.0000'),
(101, 97, 1, '1.0000', NULL, '50.0000'),
(102, 98, 1, '58.0000', NULL, '10.4000'),
(103, 99, 1, '33.0000', NULL, '11.0000'),
(104, 100, 1, '51.0000', NULL, '5.0000'),
(105, 101, 1, '7.0000', NULL, '16.0000'),
(106, 102, 1, '2.0000', NULL, '19.5000'),
(107, 103, 1, '1.0000', NULL, '16.8000'),
(108, 104, 1, '6.0000', NULL, '20.4000'),
(109, 105, 1, '6.0000', NULL, '20.4000'),
(110, 106, 1, '52.0000', NULL, '16.0000'),
(111, 107, 1, '3.0000', NULL, '18.4000'),
(112, 108, 1, '2.0000', NULL, '20.4000'),
(113, 109, 1, '2.0000', NULL, '20.4000'),
(114, 110, 1, '3.0000', NULL, '16.5000'),
(115, 111, 1, '5.0000', NULL, '8.5000'),
(116, 112, 1, '3.0000', NULL, '15.0000'),
(117, 113, 1, '1.0000', NULL, '2.2000'),
(118, 114, 1, '0.0000', NULL, '18.0000'),
(119, 115, 1, '1.0000', NULL, '9.2000'),
(120, 117, 1, '40.0000', NULL, '3.0000'),
(121, 118, 1, '-16.0000', NULL, '4.5000'),
(122, 119, 1, '10.0000', NULL, '9.0000'),
(123, 120, 1, '2.0000', NULL, '2.5000'),
(124, 121, 1, '4.0000', NULL, '8.6500'),
(125, 122, 1, '5.0000', NULL, '6.9000'),
(126, 123, 1, '4.0000', NULL, '8.2500'),
(127, 124, 1, '5.0000', NULL, '9.6500'),
(128, 125, 1, '8.0000', NULL, '8.6500'),
(129, 126, 1, '4.0000', NULL, '13.8000'),
(130, 127, 1, '4.0000', NULL, '9.6000'),
(131, 128, 1, '5.0000', NULL, '9.0000'),
(132, 129, 1, '0.0000', NULL, '7.3000'),
(133, 130, 1, '3.0000', NULL, '11.7500'),
(134, 131, 1, '8.0000', NULL, '18.3500'),
(135, 132, 1, '5.0000', NULL, '13.5000'),
(136, 133, 1, '4.0000', NULL, '13.8000'),
(137, 134, 1, '4.0000', NULL, '20.4000'),
(138, 135, 1, '4.0000', NULL, '11.0000'),
(139, 136, 1, '3.0000', NULL, '23.5000'),
(140, 137, 1, '4.0000', NULL, '26.2000'),
(141, 138, 1, '1.0000', NULL, '33.2000'),
(142, 139, 1, '5.0000', NULL, '6.7500'),
(143, 140, 1, '0.0000', NULL, '6.7500'),
(144, 141, 1, '1.0000', NULL, '31.5000'),
(145, 142, 1, '1.0000', NULL, '31.8000'),
(146, 143, 1, '2.0000', NULL, '10.7500'),
(147, 144, 1, '4.0000', NULL, '13.4500'),
(148, 145, 1, '2.0000', NULL, '24.2500'),
(149, 146, 1, '4.0000', NULL, '8.4000'),
(150, 147, 1, '2.0000', NULL, '31.8500'),
(151, 148, 1, '5.0000', NULL, '19.3000'),
(152, 149, 1, '1.0000', NULL, '9.4000'),
(153, 150, 1, '6.0000', NULL, '11.0000'),
(154, 151, 1, '5.0000', NULL, '13.5000'),
(155, 152, 1, '5.0000', NULL, '4.8500'),
(156, 153, 1, '7.0000', NULL, '30.8000'),
(157, 154, 1, '6.0000', NULL, '11.0000'),
(158, 155, 1, '7.0000', NULL, '20.0000'),
(159, 156, 1, '-1000.0000', NULL, '0.1000'),
(160, 157, 1, '120.0000', NULL, '5.0000'),
(161, 158, 1, '-6.0000', NULL, '15.0000'),
(162, 159, 1, '-2.0000', NULL, '50.0000'),
(163, 160, 1, '2.0000', NULL, '6.2000'),
(164, 161, 1, '95.0000', NULL, '3.4500'),
(165, 162, 1, '5.0000', NULL, '3.8500'),
(166, 163, 1, '5.0000', NULL, '3.8500'),
(167, 164, 1, '0.0000', NULL, '20.0000'),
(168, 165, 1, '7.0000', NULL, '8.0000'),
(169, 166, 1, '4.0000', NULL, '8.0000'),
(170, 167, 1, '6.0000', NULL, '6.0000'),
(171, 168, 1, '11.0000', NULL, '1.0000'),
(172, 169, 1, '6.0000', NULL, '20.0000'),
(173, 170, 1, '3.0000', NULL, '10.0000'),
(174, 171, 1, '4.0000', NULL, '10.0000'),
(175, 172, 1, '8.0000', NULL, '15.0000'),
(176, 173, 1, '4.0000', NULL, '10.0000'),
(177, 174, 1, '5.0000', NULL, '20.0000'),
(178, 175, 1, '2.0000', NULL, '33.0000'),
(179, 176, 1, '3.0000', NULL, '33.0000'),
(180, 177, 1, '2.0000', NULL, '33.0000'),
(181, 178, 1, '2.0000', NULL, '33.0000'),
(182, 179, 1, '4.0000', NULL, '15.0000'),
(183, 180, 1, '1.0000', NULL, '20.0000'),
(184, 181, 1, '40.0000', NULL, '1.0000'),
(185, 182, 1, '0.0000', NULL, '70.0000'),
(186, 183, 1, '-3.0000', NULL, '5.0000'),
(187, 184, 1, '0.0000', NULL, '50.0000'),
(188, 185, 1, '8.0000', NULL, '100.0000'),
(189, 186, 1, '10.0000', NULL, '10.0000'),
(190, 187, 1, '1.0000', NULL, '10.0000'),
(191, 188, 1, '1.0000', NULL, '362.0000'),
(192, 189, 1, '2.0000', NULL, '20.0000'),
(193, 190, 1, '-2.0000', NULL, '70.0000'),
(194, 191, 1, '-1.0000', NULL, '50.0000'),
(195, 192, 1, '0.0000', NULL, '60.0000'),
(196, 193, 1, '0.0000', NULL, '60.0000'),
(197, 194, 1, '0.0000', NULL, '2500.0000'),
(198, 195, 1, '-12.0000', NULL, '9.0000'),
(199, 196, 1, '2.0000', NULL, '15.0000'),
(200, 197, 1, '4.0000', NULL, '9.0000'),
(201, 198, 1, '1.0000', NULL, '80.0000'),
(202, 199, 1, '4.0000', NULL, '11.7500'),
(203, 200, 1, '6.0000', NULL, '25.0000'),
(204, 201, 1, '10.0000', NULL, '15.0000'),
(205, 202, 1, '1.0000', NULL, '150.0000'),
(206, 203, 1, '1.0000', NULL, '150.0000'),
(207, 204, 1, '1.0000', NULL, '150.0000'),
(208, 205, 1, '1.0000', NULL, '150.0000'),
(209, 206, 1, '1.0000', NULL, '150.0000'),
(210, 207, 1, '0.0000', NULL, '150.0000'),
(211, 208, 1, '1.0000', NULL, '150.0000'),
(212, 209, 1, '1.0000', NULL, '150.0000'),
(213, 210, 1, '1.0000', NULL, '150.0000'),
(214, 211, 1, '1.0000', NULL, '150.0000'),
(215, 212, 1, '1.0000', NULL, '150.0000'),
(216, 213, 1, '0.0000', NULL, '400.0000'),
(217, 214, 1, '-8.0000', NULL, '8.0000'),
(249, 265, 1, '147.0000', NULL, '100.0000'),
(219, 216, 1, '0.0000', NULL, '0.0000'),
(220, 217, 1, '0.0000', NULL, '0.0000'),
(221, 218, 1, '0.0000', NULL, '0.0000'),
(222, 219, 1, '0.0000', NULL, '0.0000'),
(223, 220, 1, '0.0000', NULL, '999.0000'),
(224, 221, 1, '0.0000', NULL, '777.0000'),
(225, 222, 1, '0.0000', NULL, '0.0000'),
(226, 223, 1, '0.0000', NULL, '777.0000'),
(227, 224, 1, '100.0000', NULL, '10.0000'),
(250, 266, 1, '17.0000', NULL, '100.0000'),
(230, 227, 1, '0.0000', NULL, '100.0000'),
(247, 252, 1, '10.0000', NULL, '100.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products_variants`
--

CREATE TABLE `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products_variants`
--

INSERT INTO `sma_warehouses_products_variants` (`id`, `option_id`, `product_id`, `warehouse_id`, `quantity`, `rack`) VALUES
(3, 3, 2, 1, '0.0000', NULL),
(4, 4, 2, 1, '0.0000', NULL),
(5, 5, 3, 1, '0.0000', NULL),
(6, 6, 3, 1, '0.0000', NULL),
(7, 7, 3, 1, '0.0000', NULL),
(8, 8, 3, 1, '0.0000', NULL),
(9, 9, 3, 1, '0.0000', NULL),
(10, 10, 4, 1, '0.0000', NULL),
(11, 11, 4, 1, '0.0000', NULL),
(12, 12, 5, 1, '0.0000', NULL),
(13, 13, 5, 1, '0.0000', NULL),
(14, 14, 5, 1, '0.0000', NULL),
(15, 15, 6, 1, '0.0000', NULL),
(16, 16, 6, 1, '0.0000', NULL),
(17, 17, 7, 1, '0.0000', NULL),
(18, 18, 7, 1, '0.0000', NULL),
(19, 19, 7, 1, '0.0000', NULL),
(20, 21, 8, 1, '0.0000', NULL),
(21, 22, 8, 1, '0.0000', NULL),
(22, 23, 8, 1, '0.0000', NULL),
(23, 24, 8, 1, '0.0000', NULL),
(24, 25, 8, 1, '0.0000', NULL),
(25, 26, 8, 1, '0.0000', NULL),
(26, 27, 9, 1, '0.0000', NULL),
(27, 28, 9, 1, '0.0000', NULL),
(28, 30, 10, 1, '0.0000', NULL),
(29, 31, 10, 1, '0.0000', NULL),
(30, 32, 10, 1, '0.0000', NULL),
(31, 33, 10, 1, '0.0000', NULL),
(32, 34, 11, 1, '0.0000', NULL),
(33, 35, 12, 1, '0.0000', NULL),
(34, 36, 12, 1, '0.0000', NULL),
(35, 37, 12, 1, '0.0000', NULL),
(36, 38, 15, 1, '0.0000', NULL),
(37, 39, 15, 1, '0.0000', NULL),
(38, 40, 16, 1, '0.0000', NULL),
(39, 41, 16, 1, '0.0000', NULL),
(40, 42, 16, 1, '0.0000', NULL),
(41, 43, 17, 1, '0.0000', NULL),
(42, 44, 17, 1, '0.0000', NULL),
(43, 45, 18, 1, '0.0000', NULL),
(44, 46, 18, 1, '0.0000', NULL),
(45, 47, 19, 1, '0.0000', NULL),
(46, 48, 19, 1, '0.0000', NULL),
(47, 49, 19, 1, '0.0000', NULL),
(48, 50, 19, 1, '0.0000', NULL),
(49, 51, 19, 1, '0.0000', NULL),
(50, 52, 20, 1, '0.0000', NULL),
(51, 53, 224, 1, '100.0000', NULL),
(54, 56, 227, 1, '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_weight_master`
--
-- Error reading structure for table uproduct_nbs_prod.sma_weight_master: #1932 - Table 'uproduct_nbs_prod.sma_weight_master' doesn't exist in engine
-- Error reading data for table uproduct_nbs_prod.sma_weight_master: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uproduct_nbs_prod`.`sma_weight_master`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `sma_wishlist`
--

CREATE TABLE `sma_wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_brands`
--
ALTER TABLE `sma_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `sma_cart`
--
ALTER TABLE `sma_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_categories`
--
ALTER TABLE `sma_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_companies`
--
ALTER TABLE `sma_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Indexes for table `sma_costing`
--
ALTER TABLE `sma_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_equipments`
--
ALTER TABLE `sma_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`engineer_comment`) USING HASH,
  ADD KEY `category_id` (`contact_person_phone_1`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`contact_person_phone_1`),
  ADD KEY `unit` (`facility_name`(333));

--
-- Indexes for table `sma_equipments_mapping`
--
ALTER TABLE `sma_equipments_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `unit` (`name`);

--
-- Indexes for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `sma_groups`
--
ALTER TABLE `sma_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `sma_pages`
--
ALTER TABLE `sma_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_payments`
--
ALTER TABLE `sma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_paypal`
--
ALTER TABLE `sma_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_printers`
--
ALTER TABLE `sma_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_products`
--
ALTER TABLE `sma_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `price_group_id` (`price_group_id`);

--
-- Indexes for table `sma_product_stock`
--
ALTER TABLE `sma_product_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `sma_product_stock_history`
--
ALTER TABLE `sma_product_stock_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `sma_product_type`
--
ALTER TABLE `sma_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_id_name` (`product_id`,`name`);

--
-- Indexes for table `sma_promos`
--
ALTER TABLE `sma_promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_returns`
--
ALTER TABLE `sma_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`return_id`),
  ADD KEY `return_id_2` (`return_id`,`product_id`);

--
-- Indexes for table `sma_sales`
--
ALTER TABLE `sma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`sale_id`),
  ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_sessions`
--
ALTER TABLE `sma_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sma_settings`
--
ALTER TABLE `sma_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sma_shop_settings`
--
ALTER TABLE `sma_shop_settings`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `sma_skrill`
--
ALTER TABLE `sma_skrill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_count_id` (`stock_count_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_units`
--
ALTER TABLE `sma_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `sma_users`
--
ALTER TABLE `sma_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indexes for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_variants`
--
ALTER TABLE `sma_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_brands`
--
ALTER TABLE `sma_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_categories`
--
ALTER TABLE `sma_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_equipments`
--
ALTER TABLE `sma_equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `sma_equipments_mapping`
--
ALTER TABLE `sma_equipments_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_pages`
--
ALTER TABLE `sma_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_product_stock`
--
ALTER TABLE `sma_product_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sma_product_stock_history`
--
ALTER TABLE `sma_product_stock_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sma_product_type`
--
ALTER TABLE `sma_product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sma_promos`
--
ALTER TABLE `sma_promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sma_returns`
--
ALTER TABLE `sma_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_units`
--
ALTER TABLE `sma_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
