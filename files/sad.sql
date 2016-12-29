-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:80
-- Generation Time: Dec 24, 2016 at 07:51 AM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `m_id` int(11) NOT NULL,
  `description` varchar(11) NOT NULL,
  `m_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`m_id`, `description`, `m_date`) VALUES
(15, 'meet1', '2016-11-10'),
(16, 'meet2', '2016-11-29'),
(17, 'meet3', '2016-11-17'),
(18, 'meet4', '2016-11-23'),
(19, 'meet5', '2016-11-29'),
(20, 'meet6', '2016-11-28'),
(21, 'meet7', '2016-11-28'),
(22, 'meet8', '2016-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `r_id` int(2) NOT NULL,
  `name` varchar(11) NOT NULL,
  `dates` date NOT NULL,
  `time` time NOT NULL,
  `day` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`r_id`, `name`, `dates`, `time`, `day`) VALUES
(9, 'admin', '2016-09-05', '22:41:09', 'Monday'),
(10, 'admin', '2016-09-05', '22:46:51', 'Monday'),
(11, 'sanz', '2016-09-05', '22:46:55', 'Monday'),
(12, 'admin2', '2016-09-05', '22:47:09', 'Monday'),
(13, 'admin', '2016-09-05', '22:47:54', 'Monday'),
(14, 'onar', '2016-09-05', '22:48:28', 'Monday'),
(15, 'admin3', '2016-09-05', '22:49:38', 'Monday'),
(16, 'admin', '2016-09-05', '22:56:33', 'Monday'),
(17, 'admin', '2016-09-06', '12:27:59', 'Tuesday'),
(18, 'admin', '2016-09-06', '13:34:35', 'Tuesday'),
(19, 'admin', '2016-09-06', '13:48:38', 'Tuesday'),
(20, 'admin', '2016-09-06', '18:44:32', 'Tuesday'),
(21, 'admin', '2016-09-07', '20:26:10', 'Wednesday'),
(22, 'admin', '2016-09-07', '22:08:45', 'Wednesday'),
(23, 'admin', '2016-09-07', '22:09:43', 'Wednesday'),
(24, 'admin', '2016-09-07', '22:56:11', 'Wednesday'),
(25, 'admin', '2016-09-08', '13:57:36', 'Thursday'),
(26, 'admin', '2016-09-08', '14:55:12', 'Thursday'),
(27, 'admin', '2016-09-08', '15:12:02', 'Thursday'),
(28, 'admin', '2016-09-08', '15:34:00', 'Thursday'),
(29, 'admin', '2016-09-11', '15:57:41', 'Sunday'),
(30, 'admin', '2016-09-12', '12:48:24', 'Monday'),
(31, 'admin', '2016-09-12', '13:12:10', 'Monday'),
(32, 'admin', '2016-09-12', '15:08:38', 'Monday'),
(33, 'admin', '2016-09-12', '15:09:01', 'Monday'),
(34, 'admin', '2016-09-12', '15:13:37', 'Monday'),
(35, 'admin', '2016-09-12', '15:14:28', 'Monday'),
(36, 'admin', '2016-09-13', '10:22:53', 'Tuesday'),
(37, 'admin', '2016-09-13', '11:04:17', 'Tuesday'),
(38, 'sanz31', '2016-09-13', '11:04:33', 'Tuesday'),
(39, 'admin', '2016-09-13', '15:08:12', 'Tuesday'),
(40, 'admin', '2016-09-13', '17:30:08', 'Tuesday'),
(41, 'admin', '2016-09-13', '17:30:56', 'Tuesday'),
(42, 'sanz31', '2016-09-13', '18:08:51', 'Tuesday'),
(43, 'admin', '2016-09-13', '18:10:43', 'Tuesday'),
(44, 'sanz31', '2016-09-13', '18:10:52', 'Tuesday'),
(45, 'admin', '2016-09-14', '12:55:02', 'Wednesday'),
(46, 'admin', '2016-09-14', '13:22:03', 'Wednesday'),
(47, 'sanz31', '2016-09-14', '13:23:13', 'Wednesday'),
(48, 'admin', '2016-09-14', '13:52:30', 'Wednesday'),
(49, 'sanz31', '2016-09-14', '13:52:44', 'Wednesday'),
(50, 'admin', '2016-09-14', '14:08:12', 'Wednesday'),
(51, 'sanz31', '2016-09-14', '14:08:28', 'Wednesday'),
(52, 'sanz31', '2016-09-14', '14:10:55', 'Wednesday'),
(53, 'admin', '2016-09-14', '14:11:55', 'Wednesday'),
(54, 'sanz31', '2016-09-14', '14:12:11', 'Wednesday'),
(55, 'admin', '2016-09-14', '14:43:02', 'Wednesday'),
(56, 'sanz31', '2016-09-14', '14:46:09', 'Wednesday'),
(57, 'admin', '2016-09-17', '17:18:47', 'Saturday'),
(58, 'sanz31', '2016-09-17', '17:19:41', 'Saturday'),
(59, 'admin', '2016-09-17', '18:16:16', 'Saturday'),
(60, 'sanz31', '2016-09-17', '18:16:22', 'Saturday'),
(61, 'sanz31', '2016-09-17', '18:38:41', 'Saturday'),
(62, 'sanz31', '2016-09-17', '18:39:00', 'Saturday'),
(63, 'rius21', '2016-09-17', '18:42:17', 'Saturday'),
(64, 'sanz31', '2016-09-17', '19:09:08', 'Saturday'),
(65, 'sanz31', '2016-09-17', '19:16:10', 'Saturday'),
(66, 'sanz31', '2016-09-17', '19:24:36', 'Saturday'),
(67, 'sanz31', '2016-09-17', '19:30:11', 'Saturday'),
(68, 'admin', '2016-09-17', '19:34:14', 'Saturday'),
(69, 'sanz31', '2016-09-17', '19:36:21', 'Saturday'),
(70, 'sanz31', '2016-09-17', '20:16:24', 'Saturday'),
(71, 'admin', '2016-09-17', '21:01:53', 'Saturday'),
(72, 'sanz31', '2016-09-17', '22:39:30', 'Saturday'),
(73, 'rius21', '2016-09-17', '22:41:07', 'Saturday'),
(74, 'admin', '2016-09-17', '22:41:17', 'Saturday'),
(75, 'sanz31', '2016-09-17', '22:42:40', 'Saturday'),
(76, 'admin', '2016-09-17', '22:43:27', 'Saturday'),
(77, 'admin', '2016-09-17', '22:44:15', 'Saturday'),
(78, 'sanz31', '2016-09-17', '22:45:46', 'Saturday'),
(79, 'admin', '2016-09-18', '09:56:47', 'Sunday'),
(80, 'sanz31', '2016-09-18', '09:57:06', 'Sunday'),
(81, 'rius21', '2016-09-18', '10:00:47', 'Sunday'),
(82, 'admin', '2016-09-18', '10:01:08', 'Sunday'),
(83, 'sanz31', '2016-09-18', '10:03:23', 'Sunday'),
(84, 'admin', '2016-09-18', '10:04:39', 'Sunday'),
(85, 'sanz3124', '2016-09-20', '17:34:52', 'Tuesday'),
(86, 'admin', '2016-09-20', '17:36:46', 'Tuesday'),
(87, 'admin', '2016-09-20', '17:42:30', 'Tuesday'),
(88, 'admin', '2016-09-20', '17:43:38', 'Tuesday'),
(89, 'admin', '2016-09-20', '18:03:41', 'Tuesday'),
(90, 'admin', '2016-09-20', '18:08:51', 'Tuesday'),
(91, 'admin', '2016-09-20', '18:12:14', 'Tuesday'),
(92, 'admin2', '2016-09-20', '18:12:57', 'Tuesday'),
(93, 'sanz3124', '2016-09-20', '18:23:20', 'Tuesday'),
(94, 'admin', '2016-09-22', '09:07:50', 'Thursday'),
(95, 'admin', '2016-09-29', '12:03:15', 'Thursday'),
(96, 'admin', '2016-09-29', '15:17:22', 'Thursday'),
(97, 'admin2', '2016-09-29', '15:21:55', 'Thursday'),
(98, 'admin', '2016-09-30', '11:06:57', 'Friday'),
(99, 'admin', '2016-10-04', '13:20:11', 'Tuesday'),
(100, 'admin', '2016-10-05', '20:59:54', 'Wednesday'),
(101, 'admin', '2016-10-05', '21:16:55', 'Wednesday'),
(102, 'admin', '2016-10-05', '21:21:09', 'Wednesday'),
(103, 'admin', '2016-10-07', '17:07:13', 'Friday'),
(104, 'admin', '2016-10-07', '17:23:11', 'Friday'),
(105, 'admin', '2016-10-07', '17:44:20', 'Friday'),
(106, 'admin', '2016-10-07', '19:08:26', 'Friday'),
(107, 'admin', '2016-10-07', '19:09:06', 'Friday'),
(108, 'admin', '2016-10-07', '19:44:44', 'Friday'),
(109, 'admin', '2016-10-07', '19:56:48', 'Friday'),
(110, 'admin', '2016-10-12', '16:23:51', 'Wednesday'),
(111, 'admin', '2016-10-12', '16:41:08', 'Wednesday'),
(112, 'admin', '2016-10-12', '17:46:07', 'Wednesday'),
(113, 'admin', '2016-10-12', '20:04:56', 'Wednesday'),
(114, 'admin', '2016-10-13', '08:29:10', 'Thursday'),
(115, 'admin', '2016-10-13', '09:46:05', 'Thursday'),
(116, 'admin', '2016-10-13', '16:21:25', 'Thursday'),
(117, 'admin', '2016-10-13', '16:26:09', 'Thursday'),
(118, 'admin', '2016-10-13', '16:41:59', 'Thursday'),
(119, 'admin', '2016-10-13', '17:15:42', 'Thursday'),
(120, 'admin', '2016-10-14', '08:07:52', 'Friday'),
(121, 'admin', '2016-10-14', '08:12:49', 'Friday'),
(122, 'admin', '2016-10-14', '08:36:18', 'Friday'),
(123, 'admin', '2016-10-14', '09:57:11', 'Friday'),
(124, 'admin', '2016-10-14', '10:04:19', 'Friday'),
(125, 'admin', '2016-10-14', '10:15:24', 'Friday'),
(126, 'admin', '2016-10-14', '10:46:51', 'Friday'),
(127, 'admin', '2016-10-14', '11:04:52', 'Friday'),
(128, 'admin', '2016-10-14', '12:19:11', 'Friday'),
(129, 'admin', '2016-10-14', '14:09:25', 'Friday'),
(130, 'admin2', '2016-10-14', '14:12:33', 'Friday'),
(131, 'admin', '2016-10-14', '14:13:48', 'Friday'),
(132, 'admin', '2016-10-14', '14:16:43', 'Friday'),
(133, 'admin', '2016-10-14', '15:08:33', 'Friday'),
(134, 'admin', '2016-10-14', '18:01:31', 'Friday'),
(135, 'admin', '2016-10-16', '10:01:14', 'Sunday'),
(136, 'admin', '2016-10-16', '10:13:46', 'Sunday'),
(137, 'admin', '2016-10-16', '14:48:10', 'Sunday'),
(138, 'admin', '2016-10-16', '15:09:48', 'Sunday'),
(139, 'admin', '2016-10-17', '08:32:01', 'Monday'),
(140, 'admin', '2016-10-17', '08:49:49', 'Monday'),
(141, 'admin', '2016-10-17', '09:01:52', 'Monday'),
(142, 'admin', '2016-10-17', '12:34:27', 'Monday'),
(143, 'admin', '2016-10-17', '12:44:58', 'Monday'),
(144, 'admin2', '2016-10-17', '12:45:43', 'Monday'),
(145, 'admin', '2016-10-17', '16:24:48', 'Monday'),
(146, 'admin', '2016-10-17', '16:26:07', 'Monday'),
(147, 'admin', '2016-11-16', '04:48:45', 'Wednesday'),
(148, 'admin', '2016-11-16', '04:54:08', 'Wednesday'),
(149, 'admin', '2016-11-16', '05:25:11', 'Wednesday'),
(150, 'admin', '2016-11-19', '16:43:21', 'Saturday'),
(151, 'admin', '2016-11-19', '16:44:02', 'Saturday'),
(152, 'admin', '2016-11-19', '23:19:40', 'Saturday'),
(153, 'admin', '2016-11-19', '23:27:55', 'Saturday'),
(154, 'admin', '2016-11-23', '16:42:07', 'Wednesday'),
(155, 'admin', '2016-11-23', '16:42:17', 'Wednesday'),
(156, 'admin', '2016-11-24', '21:22:43', 'Thursday'),
(157, 'admin', '2016-11-24', '21:27:35', 'Thursday'),
(158, 'admin', '2016-11-24', '21:27:46', 'Thursday'),
(159, 'admin', '2016-11-24', '21:30:15', 'Thursday'),
(160, 'admin', '2016-11-24', '21:37:54', 'Thursday'),
(161, 'admin', '2016-11-24', '21:41:03', 'Thursday'),
(162, 'admin', '2016-11-24', '21:50:38', 'Thursday'),
(163, 'admin', '2016-11-24', '21:54:41', 'Thursday'),
(164, 'admin', '2016-11-24', '21:55:33', 'Thursday'),
(165, 'admin', '2016-11-24', '21:58:48', 'Thursday'),
(166, 'admin', '2016-11-25', '00:52:42', 'Friday'),
(167, 'admin', '2016-11-25', '10:10:20', 'Friday'),
(168, 'admin', '2016-11-25', '10:10:33', 'Friday'),
(169, 'admin', '2016-11-25', '11:11:35', 'Friday'),
(170, 'admin', '2016-11-25', '21:37:59', 'Friday'),
(171, 'admin', '2016-11-25', '23:32:11', 'Friday'),
(172, 'admin', '2016-11-26', '00:29:58', 'Saturday'),
(173, 'admin', '2016-11-26', '09:37:03', 'Saturday'),
(174, 'admin', '2016-11-26', '09:43:47', 'Saturday'),
(175, 'admin', '2016-11-26', '09:43:55', 'Saturday'),
(176, 'admin', '2016-11-26', '09:46:29', 'Saturday'),
(177, 'admin', '2016-11-26', '09:47:41', 'Saturday'),
(178, 'admin', '2016-11-26', '09:47:53', 'Saturday'),
(179, 'admin', '2016-11-26', '09:51:13', 'Saturday'),
(180, 'admin', '2016-11-26', '10:24:03', 'Saturday'),
(181, 'admin', '2016-11-27', '14:28:31', 'Sunday'),
(182, 'admin', '2016-11-27', '21:47:40', 'Sunday'),
(183, 'admin', '2016-11-27', '22:25:14', 'Sunday'),
(184, 'admin', '2016-11-27', '22:25:51', 'Sunday'),
(185, 'admin', '2016-11-27', '22:34:26', 'Sunday'),
(186, 'admin', '2016-11-28', '20:07:29', 'Monday'),
(187, 'admin', '2016-11-28', '20:47:57', 'Monday'),
(188, 'admin', '2016-11-28', '20:53:27', 'Monday'),
(189, 'admin', '2016-11-28', '21:01:36', 'Monday'),
(190, 'admin', '2016-11-28', '21:28:54', 'Monday'),
(191, 'admin', '2016-11-29', '18:00:24', 'Tuesday'),
(192, 'admin', '2016-11-29', '19:18:55', 'Tuesday'),
(193, 'admin', '2016-11-30', '09:35:08', 'Wednesday'),
(194, 'admin', '2016-11-30', '09:39:04', 'Wednesday'),
(195, 'admin', '2016-11-30', '12:22:04', 'Wednesday'),
(196, 'admin', '2016-11-30', '14:31:15', 'Wednesday'),
(197, 'admin', '2016-12-05', '09:26:33', 'Monday'),
(198, 'admin', '2016-12-05', '09:27:45', 'Monday'),
(199, 'admin', '2016-12-05', '09:38:27', 'Monday'),
(200, 'admin', '2016-12-05', '09:48:01', 'Monday'),
(201, 'admin', '2016-12-05', '09:49:46', 'Monday'),
(202, 'admin', '2016-12-05', '09:52:27', 'Monday'),
(203, 'admin', '2016-12-05', '11:36:46', 'Monday'),
(204, 'admin', '2016-12-05', '11:36:55', 'Monday'),
(205, 'admin', '2016-12-05', '11:51:38', 'Monday'),
(206, 'admin', '2016-12-06', '11:28:28', 'Tuesday'),
(207, 'admin', '2016-12-06', '19:54:08', 'Tuesday'),
(208, 'admin', '2016-12-06', '21:58:34', 'Tuesday'),
(209, 'admin', '2016-12-07', '10:30:11', 'Wednesday'),
(210, 'admin', '2016-12-12', '11:36:14', 'Monday'),
(211, 'admin', '2016-12-12', '11:36:23', 'Monday'),
(212, 'admin', '2016-12-12', '11:45:18', 'Monday'),
(213, 'admin', '2016-12-13', '10:06:57', 'Tuesday'),
(214, 'admin', '2016-12-13', '10:06:57', 'Tuesday'),
(215, 'admin', '2016-12-13', '10:35:03', 'Tuesday'),
(216, 'admin', '2016-12-13', '10:46:10', 'Tuesday'),
(217, 'admin', '2016-12-13', '10:47:07', 'Tuesday'),
(218, 'admin', '2016-12-13', '10:53:15', 'Tuesday'),
(219, 'admin', '2016-12-13', '12:22:26', 'Tuesday'),
(220, 'admin', '2016-12-13', '13:11:32', 'Tuesday'),
(221, 'admin', '2016-12-13', '16:38:36', 'Tuesday'),
(222, 'admin', '2016-12-13', '16:40:46', 'Tuesday'),
(223, 'admin', '2016-12-14', '10:35:15', 'Wednesday'),
(224, 'admin', '2016-12-15', '18:11:51', 'Thursday'),
(225, 'admin', '2016-12-17', '14:32:30', 'Saturday'),
(226, 'admin', '2016-12-17', '14:50:26', 'Saturday'),
(227, 'admin', '2016-12-17', '16:41:44', 'Saturday'),
(228, 'admin', '2016-12-17', '17:49:28', 'Saturday'),
(229, 'admin', '2016-12-17', '17:50:46', 'Saturday'),
(230, 'admin', '2016-12-19', '10:19:28', 'Monday'),
(231, 'admin', '2016-12-19', '10:27:52', 'Monday'),
(232, 'admin', '2016-12-19', '10:33:20', 'Monday'),
(233, 'admin', '2016-12-19', '13:17:28', 'Monday'),
(234, 'admin', '2016-12-19', '19:05:37', 'Monday'),
(235, 'admin', '2016-12-19', '19:06:16', 'Monday');

-- --------------------------------------------------------

--
-- Table structure for table `sanction`
--

CREATE TABLE `sanction` (
  `sanc_id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `meet1` varchar(11) NOT NULL,
  `meet2` varchar(11) NOT NULL,
  `meet3` varchar(11) NOT NULL,
  `meet4` varchar(11) NOT NULL,
  `meet5` varchar(11) NOT NULL,
  `meet6` varchar(11) NOT NULL,
  `meet7` varchar(11) NOT NULL,
  `meet8` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `year` enum('1st','2nd','3rd','4th') NOT NULL,
  `cpnum` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `year`, `cpnum`) VALUES
(67, 'Shelly Elmore', '1st', 639423657898),
(68, 'Charolette Erben', '1st', 639423657898),
(69, 'Shirely Defazio', '1st', 639423657898),
(70, 'Xiao Heilmann', '1st', 639423657898),
(71, 'Cheryll Tardugno', '1st', 639423657898),
(72, 'Silvana Grainger', '1st', 639423657898),
(73, 'Kevin Florentino', '1st', 639423657898),
(74, 'Salvatore Jeanlouis', '1st', 639423657898),
(75, 'Donella Weidemann', '1st', 639423657898),
(76, 'Brenna Bob', '1st', 639423657898),
(77, 'Archie Geisel', '1st', 639423657898),
(78, 'Belia Counts', '1st', 639423657898),
(79, 'Mahalia Buschman', '1st', 639423657898),
(80, 'Rosaria Timko', '1st', 639423657898),
(81, 'Zaida Segundo', '1st', 639423657898),
(82, 'Basilia Guptill', '1st', 639423657898),
(83, 'Nickole Rimmer', '1st', 639423657898),
(84, 'Lorriane Schultz', '1st', 639423657898),
(85, 'Tyler Cipolla', '1st', 639423657898),
(86, 'Kia Badon', '1st', 639423657898),
(87, 'Sadye Yager', '1st', 639423657898),
(88, 'Dyan Leary', '1st', 639423657898),
(89, 'Tamisha Raffa', '1st', 639423657898),
(90, 'Aurora Schulman', '1st', 639423657898),
(91, 'Gloria Murtha', '1st', 639423657898),
(92, 'Angila Dimuzio', '1st', 639423657898),
(93, 'Annette Garraway', '1st', 639423657898),
(94, 'Marylynn Romberg', '1st', 639423657898),
(95, 'Rocky Shawver', '1st', 639423657898),
(96, 'Yasmine Ebert', '1st', 639423657898),
(97, 'Vernell Pyles', '1st', 639423657898),
(98, 'Mika Grey', '1st', 639423657898),
(99, 'Ok Mulford', '1st', 639423657898),
(100, 'Guadalupe Epling', '1st', 639423657898),
(101, 'Alvina Friedman', '1st', 639423657898),
(102, 'Cherryl Edlin', '1st', 639423657898),
(103, 'Alonzo Munns', '1st', 639423657898),
(104, 'Loree Kiely', '1st', 639423657898),
(105, 'Sibyl Gloor', '1st', 639423657898),
(106, 'Valeria Petrin', '1st', 639423657898),
(107, 'Ludie Teal', '1st', 639423657898),
(108, 'Yolando Pecor', '1st', 639423657898),
(109, 'Alysia Harton', '1st', 639423657898),
(110, 'Anjanette Brook', '1st', 639423657898),
(111, 'Adena Shoop', '1st', 639423657898),
(112, 'Laurinda Broadnax', '1st', 639423657898),
(113, 'Jessie Bundick', '1st', 639423657898),
(114, 'Larry Rodriques', '1st', 639423657898),
(115, 'Chana Villagomez', '1st', 639423657898),
(116, 'Juana Hadley', '1st', 639423657898);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `sanction`
--
ALTER TABLE `sanction`
  ADD PRIMARY KEY (`sanc_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `r_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `sanction`
--
ALTER TABLE `sanction`
  MODIFY `sanc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
