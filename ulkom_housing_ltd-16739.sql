-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 12:26 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ulkom housing ltd`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressid` int(50) NOT NULL,
  `housenumber` varchar(255) DEFAULT NULL,
  `streetname` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `customerid_fk` int(50) NOT NULL,
  `propertyid_fk` int(50) NOT NULL,
  `studentid_fk` int(50) NOT NULL,
  `staffid_fk` int(50) NOT NULL,
  `haid-fk` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressid`, `housenumber`, `streetname`, `town`, `county`, `postcode`, `customerid_fk`, `propertyid_fk`, `studentid_fk`, `staffid_fk`, `haid-fk`) VALUES
(1000, '80', 'Shelby Street', 'Oxford', 'Borough of Oxford', 'OX 1XZ', 501, 601, 16739, 301, 401),
(1010, '12', 'Green Street', 'London', 'Borough of London', 'E13 3LK', 503, 603, 16741, 303, 403),
(1011, '19', 'East Lane', 'London', 'Borough of London', 'WC1 39V', 502, 602, 16740, 302, 402),
(1020, '129', 'Manor Road', 'London', 'Borough of London', 'RM15 1YZ', 504, 604, 16742, 304, 404),
(1030, '80a', 'Wast Close', 'Cambridge', 'Borough of Cambridge', 'C11 12F', 505, 605, 16743, 305, 405),
(1040, '80b', 'Straight Lane', 'Australia', 'Borough of Sydney', 'W116 YXZ', 506, 606, 16744, 306, 406),
(1050, '66', 'Grove Street', 'Edinburgh', 'Edinburgh', 'ED33 16Z', 507, 607, 16745, 307, 407),
(1060, '69', 'Pacific Road', 'Manchester', 'Machester City', 'MC14 44D', 508, 608, 16746, 308, 408),
(1100, '86', 'Greek Close', 'London', 'Borough of London', 'SE1 1XZ ', 501, 601, 16739, 201, 401),
(1110, '81a', 'Brick Lane', 'London', 'Borough of London', 'EC1 1XF', 502, 602, 16740, 202, 402),
(1120, '111', 'Bethenal Green Road', 'London', 'Borough of London', 'E2 33Z', 503, 603, 16741, 203, 403),
(1130, '99', 'Cambridge Heat Road', 'London', 'Borough of London', 'W2 32M', 504, 604, 16742, 204, 404),
(1140, '101', 'Ferry Lane', 'London', 'Borough of London', 'WC3 M12Z', 505, 605, 16743, 205, 405),
(1150, '101a', 'Gipssy Lane', 'London', 'Borough of London', 'N1 CK5', 506, 606, 16744, 206, 406),
(1160, '55', 'Lytton Road', 'London', 'Borough of London', 'NW WW2', 507, 607, 16745, 207, 407),
(1170, '56', 'Boolein Street', 'London', 'Borough of London', 'SE 19Z', 508, 608, 16746, 208, 408),
(1200, '60', 'Integer Street', 'London', 'Borough of London', 'S15 1XZ', 501, 601, 16739, 201, 401),
(1210, '73', 'Varchar Close', 'West Ham', 'Borough of London', 'E13 9AU', 502, 602, 16740, 202, 402),
(1220, '117', 'Westminister Road', 'London', 'Borough of London', 'W1 1XZ', 503, 603, 16741, 203, 403),
(1230, '117a', 'White City Street', 'Upton Park', 'Borough of Newham', 'W3 9BB', 504, 604, 16742, 204, 404),
(1240, '117b', 'Endclose Lane', 'London', 'Borough of Islington', 'EC1 11K', 505, 605, 16743, 205, 405),
(1250, '117c', 'Barking Road', 'London', 'Borough of London', 'E14 3UP', 506, 606, 16744, 206, 406),
(1260, '33', 'Manor Park Close', 'London', 'Borough of Manor', 'NW1 33V', 507, 607, 16745, 207, 407),
(1270, '205', 'Potato Street', 'Cryford', 'Borough of Cryford', 'DA11 1XX', 508, 608, 16746, 208, 408),
(1300, '206', 'Warvich Closet', 'London', 'Borough of London', 'SW1 6AC', 501, 601, 16739, 201, 401),
(1310, '209', 'London Street', 'Brighton', 'Essex', 'BU11 3WX', 502, 602, 16740, 202, 402),
(1320, '7', 'London Road', 'Chelsea', 'Chelsea County', 'CCE TUZ', 503, 603, 16741, 203, 403),
(1330, '10', 'Sidney Street', 'White City', 'Borough of London', 'WW3 1TZ', 504, 604, 16742, 204, 404),
(1340, '90', 'Sandy Lane', 'London', 'Borough of London', 'SW 34UX', 505, 605, 19643, 205, 405),
(1350, '89', 'Barbican Road', 'London', 'Borough of London', 'WC2 3NW', 506, 606, 16744, 206, 406),
(1360, '300', 'Brexit Road', 'London', 'Borough of London', 'W1 1UZ', 507, 607, 16745, 207, 407),
(1370, '301', 'Wanted Street', 'London', 'Borough of London', 'SE2 1WQ', 508, 608, 16746, 208, 408),
(1400, '49', 'Zebrac Encolse', 'Mures', 'Borough of TG Mures', '156 329', 501, 601, 16739, 301, 401),
(1410, '310', 'Tomato Street', 'Colombia', 'Mayor of Colombia', '1CO CO GRAM', 502, 602, 16740, 302, 402),
(1420, '313', 'Sunrise Close', 'London', 'Borough of London', 'NE5 13Z', 503, 603, 16741, 303, 403),
(1430, '314', 'Sunset Lane', 'Madrid', 'Borough of Madrid', 'M123 1SP', 504, 604, 16742, 304, 404),
(1440, '83', 'George G Street', 'Bacau', 'Borough of Moldova', 'SHE F WAI', 505, 605, 16743, 305, 405),
(1450, '105', 'Alexander Road', 'Toronto', 'County of Toronto', 'TO174 3YRO', 506, 606, 16744, 306, 406),
(1460, '320', 'Wolf close', 'Miami', 'County of Florida', 'FL/NW 555', 507, 607, 16745, 307, 407),
(1470, '321', 'Clarcks Farm Road', 'Kripton', 'County of Suprman', 'SUPER JUMP', 508, 608, 16746, 308, 408);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(50) NOT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `dialingphone` varchar(255) DEFAULT NULL,
  `phonenumber` int(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `addresid_fk` int(50) NOT NULL,
  `staff_fk` int(50) NOT NULL,
  `studentid_fk` int(50) NOT NULL,
  `paymentid_fk` int(50) NOT NULL,
  `haid_fk` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customername`, `dialingphone`, `phonenumber`, `email`, `addresid_fk`, `staff_fk`, `studentid_fk`, `paymentid_fk`, `haid_fk`) VALUES
(501, 'Univesity of Oxford', '+44', 15536678, 'ulkominfo@co.uk', 1000, 201, 16739, 301, 401),
(502, 'UKCBC College', '+44', 101004236, 'ukcbcinfo@co.uk', 1010, 202, 16740, 302, 402),
(503, 'Icon College', '+44', 1100639514, 'iconinfo@co.uk', 1011, 203, 16741, 303, 403),
(504, 'Univesity of Cambridge', '+44', 101100745, 'westendinfo@co.uk', 1020, 204, 16742, 304, 404),
(505, 'Cisco Uni', '+30', 15536678, 'ciscoinfo@au.com', 1030, 205, 16743, 305, 405),
(506, 'The Univesity of Edinburgh', '+44', 101101032, 'info.edinburgh@co.uk', 1040, 606, 16744, 306, 406),
(507, 'The Univesity of Manchester', '+44', 15536594, 'info.manchester@co.uk', 1050, 207, 16745, 307, 407),
(508, 'Queen Marry University of London', '+44', 10165847, 'info.queenmerry@co.uk', 1060, 608, 16746, 308, 408);

-- --------------------------------------------------------

--
-- Table structure for table `housingagent`
--

CREATE TABLE `housingagent` (
  `haid` int(255) NOT NULL,
  `dailingphone` varchar(255) DEFAULT NULL,
  `phonenumber` int(100) DEFAULT NULL,
  `customerid_fk` int(20) NOT NULL,
  `addressid_fk` int(20) NOT NULL,
  `propertyid_fk` int(20) NOT NULL,
  `staffid_fk` int(20) NOT NULL,
  `studentid_fk` int(20) NOT NULL,
  `paymentid_fk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housingagent`
--

INSERT INTO `housingagent` (`haid`, `dailingphone`, `phonenumber`, `customerid_fk`, `addressid_fk`, `propertyid_fk`, `staffid_fk`, `studentid_fk`, `paymentid_fk`) VALUES
(401, '+44', 1221678, 501, 1100, 601, 201, 16739, 301),
(402, '+44', 1865495, 502, 1110, 602, 202, 16740, 302),
(403, '+44', 1221678, 503, 1120, 603, 203, 16741, 303),
(404, '+44', 1001023, 504, 1130, 604, 204, 16742, 304),
(405, '+44', 1019390, 505, 1140, 605, 205, 16743, 305),
(406, '+44', 1895965, 506, 1150, 606, 206, 16744, 306),
(407, '+44', 1212123, 507, 1160, 607, 207, 16745, 307),
(408, '+44', 1221444, 508, 1170, 608, 208, 16746, 308);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(100) NOT NULL,
  `paymentdate` date DEFAULT NULL,
  `paymentdescription` varchar(255) DEFAULT NULL,
  `paymentamount` varchar(255) DEFAULT NULL,
  `customerid_fk` int(20) NOT NULL,
  `staffid_fk` int(20) NOT NULL,
  `haid_fk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `paymentdate`, `paymentdescription`, `paymentamount`, `customerid_fk`, `staffid_fk`, `haid_fk`) VALUES
(301, '2018-07-15', 'PR Flat Unfurnished', '£1.200', 501, 201, 401),
(302, '2017-03-15', 'PR Bungalow Partly-furnished', '£1.250', 502, 202, 402),
(303, '2015-01-15', 'PR Terraced Furnished', '£1.400', 503, 203, 403),
(304, '2019-02-15', 'PR Semi-detached Furnished', '£1.600', 504, 204, 404),
(305, '2017-04-15', 'PR Flat Unfurnished', '£1.150', 505, 205, 405),
(306, '2016-05-15', 'PR Semi-detached Furnished', '£1.500', 506, 206, 406),
(307, '2014-06-15', 'PR Flat Partly-furnished', '£1.170', 507, 207, 407),
(308, '2019-08-15', 'PR Bungalow Furnished', '£1.800', 508, 208, 408);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `propertyid` int(255) NOT NULL,
  `propertytype` varchar(255) DEFAULT NULL,
  `propertydescription` varchar(255) DEFAULT NULL,
  `addressid_fk` int(20) NOT NULL,
  `staffid_fk` int(20) NOT NULL,
  `studentid_fk` int(20) NOT NULL,
  `haid_fk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`propertyid`, `propertytype`, `propertydescription`, `addressid_fk`, `staffid_fk`, `studentid_fk`, `haid_fk`) VALUES
(601, 'Terased', 'Furnished', 1200, 201, 16739, 401),
(602, 'Semidetached', 'Unfurnished', 1210, 202, 16740, 402),
(603, 'Flat', 'Furnished', 1220, 203, 16741, 403),
(604, 'Bungalow', 'Partly Furnished', 1230, 204, 16742, 404),
(605, 'Semidetached', 'Unfurnished', 1240, 205, 16743, 405),
(606, 'Terased', 'Furnished', 1250, 206, 16744, 406),
(607, 'Flat', 'Partly Furnished', 1260, 207, 16745, 407),
(608, 'Terased', 'Unfurnished', 1270, 208, 16746, 408);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dialingcode` varchar(255) DEFAULT NULL,
  `phonenumber` int(100) DEFAULT NULL,
  `departmentname` varchar(100) NOT NULL,
  `customerid_fk` int(20) NOT NULL,
  `addressid_fk` int(20) NOT NULL,
  `propertyid_fk` int(20) NOT NULL,
  `studentid_fk` int(20) NOT NULL,
  `paymentid_fk` int(20) NOT NULL,
  `haid_fk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `firstname`, `lastname`, `dialingcode`, `phonenumber`, `departmentname`, `customerid_fk`, `addressid_fk`, `propertyid_fk`, `studentid_fk`, `paymentid_fk`, `haid_fk`) VALUES
(201, 'Jhon', 'Bang', '+31', 2147483647, 'Customer Service', 501, 1300, 601, 16739, 301, 401),
(202, 'Mark', 'Gotham', '+33', 2147483647, 'Lettings', 502, 1310, 602, 16740, 302, 402),
(203, 'Lewis', 'Hamilton', '+36', 446558794, 'Accountant', 503, 1320, 603, 16741, 303, 403),
(204, 'Jack', 'Gordon', '+37', 2147483647, 'Secretary', 504, 1330, 604, 16742, 304, 404),
(205, 'Gregg', 'Groble', '+36', 2147483647, 'Customer Service', 505, 1340, 605, 16743, 305, 405),
(206, 'Donna', 'Hawkins', '+38', 2147483647, 'Cleaner', 506, 1350, 606, 16744, 306, 406),
(207, 'Rachel', 'Smith', '+39', 2147483647, 'Electrician', 507, 1360, 607, 16745, 307, 407),
(208, 'Laura', 'Grange', '+32', 1134568754, 'Cleaner', 508, 1370, 608, 16746, 308, 408);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dialingphone` varchar(50) DEFAULT NULL,
  `phonenumber` int(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `customerid_fk` int(20) NOT NULL,
  `addressid_fk` int(20) NOT NULL,
  `propertyid_fk` int(20) NOT NULL,
  `staffid_fk` int(20) NOT NULL,
  `haid_fk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `firstname`, `lastname`, `dialingphone`, `phonenumber`, `email`, `customerid_fk`, `addressid_fk`, `propertyid_fk`, `staffid_fk`, `haid_fk`) VALUES
(16739, 'Lawrence', 'Kaszoni', '+44', 1156483647, 'lorant.kaszoni@hotmail.com', 501, 1400, 601, 201, 401),
(16740, 'Green', 'George', '+44', 2147483647, 'g_green@google.com', 502, 1410, 602, 202, 402),
(16741, 'Thomas', 'Coock', '+44', 2055483647, 't_coock@gmail.com', 503, 1420, 603, 203, 403),
(16742, 'Greta', 'Jhonson', '+48', 185483647, 'greta_jhonson@ukmail.uk', 504, 1430, 604, 204, 404),
(16743, 'Jasmine', 'Donna', '+46', 1182483647, 'j_d@mailru.ru', 505, 1440, 605, 205, 405),
(16744, 'Anne', 'Kress', '+38', 2001483647, 'ak47@mailsu.su', 506, 1450, 606, 206, 406),
(16745, 'Mikey', 'Mouse', '+50', 1007483647, 'm&m@disney.com', 507, 1460, 607, 207, 407),
(16746, 'Lavinia', 'Kreskova', '+46', 2101483647, 'lavinia66@mailru.ru', 508, 1470, 608, 208, 408);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `customerid_fk` (`customerid_fk`),
  ADD KEY `propertyid_fk` (`propertyid_fk`),
  ADD KEY `studentid_fk` (`studentid_fk`),
  ADD KEY `paymentid_fk` (`staffid_fk`),
  ADD KEY `haid-fk` (`haid-fk`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `addresid_fk` (`addresid_fk`),
  ADD KEY `staff_fk` (`staff_fk`),
  ADD KEY `studentid_fk` (`studentid_fk`),
  ADD KEY `paymentid_fk` (`paymentid_fk`),
  ADD KEY `haid_fk` (`haid_fk`);

--
-- Indexes for table `housingagent`
--
ALTER TABLE `housingagent`
  ADD PRIMARY KEY (`haid`),
  ADD KEY `customerid_fk` (`customerid_fk`),
  ADD KEY `addressid_fk` (`addressid_fk`),
  ADD KEY `propertyid_fk` (`propertyid_fk`),
  ADD KEY `staffid_fk` (`staffid_fk`),
  ADD KEY `studentid_fk` (`studentid_fk`),
  ADD KEY `paymentid_fk` (`paymentid_fk`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `customerid_fk` (`customerid_fk`),
  ADD KEY `staffid_fk` (`staffid_fk`),
  ADD KEY `haid_fk` (`haid_fk`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`propertyid`),
  ADD KEY `addressid_fk` (`addressid_fk`),
  ADD KEY `staffid_fk` (`staffid_fk`),
  ADD KEY `studentid_fk` (`studentid_fk`),
  ADD KEY `haid_fk` (`haid_fk`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `customerid_fk` (`customerid_fk`),
  ADD KEY `addressid_fk` (`addressid_fk`),
  ADD KEY `propertyid_fk` (`propertyid_fk`),
  ADD KEY `studentid_fk` (`studentid_fk`),
  ADD KEY `paymentid_fk` (`paymentid_fk`),
  ADD KEY `haid_fk` (`haid_fk`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `customerid_fk` (`customerid_fk`),
  ADD KEY `addressid_fk` (`addressid_fk`),
  ADD KEY `propertyid_fk` (`propertyid_fk`),
  ADD KEY `staffid_fk` (`staffid_fk`),
  ADD KEY `haid_fk` (`haid_fk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
