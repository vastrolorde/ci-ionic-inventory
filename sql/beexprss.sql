-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2016 at 10:26 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `belajarci`
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
  `branchId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bee_agent`
--

INSERT INTO `bee_agent` (`id`, `agentName`, `agentAddress`, `agentPIC`, `agentPhone`, `locationCode`, `statediv`, `entityId`, `branchId`) VALUES
(1, 'G&G Hlaingthayar', 'something street', 'Mike', '89787', 293, 'Yangon', 5, 3),
(2, 'ABC sanchaung', '0809098', 'two', '7899', 293, 'Yangon', 6, 3),
(3, 'City Express Themmine', 'asdsda', 'me', '98896', 293, 'Yangon', 7, 3),
(4, 'G & G Mayangone', 'asdsda', 'me', '98896', 293, 'Yangon', 8, 3);

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
  `locationCode` int(11) NOT NULL,
  `contactPh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bee_drivers`
--

CREATE TABLE `bee_drivers` (
  `Id` int(11) NOT NULL,
  `driverName` varchar(30) NOT NULL,
  `driverNrc` varchar(25) NOT NULL,
  `driverAddress` varchar(100) NOT NULL,
  `driverPh` varchar(25) NOT NULL,
  `licenseNumber` varchar(25) NOT NULL,
  `joinDate` varchar(50) NOT NULL,
  `branchId` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE `entity` (
`id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `originID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
(8, 'Agent', 4);

-- --------------------------------------------------------

--
-- Table structure for table `entry_order`
--

CREATE TABLE `entry_order` (
`id` int(11) NOT NULL,
  `awb` varchar(20) NOT NULL,
  `codeto` int(11) NOT NULL,
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
  `processStatus` varchar(50) NOT NULL,
  `inputBy` int(11) NOT NULL,
  `entityId` int(11) NOT NULL,
  `deliveryStatus` varchar(50) NOT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentEntityOwner` int(11) NOT NULL,
  `currentHandler` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry_order`
--

INSERT INTO `entry_order` (`id`, `awb`, `codeto`, `servicetype`, `locationName`, `locationAddress`, `originState`, `originTown`, `receiverstate`, `receivertown`, `senderName`, `senderNRC`, `senderPhone`, `senderAdd`, `receiverName`, `receiverNRC`, `receiverPhone`, `receiverAdd`, `content`, `price`, `width`, `length`, `height`, `weight`, `totalweight`, `totalprice`, `processStatus`, `inputBy`, `entityId`, `deliveryStatus`, `entryDate`, `currentEntityOwner`, `currentHandler`) VALUES
(1, '', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(2, '', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(3, '', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(4, '', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(5, 'BX00000005', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(6, 'BX00000006', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(7, 'BX00000007', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(8, 'BX00000008', 0, '', '', '', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 't', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(9, 'BX00000009', 0, '', '', '', 'Yangon', 'Botahtaung', 'Yangon', 'Botahtaung', '2', '1', '3', '4', '2', '1', '3', '4', '5', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(10, 'BX00000010', 0, '', '', '', 'Yangon', 'Botahtaung', 'Yangon', 'Botahtaung', '2', '1', '3', '4', '2', '1', '3', '4', '5', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(11, 'BX00000011', 0, '', '', '', 'Yangon', 'Dagon Myothit(East)', 'Yangon', 'Dagon Myothit(East)', 'w', 'q', 'e', 'r', 'w', 'q', 'e', 'r', 'h', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(12, 'BX00000012', 0, '', '', '', 'Mandalay', 'Aungmyaythazan', 'Mandalay', 'Aungmyaythazan', '2', '1', '3', '4', '2', '1', '3', '4', '5', 2500, 10, 10, 10, 1, 1, 2500, '', 0, 0, '', '0000-00-00 00:00:00', 0, 0),
(13, 'BX00000013', 121, 'To Address', 'To Designated Address', 'TBA', 'Mandalay', 'Chanayethazan', 'Mandalay', 'Chanayethazan', 'Virkill', '56898798', '08875674', 'bothatahung st bla bla not really matter', 'aung kha yan', '697879879', '697090', 'something street not really important', 'toy', 2500, 10, 10, 10, 1, 1, 2500, 'confirmed', 1, 1, 'Agent Origin', '0000-00-00 00:00:00', 1, 0),
(14, 'BX00000014', 121, 'To Address', 'To Designated Address', 'TBA', 'Yangon', 'Dagon Myothit(North)', 'Yangon', 'Dagon Myothit(North)', 'Arif', '78608809', '70890890890890', 'something street 80 B', 'Cecilia', '7879080980', '8689089080', 'Empty Street 000', 'nuclear', 2500, 10, 10, 10, 1, 1, 2500, 'confirmed', 1, 1, 'Agent Origin', '2016-07-13 05:15:24', 1, 0),
(15, 'BX00000015', 121, 'To Gate', 'X Car Gate', 'something road, 13B', 'Yangon', 'Bahan', 'Yangon', 'Bahan', 'hhk', '697879', 'hkjhjk', 'hjkhjk', 'hggj', '9879789', 'ghjgjhghj', 'ghjgjhgjh', 'kjkljklj', 1500, 10, 10, 10, 1, 1, 1500, 'confirmed', 1, 1, 'Agent Origin', '2016-07-13 05:21:39', 1, 0),
(16, 'BX00000016', 121, 'To Address', 'To Designated Address', 'TBA', 'Mandalay', 'Mahaaungmyay', 'Mandalay', 'Mahaaungmyay', 'rtyryu', '45766', 'rytryt', 'rytryut', 'ytyiutyu', '68686', 'tuitiyu', 'tiuytiuytiuy', 'kjljkl', 2500, 10, 10, 10, 1, 1, 2500, 'confirmed', 1, 1, 'Agent Origin', '2016-07-13 05:45:41', 1, 0),
(17, 'BX00000017', 121, 'To Address', 'To Designated Address', 'TBA', 'Yangon', 'Dagon Myothit(East)', 'Yangon', 'Dagon Myothit(East)', 'Arif', '6786980707', '57890', 'something street 789', 'aung thu mo', '790879-8', '88--', 'someting bla bla', 'food', 2500, 22, 14, 13, 1, 1, 2500, 'confirmed', 1, 1, 'Agent Origin', '2016-07-14 08:07:22', 1, 0);

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
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `codefrom`, `codeto`, `toStateDiv`, `type`, `locName`, `locAddress`, `price`) VALUES
(1, 293, 121, 'Mandalay', 'To Address', 'To Designated Address', 'TBA', 2500),
(2, 293, 0, 'Mandalay', 'To Gate', 'X Car Gate', 'something road, 13B', 1500),
(3, 121, 121, 'Mandalay', 'To Address', 'To Designated Address', 'TBA', 1000);

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
(1, 'imelda', 'imelda', 'Agent', 'Imelda', 'assets/images/avatar-2.jpg', 'Myanmar', 'bob@burton.com', '+95995512345', 5, 'Something shiny about me'),
(2, 'admin', 'admin', 'Super Admin', 'Mimin', 'assets/images/avatar-3.jpg', '', '', '', 0, ''),
(4, 'kesha', 'kesha', 'Branch Admin', 'Kesha Almighty', 'assets/images/avatar-2.jpg', '', 'kesha@something.com', '098812345', 2, 'SOmething ');

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
-- Indexes for table `placecode`
--
ALTER TABLE `placecode`
 ADD PRIMARY KEY (`PlaceID`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bee_branch`
--
ALTER TABLE `bee_branch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `entry_order`
--
ALTER TABLE `entry_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;