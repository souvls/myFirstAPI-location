-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 09:12 AM
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
-- Database: `myapi_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `address`, `image`, `description`) VALUES
(1, ' Đảo Kỳ Co – Maldives của Việt Nam', 'Thuộc xã đảo Nhơn Lý, cách trung tâm Tp Quy Nhơn 25km.', NULL, 'Kỳ Co là một địa điểm du lịch Quy Nhơn nổi tiếng với thiên nhiên hoang sơ, hoàn toàn chưa bị các hoạt động dịch vụ du lịch làm phiền. Biển Kỳ Co khác biệt so với những bãi tắm khác là nơi đây có nhiều bãi cát vàng, dòng nước xanh trong, bên cạnh đó còn có nhiều núi đá nhấp nhô vô cùng thú vị'),
(2, 'Vịnh Eo Gió - Nơi đón hoàng hôn đẹp nhất Việt Nam', 'Thuộc xã đảo Nhơn Lý, cách Tp Quy Nhơn 25km.', NULL, 'Eo Gió là một trong những địa điểm du lịch Quy Nhơn được nhiều khách du lịch ghé qua nhất. Nằm cách trung tâm thành phố Quy Nhơn từ 20km tại xã Nhơn Lý. Eo Gió là một khu vực eo biển nhỏ, nằm nép mình bên trong hai dãy núi hùng vĩ với cảnh quan thiên nhiên vô cùng xinh đẹp, cái tên Eo Gió cũng xuất phát từ đây.'),
(3, 'Đảo nhỏ Hòn Khô', 'Xã đảo Nhơn Hải, cách Tp Quy Nhơn 20km', NULL, 'Làng chài Nhơn Hải hay còn gọi là Hòn Khô, nơi đây là một hòn đảo bình yên với sóng biển vỗ nhẹ cùng làn nước trong xanh. Đến đây mà chỉ ngắm cảnh thì quá phí, ta còn có thể tắm biển hay lặn san hô dưới lòng đại dương. Dưới nước đã thế còn trên bờ thì sao, dĩ nhiên ta có thể cùng bạn bè trải nghiệm các bãi cát trắng mịn, chinh phục các dãy núi đá bí ẩn hay khám phá con đường bí ẩn dưới biển ấn tượng.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'sou', 'sou@gmail.com', '1322'),
(3, 'sosddu', 'sou@sdsdgmail.com', '1322'),
(4, 'sosddu', 'sou@sdsdgmail.com', '1322'),
(6, 'sodsddu', 'sou@sddfdfdsdgmail.com', '1322'),
(7, 'soulixai', 'soulixai@gmail.com', '$2b$10$THqdB4hOVeFInj0/Fk.Ph.wUkrq155AVuKkcvfJQaMkSlbimj5Qxa'),
(8, 'soulixai11', 'soulixai11@gmail.com', '$2b$10$Z7rEn4.vi2MR95iYatPz.egVXr2ndAoTWFP13NlctdRA7R3bK09DO'),
(9, 'soulixai12', 'soulixai21@gmail.com', '$2b$10$HJSsd6RRsKOl/B51SEunU.GzRHXOOio3wFYrhl36rUT7u00ZBh.XK'),
(10, 'soulixai13', 'soulixai13@gmail.com', '$2b$10$b0q6IqZQ1.X9bTGCQs3ZrOxJkdg41wcf7bme.QiS5RnlmKLrydsLS'),
(11, 'soulixai14', 'soulixai14@gmail.com', '$2b$10$kVwUks4t13/HTHAi7vuWCOh7.QF8W34tnncDj.kGEvaCfc9Xszg2m'),
(12, 'soulixai15', 'soulixai15@gmail.com', '$2b$10$WB3EXEz/eyZqkEUBv28DNe8pAvy1uPCzs4STtwS.CL0iS0T8rj6qy'),
(13, 'soulixai16', 'soulixai16@gmail.com', '$2b$10$TfrXIhXu.ThJpVjkJCDQn.D8MqR0AbcJgz/2z6IpWWai89B90p4j2'),
(14, 'soulixai17', 'soulixai17@gmail.com', '$2b$10$KOWMGrDD6hIODfTohfSMa.f.wniUwf4UtedYWpTjCMw8VtsGSOH6K'),
(15, 'soulixai18', 'soulixai18@gmail.com', '$2b$10$siC8QQs1eIxWfluSMTf/Luzdkye7ZzmwKaH8cWZCm3DXiU8skuDl2'),
(16, 'soulixai19', 'soulixai19@gmail.com', '$2b$10$h/HvquMkI/88x4ADozvpV.ZXcyMc0nJRtwRvd77gyBAc4.70WTOSu'),
(17, 'soulixai20', 'soulixai20@gmail.com', '$2b$10$/QfwSJihLyRmkAkZ.4nIhOyv7iMsimBuMt.rLkwsP14kOJs5zIOZS'),
(18, 'soulixai22', 'soulixai22@gmail.com', '$2b$10$x9EBHVevTSm7lx8fK3YOhu7AiyFaRuA1xsyRVKCPVxned.SOt07Di'),
(19, 'soulixa345', 'soulixai567@gmail.com', '$2b$10$CdOo6CS4BiNKWDG8uoHwx.aHqP3oMQmQF34/piwrcEEZn0AGG3fo2'),
(20, 'soulixai890', 'soulixai890@gmail.com', '$2b$10$ep/HuvLUcxnTYGzBy3gXy.7NiZfRqwembvcXTAJNGTA.k7RZSTGBC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
