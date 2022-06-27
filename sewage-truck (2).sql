-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 04:50 AM
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
-- Database: `sewage-truck`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_people`
--

CREATE TABLE `add_people` (
  `id_addpeople` int(10) NOT NULL,
  `id_people` int(10) NOT NULL,
  `building_type` varchar(255) NOT NULL,
  `add_people` varchar(255) NOT NULL,
  `subarea_people` varchar(255) NOT NULL,
  `area_people` varchar(255) NOT NULL,
  `province_people` varchar(255) NOT NULL,
  `postalcode_people` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_people`
--

INSERT INTO `add_people` (`id_addpeople`, `id_people`, `building_type`, `add_people`, `subarea_people`, `area_people`, `province_people`, `postalcode_people`) VALUES
(1, 1, 'บ้านแฝด 1 ชั้น', '25/78 ม.1', 'สันทรายหลวง', 'สันทราย', 'เชียงใหม่', '50210'),
(2, 2, 'บ้านเดี่ยว', '987 ม.2', 'ป่าไผ่', 'สันทราย', 'เชียงใหม่', '50210'),
(3, 1, 'บ้านเดี่ยว', '59/787 ม.10', 'หนองหาร', 'สันทราย', 'เชียงใหม่', '50290');

-- --------------------------------------------------------

--
-- Table structure for table `disposal_site`
--

CREATE TABLE `disposal_site` (
  `id_site` int(10) NOT NULL,
  `name_site` varchar(255) NOT NULL,
  `license_site` varchar(10) NOT NULL,
  `allowedby_site` varchar(10) NOT NULL,
  `add_site` varchar(255) NOT NULL,
  `subarea_site` varchar(255) NOT NULL,
  `area_site` varchar(255) NOT NULL,
  `province_site` varchar(255) NOT NULL,
  `postalcode_site` varchar(5) NOT NULL,
  `tel_site` varchar(10) NOT NULL,
  `id_login` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disposal_site`
--

INSERT INTO `disposal_site` (`id_site`, `name_site`, `license_site`, `allowedby_site`, `add_site`, `subarea_site`, `area_site`, `province_site`, `postalcode_site`, `tel_site`, `id_login`) VALUES
(1, 'โรงกำจัด อบจ.เชียงใหม่', '1231233333', '1230000000', '123/1 ม.1', 'สุเทพ', 'เมือง', 'เชียงใหม่', '50200', '0963963963', '0963963963'),
(2, 'เทศบาลสันทรายหลวง', '1252101252', '1201201200', '486 ม.4', 'สันทรายหลวง', 'สันทราย', 'เชียงใหม่', '50210', '0989879874', '0989879874');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id_driver` int(10) NOT NULL,
  `id_truck` int(10) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `tel_driver` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id_driver`, `id_truck`, `driver_name`, `tel_driver`) VALUES
(1, 1, 'เขียว แดง', '0989859852'),
(2, 2, 'ดำ ขาว', '0965496549');

-- --------------------------------------------------------

--
-- Table structure for table `licenceplate`
--

CREATE TABLE `licenceplate` (
  `id_licence` int(10) NOT NULL,
  `id_truck` varchar(10) NOT NULL,
  `truck_licence` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `licenceplate`
--

INSERT INTO `licenceplate` (`id_licence`, `id_truck`, `truck_licence`) VALUES
(1, '1', 'ยน-2569 เชียงใหม่'),
(2, '2', 'ทบ-1234 เชียงใหม่');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `password`) VALUES
('0654654654', '852852'),
('0659856589', '11223344'),
('0698964785', '123123123'),
('0951951951', '123123'),
('0963963963', '123123123'),
('0989879874', '123123123');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id_people` int(10) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `tel_people` varchar(10) NOT NULL,
  `id_login` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id_people`, `prefix`, `firstname`, `lastname`, `tel_people`, `id_login`) VALUES
(1, 'นางสาว', 'เขียว', 'จำลอง', '0659856589', '0659856589'),
(2, 'นาย', 'หมู', 'ตุ๊ต๊ะ', '0698964785', '0698964785');

-- --------------------------------------------------------

--
-- Table structure for table `porter`
--

CREATE TABLE `porter` (
  `id_porter` int(10) NOT NULL,
  `id_truck` varchar(10) NOT NULL,
  `name_porter` varchar(255) NOT NULL,
  `tel_porter` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `porter`
--

INSERT INTO `porter` (`id_porter`, `id_truck`, `name_porter`, `tel_porter`) VALUES
(1, '1', 'ทอง แดง', '0656565656'),
(2, '2', 'ธง ชัย', '0696969696');

-- --------------------------------------------------------

--
-- Table structure for table `record_site`
--

CREATE TABLE `record_site` (
  `id_record_site` int(10) NOT NULL,
  `id_site` int(10) NOT NULL,
  `name_site` varchar(255) NOT NULL,
  `licence_site` varchar(10) NOT NULL,
  `allowedby_site` varchar(255) NOT NULL,
  `tel_site` varchar(10) NOT NULL,
  `add_site` varchar(255) NOT NULL,
  `subarea_site` varchar(255) NOT NULL,
  `area_site` varchar(255) NOT NULL,
  `province_site` varchar(255) NOT NULL,
  `postalcode_site` varchar(5) NOT NULL,
  `id_truck` int(10) NOT NULL,
  `nametruck` varchar(255) NOT NULL,
  `licence_truck` varchar(10) NOT NULL,
  `allowedby_truck` varchar(255) NOT NULL,
  `add_truck` varchar(255) NOT NULL,
  `subarea_truck` varchar(255) NOT NULL,
  `area_truck` varchar(255) NOT NULL,
  `province_truck` varchar(255) NOT NULL,
  `postalcode_truck` varchar(5) NOT NULL,
  `tel_truck` varchar(10) NOT NULL,
  `truck_licencet` varchar(255) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `tel_driver` varchar(10) NOT NULL,
  `name_porter` varchar(255) NOT NULL,
  `tel_porter` varchar(10) NOT NULL,
  `date_site` date NOT NULL,
  `timein_site` time NOT NULL,
  `timeout_site` time NOT NULL,
  `total_site` int(10) NOT NULL,
  `name_people` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `record_truck`
--

CREATE TABLE `record_truck` (
  `id_record` int(10) NOT NULL,
  `id_truck` int(10) NOT NULL,
  `nametruck` varchar(255) NOT NULL,
  `license_truck` varchar(10) NOT NULL,
  `allowedby_truck` varchar(255) NOT NULL,
  `add_truck` varchar(255) NOT NULL,
  `subarea_truck` varchar(255) NOT NULL,
  `area_truck` varchar(255) NOT NULL,
  `province_truck` varchar(255) NOT NULL,
  `postalcode_truck` varchar(5) NOT NULL,
  `tel_truck` varchar(10) NOT NULL,
  `truck_licencet` varchar(255) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `tel_driver` varchar(10) NOT NULL,
  `name_porter` varchar(255) NOT NULL,
  `tel_porter` varchar(10) NOT NULL,
  `id_people` int(10) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `building_type` varchar(255) NOT NULL,
  `add_people` varchar(255) NOT NULL,
  `subarea_people` varchar(255) NOT NULL,
  `area_people` varchar(255) NOT NULL,
  `province_people` varchar(255) NOT NULL,
  `postalcode_people` varchar(5) NOT NULL,
  `tel_people` varchar(10) NOT NULL,
  `date_truck` date NOT NULL,
  `timein_truck` time NOT NULL,
  `timeout_truck` time NOT NULL,
  `total_truck` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `register_people`
--

CREATE TABLE `register_people` (
  `id_people` int(10) NOT NULL,
  `id_login` varchar(10) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `tel_people` varchar(10) NOT NULL,
  `building_type` varchar(255) NOT NULL,
  `add_people` varchar(255) NOT NULL,
  `subarea_people` varchar(255) NOT NULL,
  `area_people` varchar(255) NOT NULL,
  `province_people` varchar(255) NOT NULL,
  `postalcode_people` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register_people`
--

INSERT INTO `register_people` (`id_people`, `id_login`, `prefix`, `firstname`, `lastname`, `tel_people`, `building_type`, `add_people`, `subarea_people`, `area_people`, `province_people`, `postalcode_people`) VALUES
(1, '', 'นางสาว', 'เขียว', 'จำลอง', '', '', '', '', '', '', ''),
(2, '', 'นาย', 'หมู', 'ตุ๊ต๊ะ', '', '', '', '', '', '', ''),
(3, '0636829561', 'นางสาว', 'ฝ้าย', 'ลิ้นทอง', '0636829561', 'บ้านแฝด\r\n', '123/1 ม.1', 'สันทรายหลวง', 'สันทราย', 'เชียงใหม่', '50210'),
(4, '0636829561', 'นาง', 'น้ำ', 'ใส', '0636829561', 'บ้านเดี่ยว', ' 12/2', 'สันทรายหลวง', 'สันทราย', 'เชีียงใหม่', '50210');

-- --------------------------------------------------------

--
-- Table structure for table `register_site`
--

CREATE TABLE `register_site` (
  `id_site` int(10) NOT NULL,
  `id_login` varchar(10) NOT NULL,
  `name_site` varchar(255) NOT NULL,
  `licence_site` varchar(10) NOT NULL,
  `allowedby_site` varchar(255) NOT NULL,
  `tel_site` varchar(10) NOT NULL,
  `add_site` varchar(255) NOT NULL,
  `subarea_site` varchar(255) NOT NULL,
  `area_site` varchar(255) NOT NULL,
  `province_site` varchar(255) NOT NULL,
  `postalcode_site` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register_site`
--

INSERT INTO `register_site` (`id_site`, `id_login`, `name_site`, `licence_site`, `allowedby_site`, `tel_site`, `add_site`, `subarea_site`, `area_site`, `province_site`, `postalcode_site`) VALUES
(1, 'undefined', 'โรงกำจัด อบจ.เชียงใหม่', '1231233333', 'อบจ.เชียงใ', 'undefined', ' ', 'สุเทพ', 'เมือง', 'เชียงใหม่', '50200'),
(2, '0989879874', 'เทศบาลสันทรายหลวง', '1252101252', 'เทศบาลสันทรายหลวง', '0989879874', ' 486 ม.4', 'สันทรายหลวง', 'สันทราย', 'เชียงใหม่', '50210');

-- --------------------------------------------------------

--
-- Table structure for table `register_truck`
--

CREATE TABLE `register_truck` (
  `id_truck` int(10) NOT NULL,
  `id_login` varchar(10) NOT NULL,
  `nametruck` varchar(255) NOT NULL,
  `licence_truck` varchar(10) NOT NULL,
  `allowedby_truck` varchar(10) NOT NULL,
  `add_truck` varchar(255) NOT NULL,
  `subarea_truck` varchar(255) NOT NULL,
  `area_truck` varchar(255) NOT NULL,
  `province_truck` varchar(255) NOT NULL,
  `postalcode_truck` varchar(5) NOT NULL,
  `tel_truck` varchar(10) NOT NULL,
  `truck_licence` varchar(255) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `tel_driver` varchar(10) NOT NULL,
  `name_porter` varchar(255) NOT NULL,
  `tel_porter` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register_truck`
--

INSERT INTO `register_truck` (`id_truck`, `id_login`, `nametruck`, `licence_truck`, `allowedby_truck`, `add_truck`, `subarea_truck`, `area_truck`, `province_truck`, `postalcode_truck`, `tel_truck`, `truck_licence`, `name_driver`, `tel_driver`, `name_porter`, `tel_porter`) VALUES
(1, '0654654654', 'รถดูดอบต.หนองหาร', 'undefined', 'อบต.หนองหา', ' 12/12 ม.10', 'หนองหาร', 'สันทราย', 'เชียงใหม่', '50290', '0654654654', 'บย-2586 เชียงใหม่', 'เขียว แดง', '0989859852', 'ดำ ทอง', '0696956958');

-- --------------------------------------------------------

--
-- Table structure for table `story_people`
--

CREATE TABLE `story_people` (
  `id_storyp` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `story_site`
--

CREATE TABLE `story_site` (
  `id_storys` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `story_truck`
--

CREATE TABLE `story_truck` (
  `id_storyt` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `truck`
--

CREATE TABLE `truck` (
  `id_truck` int(10) NOT NULL,
  `nametruck` varchar(255) NOT NULL,
  `licence_truck` varchar(10) NOT NULL,
  `allowedby_truck` varchar(10) NOT NULL,
  `add_truck` varchar(255) NOT NULL,
  `subarea_truck` varchar(255) NOT NULL,
  `area_truck` varchar(255) NOT NULL,
  `province_truck` varchar(255) NOT NULL,
  `postalcode_truck` varchar(5) NOT NULL,
  `tel_truck` varchar(10) NOT NULL,
  `id_login` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `truck`
--

INSERT INTO `truck` (`id_truck`, `nametruck`, `licence_truck`, `allowedby_truck`, `add_truck`, `subarea_truck`, `area_truck`, `province_truck`, `postalcode_truck`, `tel_truck`, `id_login`) VALUES
(1, 'อบต.หนองหาร', '1234567890', '1234567890', '12/12 ม.10', 'หนองหาร', 'สันทราย', 'เชียงใหม่', '50290', '0654654654', '0654654654'),
(2, 'อบต.สุเทพ', '7890789078', '7890789789', '123/7 ม.1', 'สุเทพ', 'เมือง', 'เชียงใหม่', '52000', '0951951951', '0951951951');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_people`
--
ALTER TABLE `add_people`
  ADD PRIMARY KEY (`id_addpeople`),
  ADD KEY `id_people` (`id_people`);

--
-- Indexes for table `disposal_site`
--
ALTER TABLE `disposal_site`
  ADD PRIMARY KEY (`id_site`),
  ADD KEY `id_login` (`id_login`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_driver`),
  ADD KEY `id_truck` (`id_truck`);

--
-- Indexes for table `licenceplate`
--
ALTER TABLE `licenceplate`
  ADD PRIMARY KEY (`id_licence`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id_people`),
  ADD KEY `id_login` (`id_login`);

--
-- Indexes for table `porter`
--
ALTER TABLE `porter`
  ADD PRIMARY KEY (`id_porter`);

--
-- Indexes for table `record_site`
--
ALTER TABLE `record_site`
  ADD PRIMARY KEY (`id_record_site`);

--
-- Indexes for table `record_truck`
--
ALTER TABLE `record_truck`
  ADD PRIMARY KEY (`id_record`);

--
-- Indexes for table `register_people`
--
ALTER TABLE `register_people`
  ADD PRIMARY KEY (`id_people`);

--
-- Indexes for table `register_site`
--
ALTER TABLE `register_site`
  ADD PRIMARY KEY (`id_site`);

--
-- Indexes for table `register_truck`
--
ALTER TABLE `register_truck`
  ADD PRIMARY KEY (`id_truck`);

--
-- Indexes for table `story_people`
--
ALTER TABLE `story_people`
  ADD PRIMARY KEY (`id_storyp`);

--
-- Indexes for table `story_site`
--
ALTER TABLE `story_site`
  ADD PRIMARY KEY (`id_storys`);

--
-- Indexes for table `story_truck`
--
ALTER TABLE `story_truck`
  ADD PRIMARY KEY (`id_storyt`);

--
-- Indexes for table `truck`
--
ALTER TABLE `truck`
  ADD PRIMARY KEY (`id_truck`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_people`
--
ALTER TABLE `add_people`
  MODIFY `id_addpeople` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `disposal_site`
--
ALTER TABLE `disposal_site`
  MODIFY `id_site` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id_driver` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `licenceplate`
--
ALTER TABLE `licenceplate`
  MODIFY `id_licence` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id_people` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `porter`
--
ALTER TABLE `porter`
  MODIFY `id_porter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `record_site`
--
ALTER TABLE `record_site`
  MODIFY `id_record_site` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_truck`
--
ALTER TABLE `record_truck`
  MODIFY `id_record` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_people`
--
ALTER TABLE `register_people`
  MODIFY `id_people` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register_site`
--
ALTER TABLE `register_site`
  MODIFY `id_site` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register_truck`
--
ALTER TABLE `register_truck`
  MODIFY `id_truck` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `story_people`
--
ALTER TABLE `story_people`
  MODIFY `id_storyp` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `story_site`
--
ALTER TABLE `story_site`
  MODIFY `id_storys` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `story_truck`
--
ALTER TABLE `story_truck`
  MODIFY `id_storyt` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck`
--
ALTER TABLE `truck`
  MODIFY `id_truck` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_people`
--
ALTER TABLE `add_people`
  ADD CONSTRAINT `add_people_ibfk_1` FOREIGN KEY (`id_people`) REFERENCES `people` (`id_people`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`id_truck`) REFERENCES `truck` (`id_truck`);

--
-- Constraints for table `register_site`
--
ALTER TABLE `register_site`
  ADD CONSTRAINT `register_site_ibfk_2` FOREIGN KEY (`id_site`) REFERENCES `disposal_site` (`id_site`);

--
-- Constraints for table `register_truck`
--
ALTER TABLE `register_truck`
  ADD CONSTRAINT `register_truck_ibfk_2` FOREIGN KEY (`id_truck`) REFERENCES `truck` (`id_truck`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
