-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 06:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy_move`
--

-- --------------------------------------------------------

--
-- Table structure for table `rickshawala`
--

CREATE TABLE `rickshawala` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(255) NOT NULL DEFAULT 'rickshawala',
  `Name` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rickshawala`
--

INSERT INTO `rickshawala` (`ID`, `PageType`, `Name`, `Contact`, `address`) VALUES
(1, 'rickshawala', 'Tarik', '01632030573', 'Notun Bazar'),
(2, 'rickshawala', 'Fahim', '01712325621', 'Sayed Nogor'),
(3, 'rickshawala', 'Nirob', '01632020205', 'Dhanmondi');

-- --------------------------------------------------------

--
-- Table structure for table `shuttle`
--

CREATE TABLE `shuttle` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(255) NOT NULL DEFAULT 'shuttle',
  `S_Time` varchar(255) NOT NULL,
  `A_Time` varchar(255) NOT NULL,
  `Route` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shuttle`
--

INSERT INTO `shuttle` (`ID`, `PageType`, `S_Time`, `A_Time`, `Route`) VALUES
(1, 'shuttle', '01:40pm', '02:00pm', 'UIU to Notun Bazar'),
(2, 'shuttle', '01:40pm', '02:00pm', 'UIU to Notun Bazar'),
(3, 'shuttle', '01:40pm', '02:00pm', 'UIU to Notun Bazar');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', '01632030573', 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-12-11 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `PickupLoc` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `PickupDate` varchar(200) DEFAULT NULL,
  `PickupTime` varchar(200) DEFAULT NULL,
  `DateofRequest` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `AssignTo` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `BookingNumber`, `Name`, `Email`, `PhoneNumber`, `PickupLoc`, `Destination`, `PickupDate`, `PickupTime`, `DateofRequest`, `Remark`, `Status`, `AssignTo`, `UpdationDate`) VALUES
(3, 225235331, 'Sadia Islam', 'SadiaIslam@gmail.com', '01700000000', 'UIU', 'notunbazar', '2023-08-18', '21:22', '2023-08-18 15:22:12', NULL, NULL, NULL, '2023-08-18 15:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `ID` int(10) NOT NULL,
  `DriverID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Uiuid` varchar(10) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Select_Day` varchar(20) DEFAULT NULL,
  `Select_Time` varchar(20) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`ID`, `DriverID`, `Name`, `Uiuid`, `MobileNumber`, `Email`, `Select_Day`, `Select_Time`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'Tarik', 'Tarik Sohan', '011191212', '01787731017', 'Tarik@gmail.com', NULL, NULL, 'Notun Bazar', 'e10adc3949ba59abbe56e057f20f883e', '2023-08-17 22:33:32'),
(2, 'Fahim', 'Fahim', '011191217', '01741158857', 'Fahim@gmail.com', NULL, NULL, 'Notun Bazar', 'e10adc3949ba59abbe56e057f20f883e', '2023-08-17 22:33:32'),
(3, 'rakib', 'Rakib Hasan', '011191115', '01600000000', 'rakib@gmail.com', NULL, NULL, 'Notun Bazar', 'e10adc3949ba59abbe56e057f20f883e', '2023-08-17 22:33:32'),
(4, 'Rashed', 'Rashed', '0145465415', '01632030577', 'Rashed@Gmail.com', 'Sun & Wed', '10:15am', 'Dhanmondi', 'e10adc3949ba59abbe56e057f20f883e', '2023-08-17 22:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', 'Students of UIU currently face significant\ntransportation issues. Due to a shortage of rickshaw, shuttle, lack\nof attention to bus routes and schedules often leaves students\nwith long distances to navigate on foot. To solve this problem,\nwe intend to make a platform that will help students to find a\nrickshaw or they can share bike with a schedule after finishing\ntheir university classes, and there will be also time schedule of\nshuttle services.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'United City, Madani Avenue, Badda, Dhaka, Bangladesh', 'TarikSohan@gmail.com', '01787731017', NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BookingNumber`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 104860557, 'test', 'Approved', '2022-12-16 20:30:05'),
(2, 104860557, 'test', 'On The Way', '2022-12-31 17:05:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rickshawala`
--
ALTER TABLE `rickshawala`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shuttle`
--
ALTER TABLE `shuttle`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rickshawala`
--
ALTER TABLE `rickshawala`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shuttle`
--
ALTER TABLE `shuttle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
