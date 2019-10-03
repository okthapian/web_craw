-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 08:00 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dinkes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(64) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `username` varchar(32) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `email`, `no_hp`, `username`) VALUES
(1, 'okthapian', 'okthapian', 'iqbalokthapian18@gmail.com', '083850187425', 'okthapian');

-- --------------------------------------------------------

--
-- Table structure for table `data_karcis`
--

CREATE TABLE IF NOT EXISTS `data_karcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `kode_puskesmas` int(11) NOT NULL,
  `kode_karcis` varchar(2) NOT NULL,
  `blok_keluar` int(11) NOT NULL,
  `no_kluar_awal` int(11) NOT NULL,
  `no_kluar_akhir` int(11) NOT NULL,
  `lembar_kluar` int(11) NOT NULL,
  `blok_sisa` int(11) NOT NULL,
  `no_sisa_awal` int(11) NOT NULL,
  `no_sisa_akhir` int(11) NOT NULL,
  `lembar_sisa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kode_puskesmas` (`kode_puskesmas`),
  KEY `kode_karcis` (`kode_karcis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `karcis`
--

CREATE TABLE IF NOT EXISTS `karcis` (
  `id_krcs` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(2) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(16) NOT NULL,
  `blok` int(11) NOT NULL,
  `lembar` int(11) NOT NULL,
  `seri_awal` int(11) NOT NULL,
  `seri_akhir` int(11) NOT NULL,
  `ket` varchar(16) NOT NULL,
  PRIMARY KEY (`id_krcs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karcis`
--

INSERT INTO `karcis` (`kode`, `tanggal`, `jenis`, `blok`, `lembar`, `seri_awal`, `seri_akhir`, `ket`) VALUES
('DD', '2018-12-28', 'Tanpa Harga', 300, 15000, 1, 15000, 'masuk');

-- --------------------------------------------------------

--
-- Table structure for table `puskesmas`
--

CREATE TABLE IF NOT EXISTS `puskesmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `puskesmas`
--

INSERT INTO `puskesmas` (`id`, `nama`) VALUES
(1, 'Burneh'),
(2, 'Bangkalan'),
(3, 'Socah'),
(4, 'Sepulu'),
(5, 'Banjar'),
(6, 'Kwanyar'),
(7, 'Tragah'),
(8, 'Blega'),
(9, 'Kamal'),
(10, 'Tanah Merah'),
(11, 'Klampis'),
(12, 'Sukolilo'),
(13, 'Kedungdung'),
(14, 'Jaddih'),
(15, 'Tanjung Bumi'),
(16, 'Modung'),
(17, 'Konang'),
(18, 'Galis'),
(19, 'Arosbaya'),
(20, 'Tongguh'),
(21, 'Geger'),
(22, 'Kokop');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_karcis`
--
ALTER TABLE `data_karcis`
  ADD CONSTRAINT `data_karcis_ibfk_2` FOREIGN KEY (`kode_karcis`) REFERENCES `karcis` (`kode`),
  ADD CONSTRAINT `data_karcis_ibfk_1` FOREIGN KEY (`kode_puskesmas`) REFERENCES `puskesmas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
