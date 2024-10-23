-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 04:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'Clive Dela Cruz', 'clive@yahoo.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2019-04-11 13:56:38'),
(3, 'Admin', 'admin@gmail.com', 'admin', 'admin123', '2024-10-05 15:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(10, 'Leo Tolstoy', '2024-10-07 13:14:39', NULL),
(11, 'J.K. Rowling', '2024-10-07 13:15:08', NULL),
(12, 'Mark Twain', '2024-10-07 13:15:28', NULL),
(13, 'Vikram Seth', '2024-10-07 13:16:00', NULL),
(14, 'Arundhati Roy', '2024-10-07 13:16:22', NULL),
(15, 'R.K. Narayan', '2024-10-07 13:16:40', NULL),
(16, 'Jhumpa Lahiri', '2024-10-07 13:17:04', NULL),
(17, 'Ruskin Bond', '2024-10-07 13:17:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(5, 'The Innovator\'s Dilemma', 5, 14, 101, 4500, '2024-10-07 13:34:52', NULL),
(6, 'Deep Learning', 5, 12, 102, 4000, '2024-10-07 13:36:06', NULL),
(7, 'Clean Code', 5, 10, 103, 1500, '2024-10-07 13:36:44', NULL),
(8, 'A Brief History', 6, 4, 201, 1000, '2024-10-07 13:37:24', NULL),
(9, 'The Selfish Gene ', 6, 2, 202, 1200, '2024-10-07 13:37:59', NULL),
(10, 'Sapiens: A Brief History of Humankind', 6, 15, 203, 1500, '2024-10-07 13:38:32', NULL),
(11, 'Good to Great ', 7, 11, 301, 1200, '2024-10-07 13:39:19', NULL),
(12, 'The 7 Habits of Highly Effective People ', 7, 17, 302, 1000, '2024-10-07 13:40:14', NULL),
(13, 'The Lean Startup', 7, 1, 303, 1500, '2024-10-07 13:40:48', NULL),
(14, 'Oxford English Dictionary', 9, 10, 401, 15000, '2024-10-07 13:41:24', NULL),
(15, 'Britannica Encyclopedia', 9, 12, 402, 10000, '2024-10-07 13:41:57', NULL),
(16, 'The Chambers Dictionary ', 9, 4, 403, 1500, '2024-10-07 13:42:36', NULL),
(17, 'The 4 Hour Body', 10, 14, 501, 1500, '2024-10-07 13:44:06', '2024-10-07 13:45:29'),
(18, 'A History of India', 11, 16, 601, 2000, '2024-10-07 13:44:51', '2024-10-07 13:46:44'),
(19, 'The Art of the Possible: The Story of the Guggenheim Museum', 12, 3, 701, 2500, '2024-10-07 13:47:19', NULL),
(20, 'Atomic Habits', 14, 13, 801, 1000, '2024-10-07 13:48:08', NULL),
(21, 'Lonely Planet Guides (Various Destinations)', 15, 15, 901, 2500, '2024-10-07 13:48:59', NULL),
(22, 'The Devil in the White City', 16, 10, 1001, 1500, '2024-10-07 13:49:45', NULL),
(23, 'The Bhagavad Gita', 17, 15, 1101, 1000, '2024-10-07 13:50:34', NULL),
(24, 'The Republic ', 18, 13, 1201, 500, '2024-10-07 13:51:03', NULL),
(25, 'Gödel, Escher, Bach: An Eternal Golden Braid ', 19, 4, 1301, 2000, '2024-10-07 13:52:14', NULL),
(26, 'The Complete Book of Gardening', 20, 5, 1401, 1500, '2024-10-07 13:53:06', NULL),
(27, 'The Art of Public Speaking ', 21, 16, 1501, 1300, '2024-10-07 13:53:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 1, '2017-07-04 18:36:16', '2024-10-07 13:01:50'),
(9, 'Dictionaries & Encyclopedias', 1, '2024-10-07 13:01:40', '0000-00-00 00:00:00'),
(10, 'Health & Fitness', 1, '2024-10-07 13:02:36', '0000-00-00 00:00:00'),
(11, 'History', 1, '2024-10-07 13:02:52', '0000-00-00 00:00:00'),
(12, 'Art and Architecture', 1, '2024-10-07 13:03:24', '2024-10-07 13:03:34'),
(14, 'Self-Help', 1, '2024-10-07 13:07:34', '0000-00-00 00:00:00'),
(15, 'Travel', 1, '2024-10-07 13:07:46', '0000-00-00 00:00:00'),
(16, 'True Crime', 1, '2024-10-07 13:08:01', '0000-00-00 00:00:00'),
(17, 'Prayer, Religion, Spirituality', 1, '2024-10-07 13:08:34', '2024-10-07 13:08:55'),
(18, 'Politics', 1, '2024-10-07 13:09:26', '0000-00-00 00:00:00'),
(19, 'Math & Science', 1, '2024-10-07 13:10:04', '0000-00-00 00:00:00'),
(20, 'Home & Garden', 1, '2024-10-07 13:10:26', '0000-00-00 00:00:00'),
(21, 'Guide or How-to', 1, '2024-10-07 13:10:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', '2024-10-07 12:03:09', 1, 0),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL),
(7, NULL, 'SID017', '2024-10-07 11:59:44', NULL, NULL, NULL),
(8, 4, 'SID017', '2024-10-07 12:01:20', '2024-10-07 12:03:18', 1, 0),
(9, 8, 'SID018', '2024-10-07 13:59:27', NULL, NULL, NULL),
(10, 27, 'SID019', '2024-10-07 14:00:01', NULL, NULL, NULL),
(11, 27, 'SID020', '2024-10-07 14:00:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(15, 'SID018', 'Shyam', 'shyam@gmail.com', '123456789', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, '2024-10-07 13:56:13', NULL),
(16, 'SID019', 'Nitin', 'nitin@gmail.com', '1234567890', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, '2024-10-07 13:57:08', NULL),
(17, 'SID020', 'Tanmay', 'tanmay@gmail.com', '1234567890', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, '2024-10-07 13:57:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
