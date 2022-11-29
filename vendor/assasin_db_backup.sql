-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 05:56 AM
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
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '0110D0AA-796B-4FB6-8039-C45168A5D6A6', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '0126A26F-1A97-4BAF-B281-ADE114504F9F', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '02C509D0-7246-4556-B441-975A59D6807D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '05D8F3D2-2AC1-4091-87DC-61241173FD4C', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '05E205BD-79E9-4027-AD5D-283574851633', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '06917F12-7F8C-4E1A-A138-38707B8AC6C1', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '06CCD09E-495F-45A5-8ED2-C5B0B5E1A762', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '06ED269E-9CC5-47E1-9D3B-3C5F48784218', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:01', '2022-11-23 10:29:01', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '07838150-93D1-4244-98BB-FD6E380297CC', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '082D3228-E167-4E58-8934-46DE8172BA28', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '0855FD63-B3E5-4659-BEB2-703F9C24046F', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '0A99AEDD-6008-412F-B318-2611588AB1E4', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:42', '2022-11-25 15:50:42', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '0B58B8B0-D058-4B79-9578-6D35A80D96CE', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '0BE2B140-6B77-4792-9733-5903FFB2FE56', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '0C027C83-630A-4EB2-AD66-FF0556CF1B64', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:24', '2022-11-23 10:37:24', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '0CBD0BA6-0947-4C31-A5FD-EE9652B5CA88', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:44', '2022-11-25 15:50:44', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '10F07997-0EC3-4E05-BBAA-70D3E805C381', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:42', '2022-11-25 15:50:42', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '12F0E744-BD43-4D6F-8820-6AE03EB5B16B', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '13702DAC-EFC1-4FB1-BF9C-C66290FBE08F', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '137906B0-0374-4934-8D2A-36EB1EC96645', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '141CF0C9-CD58-45F9-AC68-5C469D212E36', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '145A96C6-C74D-4FAB-A48A-48E02B4ACE88', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '1485B149-3500-4E76-90E6-1EE066C540EF', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '151300FC-BCC1-4279-9B97-07BC613F8A26', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '158A2494-5DB7-4B6E-9D4C-265E749B6137', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:42', '2022-11-25 15:50:42', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '16E4A845-6FFE-4B14-825B-16D8D2A1983E', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '1A312262-D8FA-497F-B04B-2EAD9715038B', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '23653DEE-4B7B-4EE4-8F5B-75B95F2E458D', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '23D19B2D-B5ED-4D38-940A-21A7B1DA8081', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '25408AF8-9C5C-4529-9F49-31BB0293727C', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '254FD8F7-C3A7-4BD5-86D9-F33E7C6B26D7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '25F39A55-5BDB-45FC-9C58-0A780E4275E4', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '26160477-726C-4A44-8A04-37B42BD06B63', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '263F7FCF-9EEF-4FC9-BF44-EE1F0A4D9545', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '28A7C5BC-9DF7-4795-8E05-96D36A8050D7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '29E83B55-2A67-406C-B522-7EEE53101801', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '2B147AAA-2DB3-41EC-9965-053D7211DCC5', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '2C5DB3BD-7C66-45FF-8521-201596C6497E', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('6400C189-D9D4-45F6-A686-67FED9473D54', '2E1FB0D5-53F2-4A7D-95AD-9EA52B5E11CD', '6281212345678', 'Halo, ini pesan terbaru.', 'whatsapp', 'individual', 'test', 1, '2022-11-20 20:29:02', '2022-11-20 20:29:02', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '2F77B204-ACC5-4949-AB5B-FE2534EDFD0C', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '308F3A44-6C74-4F68-B680-85DD0EF587BC', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '32BBD6DE-A90D-4EF3-979D-9BEDBF52F68C', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '337CF054-2FDE-4487-8ADA-4D61ED8EF725', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '33C45E47-E6AE-42CC-8BE5-D4D89B72ED0B', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:44', '2022-11-25 15:50:44', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '340CB32D-B2AE-4BAD-83DC-732F509B58C8', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:44', '2022-11-25 15:50:44', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '36A2F14D-EBDB-4141-886D-F81502F85E27', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '37CCA2F4-D702-40A6-9C02-FD86EAB3FE8B', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '38530E25-F4CB-4899-A00F-B41C59460BAA', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '3B2CF37B-194F-41F6-8BDE-11D6777819C6', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '3CF003F4-D5AB-4AB4-A76D-2A8A359EAF48', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '3D36462B-3E6F-4825-A7CB-43FD7ED5207D', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:24', '2022-11-23 10:37:24', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '3D3FFC1A-CB27-4D04-890C-6326FF0CEE7A', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '3FADF25F-E59B-4FAF-8608-4EA40F22C2D0', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:44', '2022-11-25 15:50:44', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '42854024-ED94-4B42-960D-A87D20731C09', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '44C71CD6-B06B-4D6B-9206-014915E3BA81', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '457390F8-54FA-4343-9AC7-7CA33B667704', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '460A1C43-624E-45B1-8F65-584ABF91A4B2', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '46A12C6F-8CAA-46BD-AB54-0EDCD1D6EFBF', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '479A14ED-D890-43A9-9E5D-997630BC0C0C', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '47FE6721-6C02-4CA6-8BD0-99412CF59B7D', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '4C2C166D-E919-49F7-A01F-1F84674E6F43', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '4C2E4954-E9D7-4114-8F81-7CD108034525', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '4C39B49F-9EA5-4E7C-B2AA-BF5923054387', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '4D008766-7FE9-436E-B05A-B2A4E88F574D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '4DA615C2-B0E0-4FA5-B89B-EDC2A4CAE79A', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '50236F4B-9CD0-4846-837B-54540C5EC0D8', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '50EA9623-CE4E-4336-BE96-8FCBBEB816A1', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '5264EAD3-E126-4717-B74D-41DFEEADA016', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '54BEB1D2-147F-4012-AB9E-3B6E96E7B701', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '55B140BB-776B-4186-BF8C-AEF68AE5AEC4', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '55D372FA-6CB5-4B25-AC73-9C8DCD90E1FE', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '56737DCE-5270-4D9F-B962-942FA2C65BBA', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '56C63101-CC0D-4E9A-9F2A-E0F041FE84F8', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '57683A51-1F5B-4F8D-B6BD-EEDE961253A8', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '57BE6609-756E-4EF5-AF3A-F04563D83A64', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '580E4495-DEAF-4425-9789-7CBFD4FCBC47', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '5AB02020-02E3-4AB8-9EF3-BCBA7BD9AAB7', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '5BC2F7E8-099E-4562-A851-299C20470609', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '5C8A591F-A42C-491E-BFFA-52A73EF6DE5C', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '5EADEB65-9815-483C-9761-F67FD0C00BF9', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '60480EFA-83AC-42AE-A776-A76C7407226C', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '60944C33-E096-464B-8EFD-57A0AA7B64DF', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:01', '2022-11-23 10:29:01', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '62A8FFDE-BC53-4D30-B1EE-7BF520E850D0', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '62EF3A8C-5FD9-4DB6-A7CF-FF1D81C4DE42', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '630A5FC0-8862-421E-818C-AA8A2B59F513', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:51', '2022-11-23 10:30:51', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '63284AD8-2C84-4F1F-A495-53165AFB5F2A', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:42', '2022-11-25 15:50:42', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '63442BF6-5207-40C9-978B-B7FDE8C3ADA8', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '63F29A0E-72F9-48BD-B5EE-3AA3A877DACC', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '64AC8203-13FD-47DD-A9FF-AE54FD249355', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '64CFFF60-A14A-4EE7-838B-167316715D2A', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:01', '2022-11-23 10:29:01', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '667C039F-E122-4A22-B86E-6DECEFD6D03E', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '66895FAA-8DE9-4E1D-8503-A2456C00B378', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '671156D5-B716-4EE5-8D17-AB32CCB4A0F5', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '67B44364-13A1-4BF5-8B31-83D428C2EFF4', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '699F8B0E-6525-4804-BE01-31D6EA72ACAA', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '69EFD01B-6696-4A96-8B2C-66C4D1743FD7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '6A10E7B7-4910-42E6-9DA1-E90C5072E701', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '6CEB1F3F-CB83-4675-8123-00967A8ADFEB', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '6D50C1AA-C971-4CEA-B13C-9AE5771C071E', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '6E2D5ABC-5DD0-4F5F-8490-22DF58F6CAE4', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '6F2C9479-7044-4E00-B1AF-FE1CCA787673', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '6FC434A0-9D2E-48EB-9F22-9F9AE56DAFEE', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('0474F0C2-CA15-4887-94A1-A82034D0B790', '71064DF3-9931-4B16-BB7F-0C2D4CFD212C', '6281212345999', 'Halo, ini pesan terbaru.', 'whatsapp', 'individual', 'test', 0, '2022-11-20 11:27:55', '2022-11-20 11:27:55', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '71B5AE7E-667C-4882-AE85-20993CFFC176', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '72A2C288-43F5-449A-A994-26959F265BF7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '72F64A53-4BE6-438E-9308-3FF6D0B69EBB', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '73072DA7-5723-4072-A63F-5997A4517A6B', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '74E9A5D6-BEA7-451B-BBD3-8E4BDA03F340', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '754A2214-DCD3-4B11-A252-D9A47C5021D7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '773B6CCB-3656-4B7B-A398-D71B585D4439', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '774B41DE-2F96-4D29-85B8-C5005F7818CE', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:44', '2022-11-25 15:50:44', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '77664416-6A48-422E-B843-0F4B89AD0487', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '786FB6EF-4147-4FF2-B061-70F6D431291D', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '7882356F-331E-4281-B997-9CB4EAC665CF', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '7911D0F0-01E0-49AD-B4E3-07DFB57C03E8', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '79D4354D-BCC6-4CE7-B594-B967DB6C3542', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '7A513AD5-1D0D-4F88-95F4-AC4BBAD8C479', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '7CB59B57-BB46-4975-A7F1-0A76C1970C54', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '7DEB5448-132D-4172-9C7F-0E0E3DC10EEE', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '7DECE636-2BA3-4253-B06E-9A98FC3EBB1F', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '81DDD439-A54B-46DF-87B1-0FA6D0ECC757', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '82B4B8FD-5AFA-4110-9CAE-565932D271BF', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('B562F7AB-38AE-4060-A093-843408C41344', '82EDFF57-E492-44E7-8E92-006A4DC7761D', '6281212345678', 'Halo, ini pesan terbaru.', 'whatsapp', 'individual', 'test', 1, '2022-11-20 11:51:13', '2022-11-20 11:51:13', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '837D6ADB-9C36-443F-B114-692327B91849', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '84168B50-6A35-4CCC-B9BC-94FCCC502971', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '8463A7DC-E32E-4539-B856-C0518FA30CE9', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '84A7F6AF-212D-4D42-A240-A8CDAEC2602B', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '8599FCCB-C8A4-43E7-8857-B9B712FBD08E', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '87D2B6C5-6E7C-40B5-AF81-CB63AC2177C2', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '88891057-425F-42F2-A362-40C700734572', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '88B0A65B-9C8F-41DF-9801-24ABC747933E', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '8987C96A-1EF7-480B-B36B-80CE12B3BE26', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '8AE5FE23-E548-4D3F-BCFD-DC4A46AA7DDF', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '8BC5DE96-B405-4A00-898F-5C45807A804D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '8C538395-11F0-49A2-BECD-877B7077E629', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '8CA99575-6C98-4F89-B917-FBE641334921', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '8CE57FAF-7A3A-4579-80A5-CEFB28647912', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '8CEA0FAB-D064-4B78-B60D-AEF66B0247EB', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '8E9619FD-B14F-4472-8773-D1110AC8F9EF', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '8F463940-DAC2-44ED-9813-C6F442BF5F99', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', '90024223-9D68-4E61-94C4-2083EA696C1D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '921BD609-17F4-4A61-86F8-3C91D180FB3F', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '93066093-5529-49BA-8AF5-F1AB1FCD4213', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', '97AC10B5-1F8C-4BC3-B015-14A55DD74F5A', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '99415C41-5FA9-43DE-9E6E-5C2C1B10687D', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '9AD0D946-1DE3-4BC4-B014-8E59C0AFF4E8', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '9B51949B-6CFF-4E3B-AE37-DB624A962A3A', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', '9B5B26FB-7C39-47C4-A09B-08604D91C585', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '9E75B66B-9540-42B5-9ABF-43C3AC176C08', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', '9EC5F0BA-93B3-4912-B648-E129790210B6', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '9EFBEB8E-372D-4B90-B7AB-94CCF122864A', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', '9FB351B3-2C5B-4EB9-BCC7-EA3AC2B4169E', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'A0D7D346-90BD-43EA-8732-90FF0E58627B', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'A1618CED-ACC3-44D1-BDEF-737AC40730C8', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'A4300368-4E32-43D6-A9A2-BDB2282E81FB', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'A5FC326E-5A3A-4C2E-80E9-8280F392DCA1', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'A8620C1C-3ECD-4C35-B692-EB3848CB411C', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('B0D4C467-71BA-4B48-998B-465832A8A61A', 'A8BC16F0-AD43-47D1-8234-7B695D3E7D9D', '6281212345678', 'Halo, ini pesan terbaru.', 'whatsapp', 'individual', 'test', 1, '2022-11-20 11:26:53', '2022-11-20 11:26:53', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'A94B2A12-55E9-4EC6-9ED3-B7CBC4390504', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'AB839D2E-8BF6-4A88-B398-A563CEADCC97', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'ABBB6DFD-EB3D-4A13-80FE-22D658C7CC5E', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'AC1A3155-38F9-4769-AB85-7E6AD07578D2', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'ADD406A3-8E81-4016-8E03-31764E24CE67', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'ADD75163-54C8-4851-82C4-158216373EA5', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'AEB770C1-526E-4411-AE57-320586B84E75', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'B2CFEA2F-237F-4CCD-A8A1-73C64EC10DE3', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'B384CC74-E504-4801-8B96-C18AA6943A63', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'B4641E4B-45B7-4465-8181-1DA3741810CA', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'B4D6BD00-008C-41E1-A132-3523C9579306', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'B54F607F-C871-4C36-81D3-B9CCF6C697CC', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'B6A10100-CD84-46DD-A529-9A7DCD3DB368', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'B80EF067-4C4F-46E4-A809-1C74E41087CB', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'B8503F2E-84DB-4A8E-AB13-57A4C1032525', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'B92E2817-5914-4529-8974-EFADD37E5694', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'B9F01780-AEA1-4EF4-8933-B9CDA7ABA586', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'BCA6EDDF-9A5F-428B-85EA-BBB79CE0A774', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'BEFDA0CF-9722-4E81-BB16-BEA570F633F0', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'C0A0DF3C-C835-4999-BCF6-47499CC0131B', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'C0DA8AB1-0205-4EB4-8C8C-775D6729B784', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'C10EC2DE-E8BC-4B81-8C90-E33F7E3EE29B', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'C1631978-AC0C-4E63-BD41-FF4192217814', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'C296BE93-967E-4F28-974F-3CA3009E46AD', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'C2F80CCE-2B30-4547-ABAA-77CD05BC1B63', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:01', '2022-11-23 10:29:01', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'C325D3DC-5C4D-43A0-8DB7-A251249E14A9', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'C58A604C-9B98-44AD-9616-2327C3E04178', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'C603EB0E-BDEC-47B4-A6A8-93F5A94EF72F', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'C74E4D73-BE10-4A8F-B795-78B6D10AD2DD', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'C77D3E7D-A819-4735-BAAC-97B7570A2162', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'C80CFAFB-E18B-4DDB-BA71-5BF46DEF35A5', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'C84A0111-0F12-4E2A-B4CA-01D2E200822C', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:01', '2022-11-23 10:29:01', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'C8B4071C-9F6B-4AC2-B052-FBF7218982C1', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'CA58190A-5549-4C68-BA8C-8F7CCB6A012C', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'CA6B3F27-95BF-46F9-BEBB-ECCABA2480D2', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'CACA8F5A-4FBD-43BC-A376-2486D3B6BB4D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'CADD5CEA-E3F1-4D9A-8694-6AB3F597F4D2', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'CF3890BF-DDFF-4F4C-8563-8933C98FEA51', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'D0FA6052-7967-4D9D-B35C-C2D46C11C710', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'D1F0CF07-36BB-42D6-976C-72632F675748', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'D30BA9F9-30C8-4D39-A0E2-8EAEE551FC95', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'D414145D-7C36-4C63-855C-BA4BB7AA9217', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'D434618A-D0DF-43AD-ACCF-C5D2E5B68C17', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'D4A8501A-54F3-4A03-85C1-3544074A7897', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'D60DB17C-3BEE-4753-87E9-E9FFD7BF53AA', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'D72E926D-D128-4BC4-B8BD-882E06769CBA', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'D89A866E-CAAC-4558-81B6-677267DC9845', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'D909B543-15B4-44B1-B4C8-D522A40FBC9B', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'DA0DDB93-9F6A-4C2D-8454-28608AAC8261', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'DB18E437-5547-48DB-9457-7C27FB124F20', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'DB2EE802-AA6A-4E8D-B3E4-7A0F438B28B2', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'DB39E016-2C9D-4185-9D84-F415DD2C6AC7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'DCB0F79D-157A-45B9-A0AB-92A556E510EC', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'DE0B0C8E-C82B-4FEB-AF26-4852CA768F24', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'DE7D2D59-EB13-4D29-9B69-30F1BA9737A7', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'DEAE366C-9515-44B6-B3A2-2270D2379A97', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:42', '2022-11-25 15:50:42', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'DEE9F83F-03E1-4D70-BC3E-0774F808F2C6', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'DF497BDD-450D-4F8E-9C4C-D5F90DE242A8', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'DFDDEBAF-5717-43B6-BAF5-4BC74420071A', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'DFE9DEA9-6F0D-43CF-99D2-D1B0E230527D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:54', '2022-11-23 10:30:54', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'E2534A5F-FB98-43A5-8DD5-7089C7E2E7F6', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'E394DDC9-C1B9-49EA-98E2-151DF3C66AB8', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'E39856ED-24A7-42F9-AF15-C555CD989DB4', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'E3B37A8A-14AD-4392-8984-0072C5AC1C72', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:58', '2022-11-23 10:28:58', 'invalid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'E705DBC5-B8E0-4330-BA3C-81800B0F4D9D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'E71471D4-4F6D-430C-82B8-3CB2EC228623', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid');
INSERT INTO `content` (`jobId`, `trxId`, `MSISDN`, `message`, `Messaging_Product`, `Recipient_Type`, `Type`, `Preview_URL`, `dateCreated`, `dateUpdated`, `status`) VALUES
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'E76DB603-E220-40C1-AB29-A74DCA935061', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'E80DC823-BC40-446F-B2DA-6D2B9E778685', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'E9E7EC48-45A9-4722-B196-D982A83A8CE6', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:28:59', '2022-11-23 10:28:59', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'EA3DB9A9-FE94-4C46-BCC5-2F2F0A04AB0D', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:34', '2022-11-23 10:31:34', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'EAD391CB-449C-4E4D-B792-69277630BEF9', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'EB126113-9B6B-4AF6-A791-7A719C88723F', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'EB385C5D-7FC1-4025-A612-EF650C36E6D8', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'ED120203-7219-4EFC-8F61-1F911E78EAA5', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:40', '2022-11-25 15:50:40', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'EDA66EF0-8FC2-4914-9934-42DAEA684B5D', '62812898903343', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:39', '2022-11-25 15:50:39', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'EE9C2639-6277-433E-B9D8-752B69E9B60C', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'EFC4B4F6-264F-4820-8B58-C883DBF731C0', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:25', '2022-11-23 10:37:25', 'valid'),
('9A2C2FA9-ABCA-432D-B962-F67C86C1AF94', 'F0D0F9E2-9E6C-45B5-B631-D71D19CAA8D7', '6281212345678', 'Halo, ini pesan terbaru.', 'whatsapp', 'individual', 'test', 1, '2022-11-20 20:33:09', '2022-11-20 20:33:09', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'F0E8A9AA-E58A-40FD-9196-9104E57A7831', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'F13D0549-6642-487E-8711-C8B17C93EA43', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:01', '2022-11-23 10:29:01', 'invalid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'F21D4EEC-5A4D-4458-8E7A-41C50BFF012A', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:26', '2022-11-23 10:37:26', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'F346B5C4-C4EC-454F-8B48-58345A124122', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:52', '2022-11-23 10:30:52', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'F3A4A7DB-1D9A-48FA-81F8-516178912820', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'F54CF7D6-B2E1-4606-B22B-78CB2AF1BF60', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:32', '2022-11-23 10:31:32', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'F6FD9793-425B-4F12-ACE2-D822D33BF358', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'F8DB6CB1-5905-427A-A598-3F5EC05F7FE0', '62812898902763', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-23 10:37:27', '2022-11-23 10:37:27', 'valid'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'F91EB647-83FD-4F93-94AD-3CED03FF8A2F', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:29:00', '2022-11-23 10:29:00', 'invalid'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'FB132D5C-C869-4297-8628-DF5EA5643554', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:31:33', '2022-11-23 10:31:33', 'invalid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'FB335C92-69DA-44C6-AB01-A6F76FEBA0CF', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'FCCBB947-0BE5-4C11-800A-D9178CA757BD', '62812898901234', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:43', '2022-11-25 15:50:43', 'valid'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'FEF25452-620A-46E2-A36F-7A619F823759', '62812898907462', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', 0, '2022-11-25 15:50:41', '2022-11-25 15:50:41', 'valid'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'FF19A24F-312D-4E22-8786-4BE5E11DC372', 'Hai, nikmati Promo Belanja hari ini.', 'whatsapp', 'individual', 'text', '', 0, '2022-11-23 10:30:53', '2022-11-23 10:30:53', 'invalid');

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
('0474F0C2-CA15-4887-94A1-A82034D0B790', 'Test Upload', 'test_new4.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-20 11:27:55', '2022-11-20 11:27:55'),
('6400C189-D9D4-45F6-A686-67FED9473D54', 'test', 'test_new.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-20 20:29:02', '2022-11-20 20:29:02'),
('720CA9A2-B24A-47E0-8A85-9B4D9BB125BF', 'ts', 'Testing1.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-23 10:31:32', '2022-11-23 10:31:32'),
('777B4AFC-497C-409D-9E8B-2EEB29E6EFD7', 'Testing1', 'Testing1.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-23 10:28:58', '2022-11-23 10:28:58'),
('8C96D987-EA03-40F6-BE94-C2D8DC9EF78D', 'ts', 'Testing1.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-23 10:30:51', '2022-11-23 10:30:51'),
('9A2C2FA9-ABCA-432D-B962-F67C86C1AF94', 'g', 'test_new.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-20 20:33:09', '2022-11-20 20:33:09'),
('B0D4C467-71BA-4B48-998B-465832A8A61A', 'Test Upload', 'test_new.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-20 11:26:53', '2022-11-20 11:26:53'),
('B562F7AB-38AE-4060-A093-843408C41344', 'Test', 'test_new.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-20 11:51:13', '2022-11-20 11:51:13'),
('BDA6ADEA-E9DA-43CF-9E55-FA01D43278F1', 'test', 'Testing2.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-23 10:37:24', '2022-11-23 10:37:24'),
('DDB181EE-C5D2-44B5-8F7C-CA0001BEA5CA', 'Test Upload', 'Testing2.xlsx', 'C:xampphtdocsassasin_projectpublic', '2022-11-25 15:50:39', '2022-11-25 15:50:39');

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
(4, 'Firstname', 'Lastname', 'firstlastname', 'lastfirst@name.com', '2af9b1ba42dc5eb01743e6b3759b6e4b', NULL, NULL, '2022-11-26 11:52:41', '2022-11-26 11:52:41');

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
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
