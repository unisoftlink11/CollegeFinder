-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 01:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegefinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `bca_ltp`
--

CREATE TABLE `bca_ltp` (
  `id` int(10) NOT NULL,
  `CollegeName` varchar(20) NOT NULL,
  `CollegeAddress` varchar(15) NOT NULL,
  `University` varchar(10) NOT NULL,
  `Link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bca_ltp`
--

INSERT INTO `bca_ltp` (`id`, `CollegeName`, `CollegeAddress`, `University`, `Link`) VALUES
(1, 'dfsalla', 'aosdkdf;a', 'sdfa;;', 'a;fa;');

-- --------------------------------------------------------

--
-- Table structure for table `bim_ktm`
--

CREATE TABLE `bim_ktm` (
  `id` int(10) NOT NULL,
  `CollegeName` varchar(20) NOT NULL,
  `CollegeAddress` varchar(15) NOT NULL,
  `University` varchar(10) NOT NULL,
  `Link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bim_ktm`
--

INSERT INTO `bim_ktm` (`id`, `CollegeName`, `CollegeAddress`, `University`, `Link`) VALUES
(1, 'dfsa', 'dafa', 'dfa', 'dsafd');

-- --------------------------------------------------------

--
-- Table structure for table `bsccsit_ktm`
--

CREATE TABLE `bsccsit_ktm` (
  `id` int(10) NOT NULL,
  `CollegeName` varchar(50) NOT NULL,
  `CollegeAddress` varchar(100) NOT NULL,
  `University` varchar(10) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bsccsit_ktm`
--

INSERT INTO `bsccsit_ktm` (`id`, `CollegeName`, `CollegeAddress`, `University`, `Link`) VALUES
(2, 'Asian College', 'Basundhara', 'TU', 'www.asm.edu.np/course/b-sc-csit/'),
(3, 'Sagarmatha College', 'Kupandole', 'TU', 'www.sagarmathacollege.com'),
(5, 'Swastik College - Contact', '  Address\nChardobato, Bhaktapur', 'TU', 'https://swastikcollege.edu.np/');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Message`) VALUES
('Kanchan Kharel', 'rebel_stha9999@yahoo.com', 'hi'),
('Simran', 'simran@gmail.com', 'hi this is simran shrestha');

-- --------------------------------------------------------

--
-- Table structure for table `knapsack`
--

CREATE TABLE `knapsack` (
  `wt` int(30) NOT NULL,
  `val` int(10) NOT NULL,
  `CollegeName` varchar(50) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knapsack`
--

INSERT INTO `knapsack` (`wt`, `val`, `CollegeName`, `id`) VALUES
(450000, 10, 'St.Lawrence', 1),
(500000, 3, 'Asian College', 2),
(500000, 9, 'St.Xaviers', 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('collegefin', '12345'),
('collegefin', '0112');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RecordID` int(15) NOT NULL,
  `URL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saa_bca`
--

CREATE TABLE `saa_bca` (
  `id` int(15) NOT NULL,
  `First` varchar(30) NOT NULL,
  `Second` varchar(30) NOT NULL,
  `Third` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saa_bca`
--

INSERT INTO `saa_bca` (`id`, `First`, `Second`, `Third`) VALUES
(1, '65%', '45%', '25%');

-- --------------------------------------------------------

--
-- Table structure for table `saa_bim`
--

CREATE TABLE `saa_bim` (
  `id` int(10) NOT NULL,
  `First` varchar(15) NOT NULL,
  `Second` varchar(15) NOT NULL,
  `Third` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saa_bim`
--

INSERT INTO `saa_bim` (`id`, `First`, `Second`, `Third`) VALUES
(1, '85%', '75%', '65%');

-- --------------------------------------------------------

--
-- Table structure for table `sba_bca`
--

CREATE TABLE `sba_bca` (
  `id` int(10) NOT NULL,
  `HSEB` varchar(30) NOT NULL,
  `AdmissionFee` varchar(30) NOT NULL,
  `SemesterFee` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sba_bca`
--

INSERT INTO `sba_bca` (`id`, `HSEB`, `AdmissionFee`, `SemesterFee`) VALUES
(1, 'HSEB Topper', '100%', '100%');

-- --------------------------------------------------------

--
-- Table structure for table `sba_bim`
--

CREATE TABLE `sba_bim` (
  `id` int(10) NOT NULL,
  `HSEB` varchar(30) NOT NULL,
  `AdmissionFee` varchar(30) NOT NULL,
  `SemesterFee` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sba_bim`
--

INSERT INTO `sba_bim` (`id`, `HSEB`, `AdmissionFee`, `SemesterFee`) VALUES
(1, 'HSEB Topper', '85%', '85%');

-- --------------------------------------------------------

--
-- Table structure for table `scholarafteradmission`
--

CREATE TABLE `scholarafteradmission` (
  `id` int(10) NOT NULL,
  `First` varchar(30) NOT NULL,
  `Second` varchar(30) NOT NULL,
  `Third` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarafteradmission`
--

INSERT INTO `scholarafteradmission` (`id`, `First`, `Second`, `Third`) VALUES
(1, '50%', '30%', '20%');

-- --------------------------------------------------------

--
-- Table structure for table `scholarbeforeadmission`
--

CREATE TABLE `scholarbeforeadmission` (
  `id` int(10) NOT NULL,
  `HSEB` varchar(30) NOT NULL,
  `AdmissionFee` varchar(10) NOT NULL,
  `SemesterFee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarbeforeadmission`
--

INSERT INTO `scholarbeforeadmission` (`id`, `HSEB`, `AdmissionFee`, `SemesterFee`) VALUES
(1, 'HSEB Topper', '100%', '100%'),
(2, '85% & Above', '100%', '75%'),
(3, '80% & Above', '80%', '50%'),
(4, '75% & Above', '60%', '40%'),
(5, '65% & Above', '40%', '20%');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `cid` int(20) NOT NULL,
  `CollegeName` varchar(50) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`cid`, `CollegeName`, `Link`) VALUES
(1, 'St.Xavier', '\"http://cs.sxc.edu.np/index.php/academic/bsccsit\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bca_ltp`
--
ALTER TABLE `bca_ltp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bim_ktm`
--
ALTER TABLE `bim_ktm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bsccsit_ktm`
--
ALTER TABLE `bsccsit_ktm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knapsack`
--
ALTER TABLE `knapsack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `saa_bca`
--
ALTER TABLE `saa_bca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saa_bim`
--
ALTER TABLE `saa_bim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sba_bca`
--
ALTER TABLE `sba_bca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sba_bim`
--
ALTER TABLE `sba_bim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarafteradmission`
--
ALTER TABLE `scholarafteradmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarbeforeadmission`
--
ALTER TABLE `scholarbeforeadmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `RecordID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
