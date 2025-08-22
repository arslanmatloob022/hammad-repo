-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2024 at 10:20 AM
-- Server version: 10.6.19-MariaDB-cll-lve-log
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ishiunnk_oman`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `reg_type` varchar(100) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `arbicname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `passport` varchar(100) NOT NULL,
  `civilid` varchar(100) NOT NULL,
  `sponsor` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `validity` date NOT NULL,
  `toDate` date NOT NULL,
  `medicalcentre` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `reg_type`, `reg_no`, `name`, `arbicname`, `dob`, `nationality`, `sex`, `passport`, `civilid`, `sponsor`, `category`, `validity`, `toDate`, `medicalcentre`, `created_at`) VALUES
(22, 'FOR VISA & RESIDENCY PURPOSE-SERVICE TRANSFER', 'SCW3005241455773', 'MUHAMMAD AWAIS KHAN', 'Ù…Ø­Ù…Ø¯ Ø§ÙˆÛŒØ³ Ø®Ø§Ù†', '2024-06-07', 'PAKISTANI', 'male', 'LG4124993', '93207549', 'MODERN HANDS SILVER', 'SPONSOR CHANGE - LABOUR', '2024-06-13', '2024-06-14', 'SAFA MED DIAGNOSTIC CENTRE - GHUBRA', '2024-06-28 18:10:07'),
(23, 'Hamza', '123343', 'Muhammad Hamza', 'Ø§Ø³Ø¯ÙØ§Ø³Ø¯Ù', '2024-06-28', 'pakistani', 'male', '1234567890', '23452345', 'fdgdfgdfg', 'Hamza', '2024-06-28', '2024-06-28', 'jkhjsdf kljhadsklf', '2024-06-29 05:45:25'),
(24, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241529684', 'Kashif Dilawar', 'Ú©Ø§Ø´Ù Ø¯Ù„ÙˆØ§Ø±', '1984-04-25', 'PAKISTANI', 'male', 'AL7790713', '127665046', 'Ø§Ù…ÙˆØ§Ø¬ Ø´Ù†Ù‡ Ø§Ù„Ù…ØªÙƒØ§Ù…Ù„Ø© Ø´ Ù… Ù…', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-16', '2024-12-15', 'AFAQ THOUGHTS', '2024-10-21 20:06:37'),
(25, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241529904', 'Ahmed Nashan', 'Ø§Ø­Ù…Ø¯ Ù†Ø´Ø§Ù†', '1988-03-12', 'PAKISTANI', 'male', 'VT1152982', '97753942', 'Ø§Ù…ÙˆØ§Ø¬ Ø´Ù†Ù‡ Ø§Ù„Ù…ØªÙƒØ§Ù…Ù„Ø© Ø´ Ù… Ù…', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-14', '2024-12-13', 'AL MUZN OASIS', '2024-10-21 20:09:14'),
(26, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528984', 'Kashif', 'ÙƒØ´ÙŠÙ', '1997-09-09', 'PAKISTANI', 'male', 'LA8678091', '137290932', 'Ø±Ù…Ø§Ù„ Ø§Ù„Ø¯Ø§Ø± Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-22 18:23:12'),
(27, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241529894', 'Sheraz', 'Ø´ÙŠØ±Ø§Ø²', '2003-09-05', 'PAKISTANI', 'male', 'HN1182131', '137298339', 'Ù…ÙˆØ¬ Ø§Ù„Ø¯Ø§Ø± Ø§Ù„Ø¯ÙˆÙ„ÙŠØ© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-16', '2024-12-15', 'AL MUZN OASIS', '2024-10-22 18:25:22'),
(28, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535895', 'Abrar', 'Ø§Ø¨Ø±Ø§Ø±', '2002-10-01', 'PAKISTANI', 'male', 'YK1837231', '137298166', 'Ù…ÙˆØ¬ Ø§Ù„Ø¯Ø§Ø± Ø§Ù„Ø¯ÙˆÙ„ÙŠØ© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-14', '2024-12-13', 'AFAQ THOUGHTS', '2024-10-22 18:27:55'),
(29, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548917', 'Sajid', 'Ø³Ø¬Ø§Ø¯', '1976-08-11', 'PAKISTANI', 'male', 'AD0333465', '137380842', 'Ù†Ø³ÙŠÙ… Ø§Ù„Ø´Ù…Ø§Ù„ Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-17', '2024-12-16', 'AL MUZN OASIS', '2024-10-22 18:30:05'),
(30, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NLC0207241548994', 'Anum', 'Ø§Ù†ÙˆÙ…', '1990-01-17', 'PAKISTANI', 'male', 'AK0342723', '137357971', 'Ù†Ø³ÙŠÙ… Ø§Ù„Ø´Ù…Ø§Ù„ Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-17', '2024-12-16', 'AFAQ THOUGHTS', '2024-10-22 18:32:40'),
(31, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489094', 'Muhammad Irfan', 'Ù…Ø­Ù…Ø¯ Ø¹Ø±ÙØ§Ù† ', '1978-01-01', 'PAKISTANI', 'male', 'AR5338344', '137391945', 'Ø±Ù…Ø§Ù„ Ø§Ù„Ù…Ø³ÙØ§Ù‡ Ø§Ù„Ø°Ù‡Ø¨ÙŠÙ‡', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-21', '2024-12-20', 'AL MUZN OASIS', '2024-10-22 18:36:36'),
(32, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528897', 'MUHAMMAD AFAQ MUHAMMAD JAFFAR IQBAL', 'Ù…Ø­Ù…Ø¯ Ø¢ÙØ§Ù‚ Ù…Ø­Ù…Ø¯ Ø¬Ø¹ÙØ± Ø¥Ù‚Ø¨Ø§Ù„', '2002-07-07', 'PAKISTANI', 'male', 'AF1565311', '136891479', 'Ù…Ø´Ø§Ø±ÙŠØ¹ ÙÙ‡ÙŠÙ… Ø¨Ù† Ø¬Ù…Ø¹Ù‡ Ø¨Ù† Ø®Ù…ÙŠØ³ Ø§Ù„Ø¨Ø·Ø§Ø´ÙŠ ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-21', '2024-12-20', 'AFAQ THOUGHTS', '2024-10-22 18:38:26'),
(33, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535585', 'MUHAMMAD REHAN KHALIL CHAUDHRY MUHAMMAD KHALIL', 'Ù…Ø­Ù…Ø¯ Ø±ÙŠØ­Ø§Ù† Ø®Ù„ÙŠÙ„ Ø´ÙˆØ¯Ø±ÙŠ Ù…Ø­Ù…Ø¯ Ø®Ù„ÙŠÙ„', '1996-12-25', 'PAKISTANI', 'male', 'PZ4137662', '136891592', 'Ù…Ø´Ø§Ø±ÙŠØ¹ ÙÙ‡ÙŠÙ… Ø¨Ù† Ø¬Ù…Ø¹Ù‡ Ø¨Ù† Ø®Ù…ÙŠØ³ Ø§Ù„Ø¨Ø·Ø§Ø´ÙŠ ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-21', '2024-12-20', 'AL MUZN OASIS', '2024-10-22 18:40:48'),
(34, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548038', 'SHAHBAZ', 'Ø´Ø­Ø¨Ø§Ø²', '1998-09-18', 'PAKISTANI', 'male', 'CH1185781', '137419736', 'Ø§Ù†ÙˆØ§Ø± Ø§Ø³Ø§Ø·ÙŠØ± Ø§Ù„ØºÙ„Ø§Ø¬ÙŠ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AFAQ THOUGHTS', '2024-10-22 18:43:07'),
(35, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489038', 'Khurram', 'Ø®Ø±Ø§Ù…', '1992-06-20', 'PAKISTANI', 'male', 'LP5169911', '137392282', 'Ù‡Ù…Ø§ÙŠÙ„ Ø§Ù„Ù…Ù‡Ø§ Ù„Ù„Ø®Ø¯Ù…Ø§Øª Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-21', '2024-12-20', 'AL MUZN OASIS', '2024-10-22 19:09:28'),
(36, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCN2906241535765', 'ARSHAD MEHMOOD', 'Ø§Ø±Ø´Ø¯ Ù…Ø­Ù…ÙˆØ¯', '1974-08-10', 'PAKISTANI', 'male', 'FP0153793', '127598092', 'Ø´ÙÙ‚Øª Ø¹Ù„ÙŠ Ù…Ø­Ù…Ø¯ ØµØ¯ÙŠÙ‚ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª ', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-22 18:47:50'),
(37, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528989', 'MUHAMMAD SUFYAN MUHAMMAD', 'Ù…Ø­Ù…Ø¯ Ø³ÙÙŠØ§Ù† Ù…Ø­Ù…Ø¯', '2000-04-05', 'PAKISTANI', 'male', 'BK5545301', '137396951', ' Ø§Ù„ÙŠØ§Ù‚ÙˆØª Ù„Ù„ØªØ¬Ø§Ø±Ù‡ Ù„Ù„Ø§Ø¹Ù…Ø§Ù„ ÙˆØ§Ù„Ø§Ø³ØªØ«Ù…Ø§Ø±', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-20', '2024-12-19', 'AL MUZN OASIS ', '2024-10-22 18:51:24'),
(38, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528984', 'Muhammad', 'Ù…Ø­Ù…Ø¯', '1980-01-02', 'PAKISTANI', 'male', 'AF1884484', '137351255', 'Ù…Ø³Ù†Ø¯ ÙÙ„Ø§Ø­ Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠØ©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-17', '2024-12-16', 'AFAQ THOUGHTS', '2024-10-23 18:41:15'),
(39, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241529785', 'Seemab Ahmed', 'Ø³ÙŠÙ…Ø§Ø¨ Ø£Ø­Ù…Ø¯', '1981-02-15', 'PAKISTANI', 'male', 'AL2851573', '136659454', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø±ÙˆØ§Ø¦Ø¹ Ø§Ù„Ø§Ù†ØµØ¨ Ù„Ù„Ù…Ù‚Ø§ÙˆÙ„Ø§Øª Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AL MUZN OASIS', '2024-10-23 18:46:02'),
(40, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241538947', 'MUHAMMAD ASHFAQ', 'Ù…Ø­Ù…Ø¯ Ø£Ø´ÙÙ‚', '1989-06-10', 'PAKISTANI', 'male', 'KE1842582', '137291404', 'Ù†Ø³ÙŠÙ… Ø§Ù„Ø´Ù…Ø§Ù„ Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-23 18:48:38'),
(41, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548934', 'FAISAL HANIF ', 'ÙÙŠØµÙ„ Ø­Ù†ÙŠÙ', '1994-01-01', 'PAKISTANI', 'male', 'DG6788541', '136668764', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø§Ù„ÙˆÙØ±Ø© Ù„Ù„Ø§Ù†Ø´Ø§Ø¡Ø§Øª Ø§Ù„Ø´Ø§Ù…Ù„Ø© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-08', '2024-12-07', 'AL MUZN OASIS', '2024-10-23 18:53:55'),
(42, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535784', 'Nadeem shahzad', 'Ù†Ø¯ÛŒÙ… Ø´Ø§Ù‡Ø²Ø§Ø¯', '1973-04-04', 'PAKISTANI', 'male', 'BH9997893', '137207961', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø§Ù„Ù†Ø®Ø¨Ù‡ Ø§Ù„Ø­Ø¯ÙŠØ«Ù‡ Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ ÙˆØ§Ù„Ø¥Ù†Ø´Ø§Ø¡Ø§Øª Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-03', '2024-12-02', 'AFAQ THOUGHTS', '2024-10-23 20:03:58'),
(43, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NLC0207241548073', 'MUHAMMAD HAMZA', 'Ù…Ø­Ù…Ø¯ ÛÙ…Ø²Û', '2001-09-29', 'PAKISTANI', 'male', 'HW4152441', '137391842', 'Ù…Ø­Ù…Ø¯ Ø¹Ù…Ø±Ø§Ù† Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø£Ø¹Ù…Ø§Ù„', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-23 19:26:38'),
(44, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241579654', 'Ali', 'Ø¹Ù„ÛŒ', '2004-02-26', 'PAKISTANI', 'male', 'PL9828601', '137426812', 'Ø§Ù„Ø£Ø¬ÙŠØ§Ø¯ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-23 20:13:19'),
(45, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535578', 'Mohsin Ali', 'Ù…Ø­Ø³Ù† Ø¹Ù„ÛŒ', '1996-02-08', 'PAKISTANI', 'male', 'JX1813562', '122441003', 'Ø³Ø±Ø§ÙŠØ§ Ø§Ù„ÙˆÙ‡Ø±Ù‡ Ø§Ù„Ø´Ø§Ù…Ù„Ù‡ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-23 20:17:44'),
(46, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528937', 'MURAD ALI MUKHTAR AHMED', 'Ù…Ø±Ø§Ø¯Ø¹Ù„ÙŠ Ù…Ø®ØªØ§Ø± Ø§Ø­Ù…Ø¯ ', '1989-02-06', 'PAKISTANI', 'male', 'NU1799783', '95378877', 'Ø´Ø±ÙƒØ© ØªÙ„Ø§Ù„ Ø§Ù„Ø´Ù…Ø§Ù„ Ø§Ù„Ø°Ù‡Ø¨ÙŠØ© Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-08', '2024-12-07', 'AFAQ THOUGHTS', '2024-10-26 15:30:52'),
(47, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241529817', 'Ali hassan', 'Ø¹Ù„Ù‰ Ø­Ø³Ù† ', '1991-11-18', 'PAKISTANI', 'male', 'BA0129941', '137417043', 'Ø¹Ù„ÙŠ Ø³Ø§Ù„Ù… Ø­Ø«ÙŠØ« Ù„Ù„ØªØ¬Ø§Ø±Ù‡ ÙˆØ§Ù„Ø§Ø¹Ù…Ø§Ù„ ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-26 15:33:39'),
(48, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548784', 'Muhammad ', 'Ù…Ø­Ù…Ø¯ ', '1989-12-10', 'PAKISTANI', 'male', 'CJ1329732', '137398439', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ù†ÙˆØ§Ø¯Ø± Ø§Ù„Ø§Ø¹Ù…Ø§Ø± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AFAQ THOUGHTS', '2024-10-26 15:35:49'),
(49, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535905', 'Asad', 'Ø§Ø³Ø¯ ', '1999-04-06', 'PAKISTANI', 'male', 'MU1825331', '137291545', 'Ø³Ù…Ø§Ø¡ Ø§Ù„Ù…Ù†ØªØ±Ø¨ Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-16', '2024-12-15', 'AL MUZN OASIS', '2024-10-26 15:38:05'),
(50, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528674', 'Qaiser', 'Ù‚ÙŠØµØ±', '1993-01-19', 'PAKISTANI', 'male', 'WC1804382', '137386123', 'Ù…Ø±Ø§Ø³ÙŠ Ø§Ù„Ø´Ø±Ù‚ Ø§Ù„Ù…ØªÙƒØ§Ù…Ù„Ø© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-26 15:41:39'),
(51, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241537837', 'REHAN TARIQ', 'Ø±ÙŠØ­Ø§Ù† Ø·Ø§Ø±Ù‚', '1992-10-30', 'PAKISTANI', 'male', 'CP7967253', '123052813', ' Ø§Ù„Ø±Ø³Ù…Ù‡ Ø§Ù„Ø¬Ù…ÙŠÙ„Ù‡ Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-26 15:44:35'),
(52, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NLC0207241548031', 'MUHAMMAD AWAIS MUHAMMAD YASIN', 'Ù…Ø­Ù…Ø¯ Ø¹ÙˆÙŠØ³ Ù…Ø­Ù…Ø¯ ÙŠØ§Ø³ÙŠÙ†', '1999-07-10', 'PAKISTANI', 'male', 'CJ1699411', '136755269', 'Ø±Ù…Ø§Ù„ Ù…Ø«Ù„Ø« Ø¬Ø²ÙŠØ±Ø© Ø§Ù„Ø®Ø¶Ø±Ø§Ø¡', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-02', '2024-12-01', 'AL MUZN OASIS', '2024-10-26 15:47:45'),
(53, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241529637', 'Muhammad bilal', 'Ù…Ø­Ù…Ø¯ Ø¨Ù„Ø§Ù„', '1989-05-18', 'PAKISTANI', 'male', 'AZ3705113', '91998917', 'Ø¹Ù…Ø±Ø§Ù† Ø§Ù„Ø´Ø±Ù‚ Ø§Ù„Ø£ÙˆØ³Ø· Ù„Ù„Ø­Ù„ÙˆÙ„', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-22', '2024-12-21', 'AFAQ THOUGHTS', '2024-10-26 15:52:02'),
(54, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489028', 'AZHAR HUSSAIN AZHAR', 'Ø£Ø²Ù‡Ø± Ø­Ø³ÙŠÙ† Ø£Ø²Ù‡Ø±', '1978-02-20', 'PAKISTANI', 'male', 'TW6896473', '137404512', 'Ù…Ù†ØµÙˆØ± ÙÙ„Ø§Ø­ ÙÙ‡ÙŠØ¯ Ø§Ù„Ø¹Ø¬Ù…ÙŠ Ù„Ù„ØªØ¬Ø§Ø±Ø© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-26 15:55:14'),
(55, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489717', 'MUHAMMAD SOHAIB', 'Ù…Ø­Ù…Ø¯ ØµÛÛŒØ¨', '2001-04-17', 'PAKISTANI', 'male', 'JK8673932', '137328262', 'ÙÙŠØ§ÙÙŠ Ø§Ù„Ø³ÙŠØ¨ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø§Ø³ØªØ«Ù…Ø§Ø± ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-16', '2024-12-15', 'AL MUZN OASIS', '2024-10-26 15:58:53'),
(56, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241537817', 'SYED MOHIB ALI', 'Ø³ÛŒØ¯ Ù…Ø­Ø¨ Ø¹Ù„ÛŒ', '2003-04-09', 'PAKISTANI', 'male', 'BR9392301', '137328168', 'Ø­Ø³ÙŠÙ† Ø¹Ø¨Ø¯Ø§Ù„Ù„Ù‡ Ø¬ÙÙŠØ±Ø§Ù† Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠØ© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-26 16:03:56'),
(57, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495450438', 'Naveed', 'Ù†Ø§ÙÙŠØ¯', '1993-01-31', 'PAKISTANI', 'male', 'FU1322792', '137423764', 'Ù…Ø´Ø§Ø±Ù‚ Ø§Ù„Ø®Ù„ÙŠØ¬ Ù„Ù„Ø®Ø¯Ù…Ø§Øª ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-26 16:06:14'),
(58, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528568', 'Ihsan', 'Ø§Ø­Ø³Ù†', '1985-01-01', 'PAKISTANI', 'male', 'BP6514262', '137270566', 'Ù…Ø¤Ø³Ø³Ø© ÙØ±ÙŠÙ‚ Ø§Ù„Ø±ÙˆØ§Ø¨ÙŠ Ø§Ù„Ù…Ø¹Ù…Ø§Ø±ÙŠØ© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-26 16:08:38'),
(59, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495908168', 'Abrar', 'Ø§Ø¨Ø±Ø§Ø± ', '1995-01-01', 'PAKISTANI', 'male', 'XV6908571', '137335909', 'Ø·ÙŠÙˆÙ Ø§Ù„Ø­Ø¯ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„Ù…Ù‚Ø§ÙˆÙ„Ø§Øª Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-21', '2024-12-20', 'AL MUZN OASIS', '2024-10-26 16:23:55'),
(60, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241539163', 'Asif ali', 'Ø§Ø³ÙŠÙ Ø¹Ù„ÙŠ', '1992-11-23', 'PAKISTANI', 'male', 'AC9332833', '137413466', 'Ø§Ù„Ø§Ø³Ø§Ø³ Ø§Ù„Ù…Ù…ÙŠØ² Ø§Ù„Ø§ÙˆÙ„ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ù…Ù‚Ø§ÙˆÙ„Ø§Øª ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-26 18:49:19'),
(61, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548058', 'Bilal', 'Ø¨Ù„Ø§Ù„ ', '1996-10-15', 'PAKISTANI', 'male', 'XE6901642', '137401323', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø¹Ø¨ÙŠØ¯Ù‡ Ø¨Ù†Øª Ù…Ø²Ù‡ÙˆØ¯ Ø¨Ù† Ø³Ø§Ù„Ù… Ø§Ù„Ø²Ø±Ø¹ÙŠØ© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-26 19:46:39'),
(62, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NLC0207241548937', 'Muhammad Noman Muhammad', 'Ù…Ø­Ù…Ø¯ Ù†Ø¹Ù…Ø§Ù† Ù…Ø­Ù…Ø¯ ', '2002-11-18', 'PAKISTANI', 'male', 'BP9200781', '135784616', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø²Ù‡ÙˆØ± Ø§Ù„ÙˆØ§ØµÙ„ Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ Ø§Ù„ØªØ¬Ø§Ø±ÙŠØ©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-09', '2024-12-08', 'AFAQ THOUGHTS', '2024-10-26 20:18:52'),
(63, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241528895', 'Usman safdar', 'Ø¹Ø«Ù…Ø§Ù† ØµÙØ¯Ø§Ø±', '1987-11-28', 'PAKISTANI', 'male', 'BS5578272', '92309648', 'Ø±Ø¨ÙˆØ¹ Ø±Ø£Ø³ Ù…Ø¯Ø±ÙƒØ© Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ Ø§Ù„ØªØ¬Ù€Ù€Ù€Ù€Ù€Ø§Ø±ÙŠØ© Ø´ Ù… Ù… ', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-27 19:45:46'),
(64, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241529785', 'MD AZAD HOSSAIN', 'Ù…Ø¯ Ø§Ø²Ø§Ø¯ Ø­Ø³ÙŠÙ†', '1992-02-01', 'BANGLADESH', 'male', 'A01953092', '127679338', 'Ù…Ø­Ù…Ø¯ Ø´Ù‡Ø¨Ø§Ø² Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø§Ù„Ø¯ÙˆÙ„ÙŠØ©', 'SPONSOR CHANGE - ABOUR, & RESIDENT CARD (WORKERS)', '2024-10-16', '2024-12-15', 'AL MUZN OASIS', '2024-10-27 19:48:21'),
(65, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCN2906241535728', 'JAVED MUHAMMED HUSSAIN', 'Ø¬Ø§ÙÙŠØ¯ Ù…Ø­Ù…Ø¯ Ø­Ø³ÙŠÙ†', '1987-01-01', 'PAKISTANI', 'male', 'CF8675462', '83609949', 'Ø£Ø¨Ùˆ Ø³ÙÙŠØ§Ù† Ø³Ù„Ø·Ø§Ù† Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª ', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-22', '2024-12-21', 'AFAQ THOUGHTS', '2024-10-27 19:50:08'),
(66, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548037', 'TARIQ HUSSAIN', 'Ø·Ø§Ø±Ù‚ Ø­Ø³ÛŒÙ†', '1986-01-01', 'PAKISTANI', 'male', 'BR6892384', '137419844', 'Ø´Ø±ÙƒØ© Ø²Ù‡ÙˆØ± Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø­Ø¯ÙŠØ«Ø© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-27 19:52:01'),
(67, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241527967', 'Nazar', 'Ù†Ø²Ø§Ø±', '1991-01-01', 'PAKISTANI', 'male', 'DH0169012', '137433265', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø§Ù†Ø¬Ø§Ø² Ø§Ù„Ø¹Ø²Ù… Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ù…Ù‚Ø§ÙˆÙ„Ø§Øª ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-24', '2024-12-23', 'AFAQ THOUGHTS', '2024-10-27 19:53:52'),
(68, 'FOR VISA & RESIDENCY PURPOSE - RENEWAL', 'NRC02072495489073', 'AZEEM KHAN JAMALI', 'Ø§Ø²ÙŠÙ… Ø®Ø§Ù† Ø¬Ù…Ø§Ù„ÙŠ', '1984-01-01', 'PAKISTANI', 'male', 'AN4111894', '78438411', 'Ù‡Ù†Ø¯Ø³Ø© Ø§Ù„Ù…Ø³ØªÙ‚Ø¨Ù„ Ø§Ù„ÙˆØ·Ù†ÙŠØ©', 'RENEW - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-27', '2024-12-26', 'AL MUZN OASIS', '2024-10-27 19:55:52'),
(69, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535785', 'BAHADAR', 'Ø¨Ù‡Ø§Ø¯Ø±', '2002-06-17', 'PAKISTANI', 'male', 'ME1836671', '137221377', ' Ø§Ù„Ø±Ø¤ÙŠØ§ Ù„Ù„Ø§Ø³ØªØ«Ù…Ø§Ø± Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-08', '2024-12-07', 'AL MUZN OASIS', '2024-10-27 19:57:48'),
(70, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SLN2906241535769', 'NOUMAN', 'Ù†ÙˆÙ…Ø§Ù†', '2001-12-18', 'PAKISTANI', 'male', 'MQ1518281', '137245934', ' Ø§Ù„Ø±Ø¤ÙŠØ§ Ù„Ù„Ø§Ø³ØªØ«Ù…Ø§Ø± Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-08', '2024-12-07', 'AFAQ THOUGHTS', '2024-10-27 19:59:20'),
(71, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241547857', 'Nazeer Ahmad', 'Ù†Ø²ÛŒØ± Ø§Ø­Ù…Ø¯ ', '1981-03-20', 'INDIA', 'male', 'U9405514', '122553068', 'Ø³Ø±Ø§ÙŠØ§ Ø§Ù„ÙˆÙ‡Ø±Ù‡ Ø§Ù„Ø´Ø§Ù…Ù„Ù‡ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-27 20:01:34'),
(72, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489058', 'ASIF ABDUl', 'Ø¹Ø§ØµÙ Ø¹Ø¨Ø¯ÙˆÙ„', '1992-11-21', 'PAKISTANI', 'male', 'CR6274722', '137456183', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø§Ù„Ø³Ù†Ø¯Ø³ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-26', '2024-12-25', 'AFAQ THOUGHTS', '2024-10-27 20:03:23'),
(73, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535678', 'CHOUDHRY RASHID', 'ØªØ´ÙˆØ¯Ø±ÙŠ Ø±Ø§Ø´Ø¯', '1985-04-15', 'PAKISTANI', 'male', 'BL5776324', '136358799', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø¬Ø³ÙˆØ± Ø§Ù„Ø±Ø§ÙƒØ© Ù„Ù„Ø§Ù†Ø´Ø§Ø¡Ø§Øª Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AL MUZN OASIS', '2024-10-27 20:05:25'),
(74, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241528675', 'MD SHAHADAT HOSSEN', 'Ù…Ø­Ù…Ø¯ Ø´Ø­Ø§Ø¯Ø© Ø­Ø³ÙŠÙ†', '1995-03-03', 'BANGLADESH', 'male', 'EL0977839', '115018601', 'Ø§Ø¨Ùˆ Ø¹ØµØ§Ù… Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-22', '2024-12-21', 'AFAQ THOUGHTS', '2024-10-27 20:10:43'),
(75, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535784', 'Muhammad ', 'Ù…Ø­Ù…Ø¯ ', '1995-06-15', 'PAKISTANI', 'male', 'FZ1884891', '137372867', 'Ø¨Ø´Ø§Ø¦Ø± Ø§Ù„ØªØ¹Ù…ÙŠØ± Ø§Ù„Ø¯ÙˆÙ„ÙŠØ© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-27 20:12:09'),
(76, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NLC0207241548175', 'Murtaza', 'Ù…ÙˆØ±ØªØ²Ù‰', '1980-01-01', 'PAKISTANI', 'male', 'KA4108302', '137462285', ' Ø§Ù„Ù…ÙˆØ¬ Ø§Ù„Ø¹Ø§Ù„ÙŠ Ù„Ù„Ø¥Ø³ØªØ«Ù…Ø§Ø± ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-26', '2024-12-25', 'AL MUZN OASIS', '2024-10-27 20:14:08'),
(77, 'FOR VISA & RESIDENCY PURPOSE - RENEWAL', 'NRC02072495489673', 'Muhammad Azhar Muhammad Ibrahim', 'Ù…Ø­Ù…Ø¯ Ø§Ø²Ù‡Ø§Ø± Ù…Ø­Ù…Ø¯ Ø§Ø¨Ø±Ø§Ù‡ÛŒÙ…', '1989-03-01', 'PAKISTANI', 'male', 'BD1843454', '94824511', 'Ù†Ø§ØµØ± Ù…Ø­Ù…Ø¯ Ø³Ø¹ÙŠØ¯ Ø§Ù„Ù…Ù†Ø°Ø±ÙŠ', 'RENEW - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-27', '2024-12-26', 'AFAQ THOUGHTS', '2024-10-28 07:31:56'),
(78, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489894', 'Muhammad nabeel', 'Ù…Ø­Ù…Ø¯ Ù†Ø¨ÙŠÙ„', '2002-09-02', 'PAKISTANI', 'male', 'YW1835501', '137337553', 'Ù…ÙˆØ§Ù†ÙŠ Ù…Ù†ØªØ²Ù‡Ø§Øª Ø¬Ø¨Ø§Ù„ Ù…ØµÙŠØ±Ù‡ Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-16', '2024-12-15', 'AL MUZN OASIS', '2024-10-27 20:19:59'),
(79, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535784', 'Taha', 'Ø·Ù‡', '1987-10-03', 'PAKISTANI', 'male', 'LM8671711', '137395382', 'ØµØ¹Ø±Ø§Ø¡ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„ØªØ¬Ø§Ø±Ø© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-27 20:21:31'),
(80, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'NRC02072495489073', 'Mubashar Ali', 'Ù…ÙˆØ¨Ø´Ø§Ø± Ø¹Ù„ÙŠ', '1998-07-21', 'PAKISTANI', 'male', 'RS1814252', '126982846', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø­Ø³ÙŠÙ† Ø³Ø§Ù„Ù… Ù„Ù„ØªØ¬Ø§Ø±Ù‡ ÙˆØ§Ù„Ø§Ø¹Ù…Ø§Ù„', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-27 20:23:47'),
(81, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489368', 'Muhammad ', 'Ù…Ø­Ù…Ø¯ ', '1998-10-14', 'PAKISTANI', 'male', 'AS6323892', '137467797', ' ÙØ±Ø­Ø§Øª Ù„Ù„Ù…ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø§Ø³ØªØ«Ù…Ø§Ø± Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-26', '2024-12-25', 'AL MUZN OASIS', '2024-10-27 20:25:39'),
(82, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'NRC02072495489064', 'NAVEED HUSSAIN', 'Ù†Ø§ÙÙŠØ¯ Ø­Ø³ÛŒÙ†', '1988-05-02', 'PAKISTANI', 'male', 'PD6896363', '85513718', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø­Ø³ÙŠÙ† Ø³Ø§Ù„Ù… Ù„Ù„ØªØ¬Ø§Ø±Ù‡ ÙˆØ§Ù„Ø§Ø¹Ù…Ø§Ù„', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-26', '2024-12-25', 'AFAQ THOUGHTS', '2024-10-27 20:27:55'),
(83, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'NLC02072495489895', 'HAFIZ AMANAT ALi', 'Ø­ÙÙŠØ² Ø§Ù…Ø§Ù†Ø§Øª Ø¹Ù„ÙŠ', '1988-02-15', 'PAKISTANI', 'male', 'QM1801572', '127691299', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø­Ø³ÙŠÙ† Ø³Ø§Ù„Ù… Ù„Ù„ØªØ¬Ø§Ø±Ù‡ ÙˆØ§Ù„Ø§Ø¹Ù…Ø§Ù„', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-27 20:29:49'),
(84, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528785', 'Rahul', 'Ø±Ù‡ÙˆÙ„', '2002-10-01', 'INDIA', 'male', 'X4017071', '136497054', 'Ù†Ø³ÙŠÙ… Ø§Ù„ØºØ±ÙˆØ© Ù„Ù„ØªØ¬Ø§Ø±Ø© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-02', '2024-12-01', 'AFAQ THOUGHTS', '2024-10-28 13:21:32'),
(85, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241580695', 'Manoj', 'Ù…Ø§Ù†ÙˆØ¬', '1986-10-26', 'INDIA', 'male', 'B9805490', '136497092', 'Ù†Ø³ÙŠÙ… Ø§Ù„ØºØ±ÙˆØ© Ù„Ù„ØªØ¬Ø§Ø±Ø© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-03', '2024-12-02', 'AFAQ THOUGHTS', '2024-10-28 13:22:59'),
(86, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528891', 'BULKESH', 'Ø¨ÙˆÙ„ÙƒÙŠØ´', '1988-08-07', 'INDIA', 'male', 'P3953047', '137411898', 'Ø§Ù„Ø¥Ø±ØªÙ‚Ø§Ø¡ Ø§Ù„Ø±ÙÙŠØ¹ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ù…Ù‚Ø§ÙˆÙ„Ø§Øª Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-28 13:24:32'),
(87, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528893', 'SHEHZAD', 'Ø´ÙŠÙ‡Ø²Ø§Ø¯', '1996-12-10', 'PAKISTANI', 'male', 'KJ0007532', '137482881', 'Ù…Ø´Ø§Ø±Ù ÙˆØ§Ø¯ÙŠ Ø¹ÙˆØªØ¨ Ø§Ù„Ù…Ù†ÙŠØ±Ø© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AFAQ THOUGHTS', '2024-10-28 20:24:47'),
(88, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528659', 'Yasir', 'ÙŠØ§Ø³Ø±', '1991-09-17', 'PAKISTANI', 'male', 'XT0150362', '137482913', 'Ù…Ø´Ø§Ø±Ù ÙˆØ§Ø¯ÙŠ Ø¹ÙˆØªØ¨ Ø§Ù„Ù…Ù†ÙŠØ±Ø© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AL MUZN OASIS', '2024-10-28 20:26:25'),
(89, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528653', 'SARIB ALI SARIB', 'ØµØ±ÙŠØ¨ Ø¹Ù„ÙŠ ØµØ±ÙŠØ¨', '2001-11-29', 'PAKISTANI', 'male', 'XH1815482', '137465103', 'Ù…Ø´Ø§Ø±Ù ÙˆØ§Ø¯ÙŠ Ø¹ÙˆØªØ¨ Ø§Ù„Ù…Ù†ÙŠØ±Ø© Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AFAQ THOUGHTS', '2024-10-28 20:27:58'),
(90, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535805', 'Ghulam', 'ØºÙ„Ø§Ù… ', '1980-01-12', 'PAKISTANI', 'male', 'PJ1331822', '137446766', 'Ø¹Ø¨Ø¯Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ù‡Ø§Ø´Ù…ÙŠ ÙˆØ´Ø±ÙŠÙƒØ© Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AL MUZN OASIS', '2024-10-28 20:29:30'),
(91, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548069', 'Muhammad Umair Muhammad ', 'Ù…Ø­Ù…Ø¯ Ø¹Ù…ÙŠØ± Ù…Ø­Ù…Ø¯', '2000-10-11', 'PAKISTANI', 'male', 'BL2299111', '137465117', 'Ù…Ø´Ø§Ø±Ù Ø±ÙˆÙŠÙ„Ø© Ø§Ù„Ù…ØªØ£Ù„Ù‚Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-26', '2024-12-25', 'AFAQ THOUGHTS', '2024-10-28 20:31:39'),
(92, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489904', 'Muhammad ', 'Ù…Ø­Ù…Ø¯ ', '1989-05-27', 'PAKISTANI', 'male', 'BZ4163471', '137263476', 'Ø§Ø³ÙˆØ§Ø± Ø§Ù„Ø§ÙÙ„Ø§Ø¬ Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-16', '2024-12-15', 'AL MUZN OASIS', '2024-10-28 20:33:56'),
(93, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241539174', 'Muhammad ikram', 'Ù…Ø­Ù…Ø¯ Ø£ÙƒØ±Ø§Ù…', '1990-04-08', 'PAKISTANI', 'male', 'FH1320182', '125404812', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø§Ù„Ø³Ù†Ø¯Ø³ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AL MUZN OASIS', '2024-10-28 20:37:32'),
(94, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528983', 'Ghulam Ali', 'ØºÙ„Ø§Ù… Ø¹Ù„ÛŒ ', '1996-01-01', 'INDIA', 'male', 'R0480061', '112834412', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø³Ù…ØªÙ‡ Ø¨Ù†Øª Ù…Ø­Ù…Ø¯ Ø¨Ù† Ø­Ù…Ø¯ Ø¨Ù† Ø±Ø§Ø´Ø¯ Ø§Ù„Ø²Ø±Ø¹ÙŠØ©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-02', '2024-12-01', 'AFAQ THOUGHTS', '2024-10-28 20:39:40'),
(95, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528729', 'Muhammad usman', 'Ù…Ø­Ù…Ø¯ Ø¹Ø«Ù…Ø§Ù† ', '2000-04-28', 'PAKISTANI', 'male', 'KQ9844251', '137445023', 'Ø¨Ø´Ø§Ø¦Ø± Ø§Ù„ØªØ¹Ù…ÙŠØ± Ø§Ù„Ø¯ÙˆÙ„ÙŠØ© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AL MUZN OASIS', '2024-10-28 20:42:05'),
(96, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241529817', 'MUHAMMAD JAMSHAID', 'Ù…Ø­Ù…Ø¯ Ø¬Ù…Ø´Ø§ÙŠØ¯ ', '1992-07-10', 'PAKISTANI', 'male', 'AV8217352', '127696923', ' Ø§Ø§Ù„Ø®Ø· Ø§Ù„Ø¨Ø±ÙˆÙ†Ø²ÙŠ Ù„Ù„Ø®Ø¯Ù…Ø§Øª Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AFAQ THOUGHTS', '2024-10-28 20:44:15'),
(97, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241529817', 'ASAD ALI GORAYA', ' Ø§Ø³Ø¯ Ø¹Ù„ÙŠ Ø¬ÙˆØ±Ø§ÙŠØ§', '1993-11-14', 'PAKISTANI', 'male', 'AD4947821', '127022831', ' Ø§Ø§Ù„Ø®Ø· Ø§Ù„Ø¨Ø±ÙˆÙ†Ø²ÙŠ Ù„Ù„Ø®Ø¯Ù…Ø§Øª Ø´ Ù… Ù… ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AL MUZN OASIS', '2024-10-28 20:45:59'),
(98, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489893', 'Muhammad Afzal Hussain Talib', 'Ù…Ø­Ù…Ø¯ Ø£ÙØ¶Ù„ Ø­Ø³ÙŠÙ† Ø·Ø§Ù„Ø¨', '1982-01-13', 'PAKISTANI', 'male', 'DC1510963', '108653617', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø§Ù„Ø³Ù†Ø¯Ø³ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø£Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AFAQ THOUGHTS', '2024-10-28 20:49:10'),
(99, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'NRC02072495489074', 'MUKHTAR AHMAD', 'Ù…Ø®ØªØ§Ø± Ø§Ø­Ù…Ø¯', '1981-01-02', 'PAKISTANI', 'male', 'SF1167383', '74965691', 'Ø¹Ø¨Ø¯Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ù‡Ø§Ø´Ù…ÙŠ ÙˆØ´Ø±ÙŠÙƒØ© Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø´ Ù… Ù… ', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-28 20:51:02'),
(100, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NLC0207241549047', 'Shahad Barayz', 'Ø´Ø§Ù‡Ø¯ Ø¨Ø§Ø± Ø§ÛŒØ²', '1979-05-13', 'PAKISTANI', 'male', 'GM3990482', '95197296', 'Ø´ÙˆØ§Ø·Ø¦ Ø§Ù„Ø´Ø±Ø³', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-14', '2024-12-13', 'AFAQ THOUGHTS', '2024-10-28 20:54:55'),
(101, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535893', 'ASAD HAYAT ASAD', 'Ø£Ø³Ø¯ Ø­ÙŠØ§Ø© Ø£Ø³Ø¯', '1987-03-24', 'PAKISTANI', 'male', 'CE6178842', '137462847', 'Ù…Ø³Ù†Ø¯ ÙÙ„Ø§Ø­ Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠØ© ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AL MUZN OASIS', '2024-10-28 20:56:51'),
(102, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489927', 'Ahmad', 'Ø§Ø­Ù…Ø§Ø¯', '1997-08-14', 'PAKISTANI', 'male', 'BN4717882', '137461601', 'Ù†Ø¬ÙˆÙ… ÙˆÙƒØ§Ù† Ø§Ù„Ù„Ø§Ù…Ø¹Ù‡ Ø´ Ù… Ù…  ', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AL MUZN OASIS', '2024-10-28 20:58:28'),
(103, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241556048', 'MOHAMED RIYAZ', 'Ù…Ø­Ù…Ø¯ Ø±ÙŠØ§Ø¶', '1984-06-10', 'INDIA', 'male', 'W0288400', '64006602', ' Ø§Ù„Ù…Ø³Ø§Ø± Ø§Ù„ÙˆØ·Ù†ÙŠÙ‡ Ù„Ù„Ø§Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù…', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-16', '2024-12-15', 'AFAQ THOUGHTS', '2024-10-28 21:00:31'),
(104, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528894', 'Muhammad', 'Ù…Ø­Ù…Ø¯ ', '2001-04-20', 'PAKISTANI', 'male', 'GA5578381', '137440388', 'Ø±Ø¨ÙˆØ¹ Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© Ù„Ù„Ù…Ø´Ø§Ø±ÙŠØ¹', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-26', '2024-12-25', 'AFAQ THOUGHTS', '2024-10-29 18:41:21'),
(105, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241529895', 'MOHAMMAD SAQIB LEYAQAT', 'Ù…Ø­Ù…Ø¯ Ø³Ø§Ù‚Ø¨ Ù„ÙŠØ§Ù‚Øª', '1972-10-22', 'INDIA', 'male', 'W0291572', '75807537', 'Ø±ÙŠÙÙ‡ Ø§Ù„Ø³ÙˆÙŠÙ‚ Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠÙ‡ ', 'SPONSOR CHANGE - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-15', '2024-12-14', 'AL MUZN OASIS', '2024-10-29 18:44:15'),
(106, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535785', 'Furqan', 'ÙÙˆØ±Ù‚Ø§Ù†', '2003-05-05', 'PAKISTANI', 'male', 'QL1836931', '137399573', 'Ø§Ù„ØªØ´ÙŠÙŠØ¯ Ø§Ù„Ù…Ø¹Ù…Ø§Ø±ÙŠ Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-29 20:36:46'),
(107, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548895', 'WAQAR ALI MUHAMMAD HANIF WAQAR ALI', 'ÙˆÙ‚Ø§Ø± Ø¹Ù„ÙŠ Ù…Ø­Ù…Ø¯ Ø­Ù†ÙŠÙ ÙˆÙ‚Ø§Ø± Ø¹Ù„ÙŠ', '1988-10-08', 'PAKISTANI', 'male', 'PS1803952', '137470293', ' Ø§Ù„Ù…ÙˆØ¬ Ø§Ù„Ø¹Ø§Ù„ÙŠ Ù„Ù„Ø¥Ø³ØªØ«Ù…Ø§Ø± ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø© Ø´ Ù… Ù…', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AL MUZN OASIS', '2024-10-29 20:39:12'),
(108, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NMH2606241528964', 'Ali', 'Ø¹Ù„ÙŠ', '1999-01-01', 'PAKISTANI', 'male', 'TB9891212', '137450156', 'Ø·ÙŠØ¨ Ø®Ù„ÙŠÙ„ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AFAQ THOUGHTS', '2024-10-29 20:41:19'),
(109, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535784', 'GHAFFAR KHAN', 'ØºÙØ§Ø± Ø®Ø§Ù† ', '1995-11-10', 'PAKISTANI', 'male', 'VP4132402', '113925231', 'Ø®ÙŠØ§Ø· Ø§Ù„Ø®Ù„ÙŠØ¬', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AL MUZN OASIS', '2024-10-29 20:47:34'),
(110, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535894', 'Shahzad', 'Ø´Ù‡Ø²Ø§Ø¯', '2001-03-10', 'PAKISTANI', 'male', 'GJ4159081', '137250294', 'Ø§Ù„ØµÙØ§Ø¡ Ø§Ù„Ø£ÙˆÙ„ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„Ø£Ø¹Ù…Ø§Ù„ ÙˆØ§Ù„Ø¥Ù†Ø´Ø§Ø¡Ø§Øª ØªØ¶Ø§Ù…Ù†ÙŠØ©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-15', '2024-12-14', 'AFAQ THOUGHTS', '2024-10-29 20:52:57'),
(111, 'FOR VISA & RESIDENCY PURPOSE - RENEWAL', 'NRC02072495489073', 'Mohammed Tariq Mohammed Hussein', 'Ù…Ø­Ù…Ø¯ Ø·Ø§Ø±Ù‚ Ù…Ø­Ù…Ø¯ Ø­Ø³ÙŠÙ†', '1995-07-18', 'BANGLADESH', 'male', 'EE0385805', '127280977', 'Ø§Ù„Ù…Ø³Ø§Ø± Ø§Ù„ÙˆØ·Ù†ÙŠØ© Ù„Ù„Ø§Ø¹Ù…Ø§Ù„ Ø´ Ù… Ù…', 'RENEW - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-14', '2024-12-13', 'AL MUZN OASIS', '2024-10-29 20:59:18'),
(112, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495489038', 'MUHAMMAD SHAHBAZ MUHAMMAD', 'Ù…Ø­Ù…Ø¯ Ø´Ù‡Ø¨Ø§Ø² Ù…Ø­Ù…Ø¯', '1999-01-18', 'PAKISTANI', 'male', 'YW5152401', '137373606', 'ØµØ¹Ø±Ø§Ø¡ Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-21', '2024-12-20', 'AL MUZN OASIS', '2024-10-29 21:01:57'),
(113, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528983', 'Muhammad ', 'Ù…Ø­Ù…Ø¯', '2002-11-05', 'PAKISTANI', 'male', 'RC6807892', '137351358', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø³Ø§Ù„Ù… Ø¹Ø¨Ø¯Ø§Ù„Ù„Ù‡ Ù…Ø­Ù…Ø¯ Ø§Ù„Ø¨Ù„ÙˆØ´ÙŠ Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-16', '2024-12-15', 'AFAQ THOUGHTS', '2024-10-29 21:04:11'),
(114, 'FOR VISA & RESIDENCY PURPOSE - RENEWAL', 'SCN2906241535752', 'Fiaz Ahmad', 'ÙÙŠØ§Ø² Ø§Ø­Ù…Ø§Ø¯', '1980-01-01', 'PAKISTANI', 'male', 'FW1168392', '94756489', 'Ø³Ù…Ø§Ø¡ Ù†Ù…Ø± Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„Ù„Ù…Ø´Ø§Ø±ÙŠØ¹', 'RENEW - LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-30', '2024-12-29', 'AFAQ THOUGHTS', '2024-10-31 04:38:57'),
(115, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495488918', 'MUHAMMAD ALIYAN AMJAD MUHAMMAD ALIYAN', 'Ù…Ø­Ù…Ø¯ Ø¹Ù„ÙŠØ§Ù† Ø£Ù…Ø¬Ø¯ Ù…Ø­Ù…Ø¯ Ø¹Ù„ÙŠØ§Ù†', '2000-06-14', 'PAKISTANI', 'male', 'CF1282622', '137426897', ' Ø±Ø¨ÙˆØ¹ Ø±Ø§Ø³ Ù…Ø¯Ø±ÙƒÙ‡ Ù„Ù„ØªØ¬Ø§Ø±Ø© Ø§Ù„Ø¯ÙˆÙ„ÙŠØ©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-23', '2024-12-22', 'AFAQ THOUGHTS', '2024-10-29 21:12:18'),
(116, 'FOR VISA & RESIDENCY PURPOSE - SERVICE TRANSFER', 'SCW2606241529685', 'Ashikur Rahman', 'Ø¹Ø§Ø´Ù‚ÙˆÙ„ Ø±Ø­Ù…Ø§Ù†', '1978-08-01', 'BANGLADESH', 'male', 'A00637795', '126989153', 'Ø¯ÙŠÙ†Ø§Ù…ÙŠÙƒÙŠØ© Ø£Ø¹Ù…Ø§Ù„ Ø§Ù„Ø´Ø­Ù† ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ù„ÙˆØ¬Ø³ØªÙŠØ© Ø´ Ù… Ù…', 'SPONSOR CHANGE LABOUR, & RESIDENT CARD (WORKERS)', '2024-10-21', '2024-12-28', 'AFAQ THOUGHTS', '2024-10-30 04:30:38'),
(117, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535547', 'MUHAMMAD RIZWAN MUHAMMAD RIAZ', 'Ù…Ø­Ù…Ø¯ Ø±Ø¶ÙˆØ§Ù† Ù…Ø­Ù…Ø¯ Ø±ÙŠØ§Ø²', '1993-04-02', 'PAKISTANI', 'male', 'WJ9892851', '128154597', 'Ø±Ø¨ÙˆØ¹ Ù…Ø³Ù†Ø¯Ù… Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠØ© Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-28', '2024-12-27', 'AFAQ THOUGHTS', '2024-10-30 04:38:05'),
(118, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCW2606241528984', 'Muhammad ', 'Ù…Ø­Ù…Ø¯ ', '2001-02-05', 'PAKISTANI', 'male', 'QH4155471', '137460276', 'Ù‡Ø¯Ù Ø§Ù„Ø´Ø§Ø±Ù‚ Ø§Ù„Ø¬Ø¯ÙŠØ¯', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-27', '2024-12-26', 'AFAQ THOUGHTS', '2024-10-30 18:11:43'),
(119, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'SCN2906241535895', 'Muhammad ', 'Ù…Ø­Ù…Ø¯ ', '2001-10-03', 'PAKISTANI', 'male', 'CJ1693281', '137380786', 'Ø·ÙŠØ¨ Ø®Ù„ÙŠÙ„ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AL MUZN OASIS', '2024-10-30 18:13:41'),
(120, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC0207241548084', 'Muhammad ', 'Ù…Ø­Ù…Ø¯', '1999-06-10', 'PAKISTANI', 'male', 'AQ1038842', '137390024', 'Ù…Ø´Ø§Ø±ÙŠØ¹ Ø±Ø¯Ø§Ø¯ Ø­Ù…Ø¯ Ù„Ù„ØªØ¬Ø§Ø±Ø©', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-22', '2024-12-21', 'AFAQ THOUGHTS', '2024-10-30 18:29:53'),
(121, 'FOR VISA & RESIDENCY PURPOSE - NEW', 'NRC02072495488057', 'Yasir', 'ÙŠØ§ Ø³Ø±', '1994-01-16', 'PAKISTANI', 'male', 'MV1331053', '137480853', 'Ø¹Ù„ÙŠ Ø³Ø§Ù„Ù… Ø­Ø«ÙŠØ« Ù„Ù„ØªØ¬Ø§Ø±Ù‡ ÙˆØ§Ù„Ø§Ø¹Ù…Ø§Ù„', 'NEW - RESIDENT CARD (NON - WORKERS)', '2024-10-29', '2024-12-28', 'AL MUZN OASIS', '2024-10-30 18:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
