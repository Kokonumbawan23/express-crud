-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 06:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itc_certificate`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `validUntil` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `deskripsi`, `penyelenggara`, `validUntil`, `id_user`, `createdAt`, `updatedAt`) VALUES
(1, 'Coursera certificate', 'Bits and bite Coursera certificate', 'Coursera', '2023-10-13 12:24:12', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Gcloud Sertificate', 'Google cloud foundation', 'Google', '2025-01-09 12:24:12', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `createdAt`, `updatedAt`) VALUES
(1, 'Member', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230126092045-create-user.js'),
('20230126092417-create-role.js'),
('20230126093719-create-certificate.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `waNumber` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullName`, `email`, `password`, `phoneNumber`, `waNumber`, `divisi`, `jabatan`, `periode`, `id_role`, `createdAt`, `updatedAt`) VALUES
(53, '123190123', 'Shazi Awaludin', 'shaziawaludin23@gmail.co', '9208', '085775406400', '085775406400', 'INKADIV', 'Ketua', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '123200093', 'Afrien Khoirunnisa S', 'afrienkhs@gmail.com', '5042', '081327104156', '081327104156', 'INKADIV', 'Wakil Kadiv Human Resource', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '123200089', 'Krisna Pande Raja Sirait', 'krisnasirait48@gmail.com', '6499', '085229960001', '085229960001', 'INKADIV', 'Wakil ketua', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '123200068', 'Muhammad Aziz Rosyid Hidayat ', 'azizrosyid783@gmail.com ', '7799', '089603376196', '089603376196', 'INKADIV', 'Wakil Kadiv Web dev', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '123200120', 'DANIEL FEBRIAN EKA WIJAYA', 'danielfebrian61@gmail.com', '2258', '085876030035', '085876030035', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '123210103', 'Michel Pierce Tahya', 'michelpt76767@gmail.com', '1795', '085156441564', '085156441564', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '123210053', 'Aditya Dwiputra Subroto', 'adityadwiputras23@gmail.com', '1462', '081310700574', '081310700574', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '123210181', 'Komang Yuda Saputra ', 'yudasaputra082@gmail.com', '5461', '087861009087', '087861009087', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '123210061', 'Seva Giantama Farel', 'Sevafarel17@gmail.com', '3294', '0895364806964', '0895364806964', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '123200167', 'Iman Abdurrahman', 'namasayaiman02@gmail.com', '5483', '+6282264832357', '+6282264832357', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '123210102', 'Gregorius Rafael Santosa', 'rafaelsantosa75@gmail.com', '4776', '082197597157', '082197597157', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '123210131', 'Rafli Iskandar Kavarera ', 'rafli.030715@gmail.com', '3435', '087809704628', '087809704628', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '123200112', 'I Made Dwika Putra Riswanda', 'dwikariswanda@gmail.com', '5694', '087822535180', '087822535180', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '123200046', 'Muhammad Rifqy', 'muhammad.rifqy2002@gmail.com', '4781', '085869497560', '085869497560', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '123200125', 'Muhammad Handi Rachmawan', 'mail.handira@gmail.com', '2458', '085741614079', '08895689773', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '123200139', 'Juan Azhar Adviseta Setiawan', 'juanajh428@gmail.com', '9262', '0895637496991', '085221553269', 'INKADIV', 'Kadiv web dev', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '123200142', 'Alfinhi Hajid Dhia', 'alfinhihd@gmail.com', '1555', '089674453046', '089674453046', 'INKADIV', 'Kadiv Human Resource', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '123210091', 'ahlul fadhly', 'ahlulfadhly01@gmail.com', '4623', '082392260354', '082392260354', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '123210106', 'Muhammad Jinaan Fakhruddin ', 'jinaan886@gmail.com ', '4040', '08885993153', '08885993153', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '123200057', 'Syafira Widiyanti', 'syafirawidiyanti11@gmail.com', '9239', '085952441486', '085952441486', 'INKADIV', 'Bendahara', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '123200087', 'Rio Bintang Adi Putra', 'riobintang.ap@gmail.com', '2398', '081915552402', '081915552402', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '123200109', 'Muhammad Agil Suyuti', 'muhammadagilsuyuti@gmail.com ', '5628', '081918244634', '081918244634', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '123200029', 'Muhammad Farhan Harvito', 'farhanharvito@gmail.com', '8988', '081226655960', '081226655960', 'PR', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '123210139', 'Faustina Chelloana Triatmojo ', 'chelloana22@gmail.com', '2220', '085226053115', '085226053115', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '123200085', 'Agung Prayogi', 'agungprayogi305@gmail.com', '8840', '089664315700', '085378488004', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '123210078', 'Muhammad Rafli', 'rafliyulistiawan@gmail.com', '6126', '085157724721', '085157724721', 'PR', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '123200091', 'Niken Riri Dwi Astuti ', 'nikenriri05@gmail.com', '9283', '085725127872', '085725127872', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '123210115', 'Amelia Kartika Putri', 'Kartikaputriamelia88@gmail.com', '3600', '0895330829578', '0895330829578', 'PR', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '123200143', 'Abdi Dwi Ramdani', 'abdidwiramdani@gmail.com', '1246', '081312575219', '081312575219', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '123210155', 'Gaharu Winanggya Binathara', 'akashiditaru@gmail.com', '5796', '0812-2936-7740', '0812-2936-7740', 'PR', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '123210044', 'Sayang Sani', 'sayangsanie06@gmail.com', '7662', '0895602934973', '0895602934973', 'PM', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '123200066', 'Zaida Noor Irfan', 'zaidannoor06@gmail.com', '8087', '081295175352', '081295175352', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '123210166', 'Alva Raymon Yehudha', 'alvaraymon8b@gmail.com', '3558', '085927400315', '085927400315', 'PM', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '123210072', 'Anindia Azzahra', 'Anindiaazzahra93@gmail.com', '3709', '081226114220', '081226114220', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '123200078', 'Mikhael Rivandio Rekzadianto ', 'mikhael.rivandio@gmail.com', '2899', '085877774640', '085877774640', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '123200064', 'Muhammad Rizki Firmansyah', 'rizkifirmansyah2642@gmail.com', '1951', '089508944197', '089508944197', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '123210172', 'Candy Ristyan Arda Yudha Mahesega', 'candyristyan1@gmail.com', '2122', '081217166676', '081217166676', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '123200018', 'Indrawani ', 'waniindra58@gmail.com', '2835', '082291790527', '082291790527', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '123210062', 'Muhammad Raditya Haikal Mumtaz ', 'hmumtaz70@gmail.com', '3250', '085228518483', '085228518483', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '123210045', 'Bahruddin Farid Dhiyaurrahman ', 'bfaridrahman@gmail.com ', '3959', '083830681912', '083830681912', 'PM', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '123200025', 'Yan Danu Tirta', 'thephantomwarrior02@gmail.com', '8559', '082278037765', '082278037765', 'PM', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '123200129', 'Visen', 'viseenn@gmail.com', '6767', '085722161711', '08164661336', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '123210158', 'Nayaka Rafif Sutaprawira ', 'nayakarafif55@gmail.com', '1105', '081229878785', '081229878785', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '123200033', 'Nurul Adilah', 'adilahnurul234@gmail.com', '2300', '085337294997', '085337294997', 'PM', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '123210114', 'Rizal Hanifa Pratama ', 'rizalhp12345@gmail.com', '5024', '089667912404', '089667912404', 'PM', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '123210022', 'I Gusti Ketut Dimas Pramantya', 'Igkdimas@gmail.com', '8145', '081246402586', '081246402586', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '123200074', 'Edwinpras Wijaya', 'weather2402@gmail.com', '1897', '081918912141', '081918912141', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '123210064', 'Rian Budiyanto', 'rianbudiyanto44@gmail.com', '4838', '089608020680', '089608020680', 'WEB', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '123200047', 'Akhmal Dimas Pratama', 'pratamadimas03@gmail.com', '6849', '081328751344', '081328751344', 'INKADIV', 'Kadiv Mobile', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '123200001', 'Nur Rosydatun Nafiah ', 'nurrosyd13@gmail.com ', '8814', '082289357426', '085266844198', 'INKADIV', 'Sekretaris', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '123200086', 'Faisal Reza Rahmat', 'faisalrezarahmat1@gmail.com', '2928', '089601036313', '089601036313', 'Mobile', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '123210083', 'Desy Nur Azizah', 'desy15111@gmail.com', '1710', '0895392565765', '0895392565765', 'PR', '', '2023', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
