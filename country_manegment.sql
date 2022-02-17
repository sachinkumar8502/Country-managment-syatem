-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 10:11 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country_manegment`
--

-- --------------------------------------------------------

--
-- Table structure for table `insert_tbl_data`
--

CREATE TABLE `insert_tbl_data` (
  `id` int(11) NOT NULL,
  `country_name` int(18) NOT NULL,
  `state_name` int(18) NOT NULL,
  `district_name` int(18) NOT NULL,
  `thesil_name` int(18) NOT NULL,
  `pin_code` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insert_tbl_data`
--

INSERT INTO `insert_tbl_data` (`id`, `country_name`, `state_name`, `district_name`, `thesil_name`, `pin_code`) VALUES
(1, 16, 17, 13, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`country_id`, `country_name`) VALUES
(16, 'india'),
(17, 'usa'),
(33, 'dfgthyjui'),
(34, 'ghjk'),
(35, 'hjk'),
(36, 'fgyukk'),
(37, 'pakistan'),
(38, 'rrerr'),
(39, 'nnml'),
(40, 'gfhjk'),
(41, 'yuklk'),
(42, 'fghjkl'),
(43, 'fghjk'),
(44, 'erty'),
(45, 'fghj'),
(46, '456'),
(47, '46 55'),
(48, 'rrrrr');

-- --------------------------------------------------------

--
-- Table structure for table `tbldistrict`
--

CREATE TABLE `tbldistrict` (
  `district_id` int(11) NOT NULL,
  `country_id` int(18) NOT NULL,
  `state_id` int(18) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldistrict`
--

INSERT INTO `tbldistrict` (`district_id`, `country_id`, `state_id`, `district_name`) VALUES
(9, 16, 18, 'gurugram'),
(10, 16, 18, 'punjab'),
(12, 16, 17, 'bhiwadi'),
(13, 16, 17, 'tijara'),
(14, 16, 19, 'Bhopal'),
(15, 17, 20, 'Brooklyn'),
(16, 33, 23, 'rdtfyuio'),
(17, 16, 18, 'fgjhkl'),
(18, 16, 18, 'fdghjj'),
(19, 16, 25, 'kaanpur'),
(20, 16, 17, 'hyjhhnyj'),
(21, 16, 19, 'fgcfxc');

-- --------------------------------------------------------

--
-- Table structure for table `tblpincode`
--

CREATE TABLE `tblpincode` (
  `pincode_id` int(11) NOT NULL,
  `country_id` int(18) NOT NULL,
  `state_id` int(18) NOT NULL,
  `district_id` int(18) NOT NULL,
  `pin_code` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpincode`
--

INSERT INTO `tblpincode` (`pincode_id`, `country_id`, `state_id`, `district_id`, `pin_code`) VALUES
(2, 16, 17, 8, 301001),
(4, 16, 17, 12, 301019),
(5, 16, 17, 13, 3041452);

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `state_id` int(11) NOT NULL,
  `country_id` int(18) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`state_id`, `country_id`, `state_name`) VALUES
(17, 16, 'rajasthan'),
(18, 16, 'haryana'),
(19, 16, 'M.p'),
(20, 17, 'New York'),
(23, 33, 'gfhjk'),
(24, 35, 'fdghj'),
(25, 16, 'up'),
(26, 38, 'dshnbzzhxbshcnbschgdcgbhss');

-- --------------------------------------------------------

--
-- Table structure for table `tbltehsil`
--

CREATE TABLE `tbltehsil` (
  `tehsil_id` int(11) NOT NULL,
  `country_id` int(18) NOT NULL,
  `state_id` int(18) NOT NULL,
  `district_id` int(18) NOT NULL,
  `tehsil_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltehsil`
--

INSERT INTO `tbltehsil` (`tehsil_id`, `country_id`, `state_id`, `district_id`, `tehsil_name`) VALUES
(1, 16, 17, 8, 'umren'),
(6, 16, 19, 14, 'jonpu'),
(7, 16, 19, 21, 'tryhtjyu,jkil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insert_tbl_data`
--
ALTER TABLE `insert_tbl_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbldistrict`
--
ALTER TABLE `tbldistrict`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tblpincode`
--
ALTER TABLE `tblpincode`
  ADD PRIMARY KEY (`pincode_id`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbltehsil`
--
ALTER TABLE `tbltehsil`
  ADD PRIMARY KEY (`tehsil_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insert_tbl_data`
--
ALTER TABLE `insert_tbl_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbldistrict`
--
ALTER TABLE `tbldistrict`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpincode`
--
ALTER TABLE `tblpincode`
  MODIFY `pincode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbltehsil`
--
ALTER TABLE `tbltehsil`
  MODIFY `tehsil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
