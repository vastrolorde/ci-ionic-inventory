-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 15, 2016 at 11:56 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cibee2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bee_agent`
--

CREATE TABLE `bee_agent` (
`id` int(11) NOT NULL,
  `agentName` varchar(100) NOT NULL,
  `agentAddress` text NOT NULL,
  `agentPIC` varchar(50) NOT NULL,
  `agentPhone` varchar(30) NOT NULL,
  `locationCode` int(11) NOT NULL,
  `statediv` varchar(50) NOT NULL,
  `entityId` int(11) NOT NULL,
  `branchId` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bee_agent`
--

INSERT INTO `bee_agent` (`id`, `agentName`, `agentAddress`, `agentPIC`, `agentPhone`, `locationCode`, `statediv`, `entityId`, `branchId`, `visible`) VALUES
(1, 'G&G Hlaingthayar', 'something street', 'Mike', '89787', 293, 'Yangon', 5, 3, 1),
(2, 'ABC sanchaung', '0809098', 'two', '7899', 293, 'Yangon', 6, 3, 1),
(3, 'City Express Themmine', 'asdsda', 'me', '98896', 293, 'Yangon', 7, 3, 1),
(4, 'G & G Mayangone', 'asdsda', 'me', '98896', 293, 'Yangon', 8, 3, 1),
(5, 'G&G Somewhere', 'something street ', 'Mike', '1234', 0, 'Mandalay', 9, 4, 1),
(6, 'ABC somewhere', 'something street', 'Ananda', '1234', 0, 'Mandalay', 10, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bee_branch`
--

CREATE TABLE `bee_branch` (
`id` int(11) NOT NULL,
  `entityId` int(11) NOT NULL,
  `branchName` varchar(50) NOT NULL,
  `branchAddress` text NOT NULL,
  `locationCode` int(11) NOT NULL,
  `branchPIC` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bee_branch`
--

INSERT INTO `bee_branch` (`id`, `entityId`, `branchName`, `branchAddress`, `locationCode`, `branchPIC`, `phone`) VALUES
(3, 1, 'Yangon', 'mayangone', 283, 'gue', '6789'),
(4, 2, 'Mandalay', 'somewhere in mandalay', 121, 'ahmad', '1234'),
(5, 3, 'Bago', 'somewhere in mandalay', 121, 'ahmad', '1234'),
(6, 4, 'Nay Pyi Taw', 'somewhere in mandalay', 121, 'ahmad', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `bee_cargates`
--

CREATE TABLE `bee_cargates` (
`Id` int(11) NOT NULL,
  `cargateName` varchar(50) NOT NULL,
  `cargatePIC` varchar(50) NOT NULL,
  `contactAddress` varchar(100) NOT NULL,
  `phoneNumber` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `city` varchar(30) NOT NULL,
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bee_cargates`
--

INSERT INTO `bee_cargates` (`Id`, `cargateName`, `cargatePIC`, `contactAddress`, `phoneNumber`, `remark`, `isActive`, `city`, `entityId`) VALUES
(3, 'something', 'lala', 'qwasdasd', 'asdasdas', 'asdasd', 1, 'Mandalay', 13),
(4, 'Cargate Maju jaya', 'aung aung', 'something street', '1234', 'Only suport ', 1, 'Mandalay', 14),
(5, 'Comany Name', 'The PIC Name', 'Somewhere over the rainbow', 'Phone Number', 'lalala', 1, 'Mandalay', 15);

-- --------------------------------------------------------

--
-- Table structure for table `bee_drivers`
--

CREATE TABLE `bee_drivers` (
`id` int(11) NOT NULL,
  `driverName` varchar(30) NOT NULL,
  `driverNrc` varchar(25) NOT NULL,
  `driverAddress` varchar(100) NOT NULL,
  `driverPh` varchar(25) NOT NULL,
  `driverPh2` int(11) NOT NULL,
  `licenseNumber` varchar(25) NOT NULL,
  `branchId` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `joinDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bee_drivers`
--

INSERT INTO `bee_drivers` (`id`, `driverName`, `driverNrc`, `driverAddress`, `driverPh`, `driverPh2`, `licenseNumber`, `branchId`, `status`, `isActive`, `joinDate`) VALUES
(1, 'Ko phyo', '12321', 'sanchaung', '1234', 1234, '1234', 3, 'Active', 1, '0000-00-00 00:00:00'),
(2, 'Maung Aung', '12345', 'soemthing street', '1234', 1234, '1234', 3, 'Active', 1, '2016-08-07 00:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE `entity` (
`id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `originID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`id`, `type`, `originID`) VALUES
(1, 'Branch', 3),
(2, 'Branch', 4),
(3, 'Branch', 5),
(4, 'Branch', 6),
(5, 'Agent', 1),
(6, 'Agent', 2),
(7, 'Agent', 3),
(8, 'Agent', 4),
(9, 'Agent', 5),
(10, 'Agent', 6),
(13, 'Cargate', 3),
(14, 'Cargate', 4),
(15, 'Cargate', 5);

-- --------------------------------------------------------

--
-- Table structure for table `entry_order`
--

CREATE TABLE `entry_order` (
`id` int(11) NOT NULL,
  `awb` varchar(20) NOT NULL,
  `codeto` int(11) NOT NULL,
  `codefrom` int(11) NOT NULL,
  `servicetype` varchar(50) NOT NULL,
  `locationName` varchar(100) NOT NULL,
  `locationAddress` text NOT NULL,
  `originState` varchar(50) NOT NULL,
  `originTown` varchar(50) NOT NULL,
  `receiverstate` varchar(50) NOT NULL,
  `receivertown` varchar(50) NOT NULL,
  `senderName` varchar(100) NOT NULL,
  `senderNRC` varchar(30) NOT NULL,
  `senderPhone` varchar(30) NOT NULL,
  `senderAdd` text NOT NULL,
  `receiverName` varchar(50) NOT NULL,
  `receiverNRC` varchar(30) NOT NULL,
  `receiverPhone` varchar(30) NOT NULL,
  `receiverAdd` text NOT NULL,
  `content` text NOT NULL,
  `price` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `totalweight` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `inputBy` int(11) NOT NULL,
  `entityId` int(11) NOT NULL,
  `branchOriginId` int(11) NOT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `processStatus` varchar(50) NOT NULL,
  `deliveryStatus` varchar(50) NOT NULL,
  `currentEntityOwner` int(11) NOT NULL,
  `currentHandler` int(11) NOT NULL,
  `assignedDriver` varchar(50) NOT NULL,
  `currentremark` text
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry_order`
--

INSERT INTO `entry_order` (`id`, `awb`, `codeto`, `codefrom`, `servicetype`, `locationName`, `locationAddress`, `originState`, `originTown`, `receiverstate`, `receivertown`, `senderName`, `senderNRC`, `senderPhone`, `senderAdd`, `receiverName`, `receiverNRC`, `receiverPhone`, `receiverAdd`, `content`, `price`, `width`, `length`, `height`, `weight`, `totalweight`, `totalprice`, `inputBy`, `entityId`, `branchOriginId`, `entryDate`, `processStatus`, `deliveryStatus`, `currentEntityOwner`, `currentHandler`, `assignedDriver`, `currentremark`) VALUES
(28, 'BX00000028', 3, 1, 'Point to Point', 'City Express Themmine', 'asdsda', 'Yangon', '', 'Yangon', '', 'j', 'k', 'h', 'v', 'j', 'h', 'k', 'l', 'b', 2000, 10, 10, 10, 3, 3, 6000, 1, 5, 3, '2016-08-06 23:27:33', 'Closed', 'Driver Origin', 1, 4, 'Maung Aung', '(type additional information here)'),
(29, 'BX00000029', 6, 1, 'Point to Point', 'ABC somewhere', 'something street', 'Mandalay', '', 'Mandalay', '', 'c', 'a', 'v', 'b', 'n', 'b', 'k', 'l', 'k', 10000, 10, 10, 10, 3, 3, 30000, 1, 5, 3, '2016-08-06 23:30:56', 'confirmed', 'Driver Origin', 5, 1, 'Ko phyo', ''),
(30, 'BX00000030', 3, 1, 'Point to Point', 'City Express Themmine', 'asdsda', 'Yangon', '', 'Yangon', '', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2000, 10, 10, 10, 3, 3, 6000, 1, 5, 3, '2016-08-05 08:40:08', 'confirmed', 'Driver Origin', 5, 1, 'Maung Aung', ''),
(31, 'BX00000031', 2, 1, 'Point to Point', 'ABC sanchaung', '0809098', 'Yangon', '', 'Yangon', '', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 1000, 10, 10, 10, 3, 3, 3000, 1, 5, 3, '2016-08-08 00:49:11', 'confirmed', 'Agent Origin', 5, 1, '', ''),
(32, 'BX00000032', 5, 1, 'Point to Point', 'G&G Somewhere', 'something street ', 'Mandalay', '', 'Mandalay', '', 'dfg', 'df', 'dfg', 'dfg', 'ghjg', 'gj', 'jhg', 'hjghj', 'ghjghj', 3000, 10, 10, 10, 1, 1, 3000, 1, 5, 3, '2016-08-09 05:28:17', 'confirmed', 'Agent Origin', 5, 1, '', NULL),
(33, 'BX00000033', 5, 1, 'Point to Point', 'G&G Somewhere', 'something street ', 'Mandalay', '', 'Mandalay', '', 'gjhghj', 'gjh', 'ghjghj', 'ghjghjg', 'hjhk', 'hkjk', 'hjkhkj', 'hjkhjk', 'hkhkhk', 3000, 10, 10, 10, 2, 2, 6000, 1, 5, 3, '2016-08-12 03:32:05', 'confirmed', 'Agent Origin', 5, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
`id` int(11) NOT NULL,
  `keyz` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `keyz`, `level`, `ignore_limits`, `date_created`) VALUES
(1, 'abracadabra', 1, 0, 0),
(2, 'abracadabra', 1, 0, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
`id` int(11) NOT NULL,
  `awb` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL,
  `textlog` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `awb`, `userid`, `textlog`, `time`) VALUES
(8, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Point Destination</span> Current Entity ID owner is 7(Point 3 City Express Themmine - Yangon). Remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:08:22'),
(9, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Driver Origin</span>. Assigned Driver name is <em>Ko phyo</em>. Current entity owner ID: 1 (Branch 3 Yangon). Remarks: <p><em>"<p><em>"Agent dont have internet"</em></p>"</em></p>', '2016-08-10 06:08:49'),
(10, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Branch Origin</span>. Current entity owner ID: 1 (Branch 3 Yangon). Remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:09:22'),
(11, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Point Origin</span> Current Entity ID owner is 5( Point 1 G&G Hlaingthayar - Yangon ), with remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:09:36'),
(12, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Third Party</span> Current Entity ID owner is 14(  ), with remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:09:45'),
(13, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Third Party</span> Current Entity ID owner is 14(  ), with remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:12:48'),
(14, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Third Party</span> Current Entity ID owner is 14(  ), with remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:13:18'),
(15, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Third Party</span> Current Entity ID owner is 14( Car Gate 4 Cargate Maju jaya - Mandalay ), with remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:14:18'),
(16, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Driver Destination</span> Current Entity ID owner is 1(Branch 3 Yangon), with assigned driver name : Maung Aung. Remarks: <p><em>"(type additional information here. The story and who''s the responsible for the lost case)"</em></p>', '2016-08-10 06:14:54'),
(17, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Branch Destination</span> Current Entity ID is 1 (Branch 3 Yangon) with remarks: <p><em>"(type additional information here)"</em></p>', '2016-08-10 06:15:17'),
(18, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Lost</span>. Process Status Closed. Remarks: <p><em>"(type additional information here. The story and who''s the responsible for the lost case)"</em></p>', '2016-08-10 06:15:33'),
(19, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Dispute</span>. Process Status Open. Remarks: <p><em>"(type additional information here. Why there''s a dispute and the chronological story.)"</em></p>', '2016-08-10 06:16:08'),
(20, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Delivered</span>, Remarks: <p><em>"(type additional information here. Who receive the package, his phone number, and NRC.)"</em></p>', '2016-08-10 06:16:18'),
(21, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Returned</span>. Process Status Closed. Remarks: <p><em>"(type additional information here. Why it is being returned and current responsible PIC.)"</em></p>', '2016-08-10 06:16:33'),
(22, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Extraordinary</span>. Process Status Closed. Remarks: <p><em>"(type additional information here. Why it is extraordinary case. ie: police case, illegal material, etc.)"</em></p>', '2016-08-10 06:16:43'),
(23, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Driver Origin</span>. Assigned Driver name is <em>Ko phyo</em>. Current entity owner ID: 1 (Branch 3 Yangon). Remarks: <p><em>"<p><em>"(type additional information here)"</em></p>"</em></p>', '2016-08-10 06:18:12'),
(24, 'BX00000028', 4, '<strong><a href="#" class="text-info">Kesha Almighty</a></strong> (userid 4) change status of <strong>BX00000028</strong> to <span class="text-success">Driver Origin</span>. Assigned Driver name is <em>Maung Aung</em>. Current entity owner ID: 1 (Branch 3 Yangon). Remarks: <p><em><p><em>"(type additional information here)"</em></p>', '2016-08-10 06:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `placecode`
--

CREATE TABLE `placecode` (
  `PlaceID` varchar(3) NOT NULL,
  `StateDiv` varchar(20) NOT NULL,
  `Township` varchar(30) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placecode`
--

INSERT INTO `placecode` (`PlaceID`, `StateDiv`, `Township`, `isActive`) VALUES
('121', 'Mandalay', ' Amarapura ', 1),
('122', 'Mandalay', '  Aungmyaythazan ', 1),
('123', 'Mandalay', 'Chanayethazan', 1),
('124', 'Mandalay', 'Chanmyathazi ', 1),
('129', 'Mandalay', '  Mahaaungmyay ', 1),
('138', 'Mandalay', '  Patheingyi ', 1),
('140', 'Mandalay', '  Pyigyitagon ', 1),
('281', 'Yangon', '  Ahlone ', 1),
('282', 'Yangon', '  Bahan ', 1),
('283', 'Yangon', '  Botahtaung ', 1),
('285', 'Yangon', '  Dagon ', 1),
('286', 'Yangon', '  Dagon Myothit(East) ', 1),
('287', 'Yangon', '  Dagon Myothit(North) ', 1),
('288', 'Yangon', '  Dagon Myothit(Seikkan) ', 1),
('289', 'Yangon', '  Dagon Myothit(South) ', 1),
('291', 'Yangon', '  Dawbon ', 1),
('292', 'Yangon', '  Hlaing ', 1),
('293', 'Yangon', '  Hlaingtharya ', 1),
('297', 'Yangon', '  Insein ', 1),
('298', 'Yangon', '  Kamaryut ', 1),
('301', 'Yangon', '  Kungyangon ', 1),
('302', 'Yangon', '  Kyauktada ', 1),
('304', 'Yangon', '  Kyeemyindaing ', 1),
('305', 'Yangon', '  Lanmadaw ', 1),
('306', 'Yangon', '  Latha ', 1),
('307', 'Yangon', '  Mayangone ', 1),
('308', 'Yangon', '  Mingaladon ', 1),
('309', 'Yangon', '  Mingalartaungnyunt  ', 1),
('310', 'Yangon', '  North Okkalapa ', 1),
('311', 'Yangon', '  Pabedan ', 1),
('312', 'Yangon', '  Pazundaung ', 1),
('313', 'Yangon', '  Sanchaung ', 1),
('314', 'Yangon', '  Seikgyikanaungto  ', 1),
('315', 'Yangon', '  Seikkan ', 1),
('316', 'Yangon', '  Shwepyithar  ', 1),
('317', 'Yangon', '  South Okkalapa ', 1),
('318', 'Yangon', '  Taikkyi ', 1),
('319', 'Yangon', '  Tamwe ', 1),
('320', 'Yangon', '  Thaketa ', 1),
('322', 'Yangon', '  Thingangkuun ', 1),
('325', 'Yangon', '  Yankin ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pricematrix`
--

CREATE TABLE `pricematrix` (
`id` int(11) NOT NULL,
  `pointfrom` int(11) NOT NULL,
  `pointto` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `cityDest` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricematrix`
--

INSERT INTO `pricematrix` (`id`, `pointfrom`, `pointto`, `isActive`, `price`, `cityDest`) VALUES
(7, 1, 2, 1, 1000, 'Yangon'),
(8, 1, 3, 1, 2000, 'Yangon'),
(9, 1, 5, 1, 3000, 'Mandalay'),
(10, 1, 6, 1, 10000, 'Mandalay'),
(11, 3, 2, 1, 2000, '');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
`id` int(11) NOT NULL,
  `codefrom` int(11) NOT NULL,
  `codeto` int(11) NOT NULL,
  `toStateDiv` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locName` varchar(200) NOT NULL,
  `locAddress` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL,
  `gateID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `isActive`) VALUES
(1, 'Agent', 1),
(5, 'Branch Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` tinyint(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `location` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `entityId` int(11) NOT NULL,
  `aboutMe` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `fullName`, `avatar`, `location`, `email`, `mobile`, `entityId`, `aboutMe`) VALUES
(1, 'imelda', 'imelda', 'Agent', 'Imelda', 'assets/images/avatar.jpg', 'Myanmar', 'bob@burton.com', '+95995512345', 5, 'Something shiny about me'),
(2, 'admin', 'admin', 'Super Admin', 'Randy', 'assets/images/avatar-3.jpg', '', 'randy@land.com', '', 0, 'something'),
(4, 'kesha', 'kesha', 'Branch Admin', 'Kesha Almighty', 'assets/images/avatar-2.jpg', '', 'kesha@something.com', '098812345', 1, 'SOmething ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bee_agent`
--
ALTER TABLE `bee_agent`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_branch`
--
ALTER TABLE `bee_branch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_cargates`
--
ALTER TABLE `bee_cargates`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bee_drivers`
--
ALTER TABLE `bee_drivers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entry_order`
--
ALTER TABLE `entry_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placecode`
--
ALTER TABLE `placecode`
 ADD PRIMARY KEY (`PlaceID`), ADD UNIQUE KEY `PlaceID` (`PlaceID`);

--
-- Indexes for table `pricematrix`
--
ALTER TABLE `pricematrix`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bee_agent`
--
ALTER TABLE `bee_agent`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bee_branch`
--
ALTER TABLE `bee_branch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bee_cargates`
--
ALTER TABLE `bee_cargates`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bee_drivers`
--
ALTER TABLE `bee_drivers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `entry_order`
--
ALTER TABLE `entry_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pricematrix`
--
ALTER TABLE `pricematrix`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
