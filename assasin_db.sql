-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 07:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assasin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `jobId` varchar(50) NOT NULL,
  `trxId` varchar(50) NOT NULL,
  `MSISDN` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  `Messaging_Product` varchar(50) NOT NULL,
  `Recipient_Type` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Preview_URL` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`jobId`, `trxId`, `MSISDN`, `message`, `Messaging_Product`, `Recipient_Type`, `Type`, `Preview_URL`, `dateCreated`, `dateUpdated`, `status`) VALUES
('30202042-B8C3-4990-B6E6-3374036F1062', '158EAE0F-05F7-4F86-9BFA-BCDEAA775C2C', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:37:24', '2022-11-26 12:37:24', 'valid'),
('2B7E4B89-9C69-4E9D-B156-EFD5BCF1BF20', '5989682D-DA4A-4F9D-8D35-EB23FF08F902', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:51:48', '2022-11-26 12:51:48', 'valid'),
('2B7E4B89-9C69-4E9D-B156-EFD5BCF1BF20', '8898EDBD-4CD9-45D0-B9C6-83C5A62786EC', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:51:47', '2022-11-26 12:51:47', 'valid'),
('30202042-B8C3-4990-B6E6-3374036F1062', '98FC5BE2-E39F-4908-9925-EF8259893654', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:37:24', '2022-11-26 12:37:24', 'valid'),
('2B7E4B89-9C69-4E9D-B156-EFD5BCF1BF20', '99E2FF34-1C7C-44E1-8D23-ACAD5CBFA106', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:51:48', '2022-11-26 12:51:48', 'valid'),
('30202042-B8C3-4990-B6E6-3374036F1062', 'B5EC7885-31A6-4743-BBFB-4477F22BADA4', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:37:25', '2022-11-26 12:37:25', 'valid'),
('2B7E4B89-9C69-4E9D-B156-EFD5BCF1BF20', 'ED94DCA1-728F-4F9D-AC36-38285045869A', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:51:48', '2022-11-26 12:51:48', 'valid'),
('30202042-B8C3-4990-B6E6-3374036F1062', 'FDE88B0B-C8B8-4BFF-893F-09ACB1BD6316', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-26 12:37:24', '2022-11-26 12:37:24', 'valid');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `jobId` varchar(50) NOT NULL,
  `trxId` varchar(50) NOT NULL,
  `batchName` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL,
  `MSISDN` varchar(50) NOT NULL,
  `input` varchar(50) NOT NULL,
  `WA_ID` varchar(50) NOT NULL,
  `messageId` varchar(100) NOT NULL,
  `responseStatus` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`jobId`, `trxId`, `batchName`, `message`, `MSISDN`, `input`, `WA_ID`, `messageId`, `responseStatus`, `dateCreated`, `dateUpdated`) VALUES
('32D05A74-0C79-4613-A40D-5006D8C423DD', 'B3D1014B-94CE-4409-AD2F-B083498D716A', 'Test Upload', 'ini test', '+6281212345007', '+6281212345007', '+6281212345007', 'wamid.VTl7krli4L834YakZfRckifgMqfeUfbedM2EoxYPrfmxsNMy', 200, '2022-11-21 20:12:04', '2022-11-21 20:12:04'),
('48297515-C448-4C44-8EC2-131883E79F91', '0299EB84-D710-489E-A229-F5634D89AA1F', 'Test Upload', 'ini test', '+6281212345999', '+6281212345999', '+6281212345999', 'wamid.eEfRlIem0G0IrQ2aYhntjhxeRv8DHSJ5kA4s9_G7bzxkmfSsa', 200, '2022-11-20 10:46:37', '2022-11-20 10:46:37'),
('A2752C62-84B0-4454-B56C-14DEF60C1E02', '9A55386C-D27C-4A98-9F91-8D2D4693E90B', 'Test Upload', 'ini test', '+6281212345678', '+6281212345678', '+6281212345678', 'wamid.e14bJNWpH1jBfxVTc41YUYidf3xq6mWUs9CRd5DCf7ArI3iWM', 200, '2022-11-20 10:43:12', '2022-11-20 10:43:12'),
('C170A30F-C3C7-458F-A9BF-451FC04F341C', '7E343D2E-A898-4168-8C92-126058289A8B', 'Test Upload', 'ini test', '+6281212345010', '+6281212345010', '+6281212345010', 'wamid.YWR0vGwt6WuaJ8xkkxKhKFQGnMHD4LrmEWFKrxIvwLEaClZPNz', 200, '2022-11-26 12:53:57', '2022-11-26 12:53:57'),
('C86AC236-2686-499F-8B0F-EB64120B8EA6', 'E23BAF7A-F21F-4566-9807-8D81FF7AABE8', 'Test Upload', 'ini test', '+6281212345008', '+6281212345008', '+6281212345008', 'wamid.7LUb8eHVXdFk8UmTN0O_aIHRo9sZOBPboTRhQ30jQF1lx8Lwqn', 200, '2022-11-21 20:14:41', '2022-11-21 20:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `jobId` varchar(50) NOT NULL,
  `batchName` varchar(30) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `filePath` varchar(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`jobId`, `batchName`, `fileName`, `filePath`, `dateCreated`, `dateUpdated`) VALUES
('2B7E4B89-9C69-4E9D-B156-EFD5BCF1BF20', 'test', 'Testing3.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-26 12:51:47', '2022-11-26 12:51:47'),
('30202042-B8C3-4990-B6E6-3374036F1062', 'Test Upload', 'Testing3.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-26 12:37:24', '2022-11-26 12:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `OldPassword1` varchar(50) DEFAULT NULL,
  `OldPassword2` varchar(50) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `firstName`, `lastName`, `userName`, `email`, `password`, `OldPassword1`, `OldPassword2`, `dateCreated`, `dateUpdated`) VALUES
(1, 'Takiya', 'Genji', 'Genji', 'genji_takiya@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, '2022-09-27 00:04:48', '2022-09-27 00:04:48'),
(2, 'username', 'username', 'username', 'username@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, '2022-10-29 09:24:31', '2022-10-29 09:24:31'),
(3, 'abc', 'def', 'abcdef', 'abcdef@gmail.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 10:43:35', '2022-11-26 10:43:35'),
(4, 'Firstname', 'Lastname', 'firstlastname', 'lastfirst@name.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 11:52:41', '2022-11-26 11:52:41'),
(5, 'Nama Depan', 'Nama Belakang', 'namalengkap', 'namalengkap@gmail.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 12:51:11', '2022-11-26 12:51:11'),
(6, 'Nama Depan', 'Nama Belakang', 'namalengkap', 'namalengkap@gmail.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 12:51:11', '2022-11-26 12:51:11'),
(7, 'afafa', 'fafa', 'username', 'email.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 12:57:09', '2022-11-26 12:57:09'),
(8, 'test', 'test', 'username', 'testusername@gmail.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 13:01:19', '2022-11-26 13:01:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`trxId`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
