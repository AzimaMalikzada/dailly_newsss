-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Ara 2022, 19:06:46
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `daily_newss_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `a_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `a_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `n_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `n_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `n_category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `n_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `n_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n_file_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n_creator_id` int(11) NOT NULL,
  `n_create_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_description`, `n_date`, `n_category`, `n_status`, `n_file`, `n_file_ext`, `n_creator_id`, `n_create_date`) VALUES
(1, 'salam', 'necesiz', '2022-12-29T06:43', 'Finance', 'Active', '', '', 0, '2022-12-10 06:58:12'),
(2, 'salam', 'necesiz', '2022-12-29T06:43', 'Finance', 'Active', '', '', 0, '2022-12-10 07:01:07'),
(3, 'salam', 'necesen', '2022-12-24T07:07', 'Finance', 'Active', '', '', 0, '2022-12-10 07:06:02'),
(4, 'lalalallalaammam', 'mamamamma', '2023-01-07T07:12', 'Education', 'Deactive', '', '', 0, '2022-12-10 07:08:51'),
(5, 'bu ders', 'oslem basarili', '2022-12-24T13:13', 'Sport', 'Deactive', '', '', 0, '2022-12-10 07:13:15'),
(6, 'lkmxlkcm kl', 'kxcm kkMXC ', '2022-12-23T13:29', 'Sport', 'Active', '', '', 0, '2022-12-10 07:29:33'),
(7, 'gtggbhbhbhhb', 'bhbhbhb', '2023-01-01T20:39', 'Finance', 'Active', 'Snapchat-14129917572.jpg', '.jpg', 0, '2022-12-15 20:39:37'),
(8, ',m , , ', 'hbhuhbjhbh', '2023-01-07T01:40', 'Sport', 'Active', 'Mark-Eliyahu-Journey1.mp3', '.mp3', 0, '2022-12-15 20:40:43'),
(9, 'm mmmm', 'hhhhhhhhhhh', '2022-12-15T01:36', 'Sport', 'Active', '', '', 0, '2022-12-15 21:36:38'),
(10, 'çççççççççç', 'ççççççççç', '2023-01-01T21:42', 'Technology', 'Deactive', 'HD-wallpaper-mystic-panda-animal-butterfly-greens-jungle-pandas-wwf-yinyang6.jpg', '.jpg', 0, '2022-12-15 21:38:16');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
