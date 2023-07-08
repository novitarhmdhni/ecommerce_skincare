-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2023 pada 09.54
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websitekuu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `contactName` varchar(255) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `contactPhone` varchar(15) NOT NULL,
  `contactMessage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`contactID`, `contactName`, `contactEmail`, `contactPhone`, `contactMessage`) VALUES
(0, 'Fatma Nuris Istiyana', 'fatmaistyn@gmail.com', '85778439081', 'dfsd'),
(0, 'Novita Rahmadhani', 'novitarahmadhani@gmail.com', '0895328965321', 'asdfghjkl'),
(0, 'Neneng Jihan Huwaidaa', 'jihan@gmail.com', '085789655099', 'ggrdvht'),
(0, 'Auliya Dewi Safitri', 'Auliyadewi@gmail.com', '085128655099', 'hjgksirhw'),
(0, 'Nisa Aulya Rahmawati', 'nisaaul@gmail.com', '085136550630', 'gdwfbnht');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `Nama` varchar(500) NOT NULL,
  `Telepon` int(12) NOT NULL,
  `Alamat` varchar(1000) NOT NULL,
  `Detail_Pesanan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`Nama`, `Telepon`, `Alamat`, `Detail_Pesanan`) VALUES
('Fatma Nuris Istiyana', 78937240, 'Jakarta Barat', 'Skintific Moisturize Gel'),
('Novita Ramadhani', 87547474, 'Depok', 'The Ordinary Serum \r\nBuffet'),
('Nisa Aulya Rahmawati', 23453423, 'Purwakarta', 'Cetaphil Gentle Skin \r\nCleanser'),
('Neneng Jihan Huwaidaa', 98978745, 'Jakarta Selatan', 'Avoskin Miraculous \r\nSerum'),
('Auliya Dewi Safitri', 67568437, 'Bekasi', 'Wardah Renew You'),
('', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(1000) NOT NULL,
  `ProductPrice` double(10,2) NOT NULL,
  `ProductImage` varchar(400) NOT NULL,
  `ProductDesc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductPrice`, `ProductImage`, `ProductDesc`) VALUES
(1, 'Somethinc UV Sunscreen', 49000.00, 'images/somethinc.jpg', 'Sunscreen gel yang mampu memberikan proteksi dari sinar UV'),
(2, 'Avoskin Miraculous Serum', 204000.00, 'images/avoskin.jpg', 'Serum ini sebagai eksfoliator membuat kulit lebih bersih dan cerah'),
(3, 'Skintific Moisturize Gel', 139000.00, 'images/skintific.jpg', 'Untuk mengatasi skin barrier yang rusak seperti jerawat, kemerahan, dll'),
(4, 'N\'Pure Face Toner', 90000.00, 'images/npure.jpg', 'Formula hydrating toner sangat ringan dan nyaman bagi segala jenis kulit'),
(11, 'Face Wash The Ordinary', 128000.00, 'images/theordinary.jpg', 'Face wash The ordinary untuk jenis kulit normal '),
(12, 'Cetaphil Gentle Skin Cleanser', 50000.00, 'images/cetaphil.jpg', 'Pembersih wajah yang mengandung propylen glycol.'),
(13, 'Senka Percet Whip Facial Foam', 29000.00, 'images/senka.jpg', 'Membersihkan kulit wajah secara optimal dan mencerahkan kulit kusam.'),
(14, 'Skin Aqua UV Sunscreen', 46000.00, 'images/skinaqua.jpg', 'skincare yg concern dengan tanda-tanda penuaan productnation'),
(15, 'Wardah Renew You', 94000.00, 'images/wardah.jpg', 'Advanced recover system yang membantu mengatasi penuaan kulit'),
(16, 'Laneige Moisture Mist', 179000.00, 'images/laneige.jpg', 'produk yang dapat menghidrasi kulit wajahmu'),
(17, 'The Body Shop Toner', 250000.00, 'images/thebodyshop.jpg', 'Toner wajah dengan kandungan community trade aloe vera'),
(18, 'Nivea MicellAir Skin Breathe', 32500.00, 'images/nivea.jpg', 'Cocok buat kulit kering dan dipakai di area mata'),
(19, 'COSRX Low pH Gel Cleanser', 52000.00, 'images/cosrx.jpg', 'Mengandung tea tree oil untuk membantu mengontrol produksi minyak '),
(20, 'Biore UV Aqua Rich Essence', 35000.00, 'images/biore.jpg', 'Biore UV Aqua Rich Essence sangat friendly untuk kulit berminyak'),
(21, 'ElsheSkin Sebum Serum', 190000.00, 'images/elsheskin.jpg', 'Bagi kulit berminyak mengurangi sebum dan menghilangkan komedo'),
(22, 'L\'Oreal Revitalift Crystal', 84000.00, 'images/loreal.jpg', 'Mengandung Centella asiatica berfungsi mengembalikan fungsi kulit'),
(23, 'Emina Masquerade Face Mask', 29000.00, 'images/emina.jpg', 'Cocok bagi yang memiliki kulit kombinasi, cenderung berminyak'),
(24, 'Himalaya Neem Face Wash', 32000.00, 'images/himalaya.jpg', 'Mampu membersihkan kulit berminyak dan kombinasi tanpa terasa ketarik'),
(25, 'Nacific Fresh Herb Serum', 80000.00, 'images/nacific.jpg', 'Mampu mencerahkan kulit serta membantu mengencangkan kulit'),
(26, 'Safi White Expert Skin', 32000.00, 'images/safitoner.jpg', 'Toner safi berfungsi melembabkan dan membersihkan pori–pori'),
(27, 'Skin Aqua UV SPF50', 42000.00, 'images/skinaquaa.jpg', 'Membantu melindungi kulit dari paparan sinar matahari'),
(28, 'SOME BY MI AHA/BHA/PHA', 311000.00, 'images/somebymi.jpg', 'Mampu mengatasi kulit berjerawat dan dapat menghilangkan jerawat '),
(29, 'Safi White Natural Anti Acne', 32000.00, 'images/safi2.jpg', 'Membantu merawat wajah berjerawat tanpa membuat kulit terasa kering'),
(30, 'The Ordinary Serum Buffet', 295000.00, 'images/theordinary2.jpg', 'Berfungsi untuk mencerahkan dan meningkatkan kelembapan kulit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `nama` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `komentar` varchar(200) NOT NULL,
  `rate` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`nama`, `product`, `foto`, `komentar`, `rate`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('Alina Baraz', 'Facial Wash', 'imageedit_1_4482237638.png', 'Sangat melembabkan!', '4/5'),
('Aurora Zetana', 'Booster Serum', 'photo12.jpg', 'Mencerahkan kulit kusam', '5/5'),
('Balqis Queera', 'Exfo Toner', 'pic-2.png', 'Lumayan membuat texture kulit halus', '3/5'),
('Fatma', 'Safi', 'foto_fatma.png', 'cocok banget di kulit kombinasi', '4/5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Show Your Skin', 'sys@gmail.com', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a'),
(9, 'jhan', 'nneng.jihan@gmail.com', '$2y$10$6.6d3Z4ZvhCj3WHL7JJmOeFimFUIwm4o9rJjISM9LeUdRT0OMrJyC'),
(11, 'Fatma Nuris Istiyana', 'fatmanuris048@gmail.com', '$2y$10$sgxYt9SvrcRKHjzT5QMsje.3OpY54p9xcC2G9FBj5lNrPNjWMPiYy'),
(12, 'Novita', 'novita@gmail.com', '$2y$10$STqiGg7kCLVLJuU.Wcd22.0vpnPi1sRcN6UuPqkAK9VnhdHnf37pK'),
(13, 'Nisa', 'nisa@gmail.com', '$2y$10$48HLzvT1CUyq7YWCpMFi.eGF/.mwcpU2MVqhjP4iiUUPVxRs1qjUG'),
(14, 'Auliya Dewi', 'auliya@gmail.com', '$2y$10$fIJp/4n9ORC88keIldyBOOJXfDmWyJv/0n2Y4QZz2chmQSso7Lf7a');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
