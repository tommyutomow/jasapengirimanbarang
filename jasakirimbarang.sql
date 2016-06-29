-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 04:55 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jasakirimbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `idcustomer` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `nama`, `alamat`, `telepon`, `email`) VALUES
('1', 'Tommy Utomo Wijaya', 'Jalan Scientia no 16, Tangerang', '0812-13110310003', 'tommy@flash.com'),
('2', 'Benny Cahyadi', 'Jalan Scientia no 28, Tangerang', '0813-13110310004', 'benny@flash.com'),
('3', 'Hendy Tandi', 'Jalan Scientia no 33, Tangerang', '0812-13110310005', 'hendy@flash.com'),
('4', 'Vincent Andrew', 'Perum Taman Harapan Baru Blok M2, Bekasi', '0812-13110310027', 'andrew@flash.com');

-- --------------------------------------------------------

--
-- Table structure for table `kotadari`
--

CREATE TABLE IF NOT EXISTS `kotadari` (
  `ID_KotaDari` varchar(30) NOT NULL,
  `Nama_KotaDari` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kotadari`
--

INSERT INTO `kotadari` (`ID_KotaDari`, `Nama_KotaDari`) VALUES
('BKS', 'Bekasi'),
('JKT', 'Jakarta'),
('JMB', 'Jambi');

-- --------------------------------------------------------

--
-- Table structure for table `kotatujuan`
--

CREATE TABLE IF NOT EXISTS `kotatujuan` (
  `ID_KotaTujuan` varchar(30) NOT NULL,
  `Nama_KotaTujuan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kotatujuan`
--

INSERT INTO `kotatujuan` (`ID_KotaTujuan`, `Nama_KotaTujuan`) VALUES
('BKS', 'Bekasi'),
('JKT', 'Jakarta'),
('JMB', 'Jambi');

-- --------------------------------------------------------

--
-- Table structure for table `paketoke`
--

CREATE TABLE IF NOT EXISTS `paketoke` (
  `ID_PaketOke` varchar(30) NOT NULL,
  `Kota_Dari` tinytext NOT NULL,
  `Kota_Tujuan` tinytext NOT NULL,
  `Hargakg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketoke`
--

INSERT INTO `paketoke` (`ID_PaketOke`, `Kota_Dari`, `Kota_Tujuan`, `Hargakg`) VALUES
('1', 'Bekasi', 'Bekasi', 2000),
('2', 'Bekasi', 'Jakarta', 3000),
('3', 'Bekasi', 'Jambi', 4000),
('4', 'Jakarta', 'Bekasi', 3000),
('5', 'Jakarta', 'Jakarta', 2000),
('6', 'Jakarta', 'Jambi', 4000),
('7', 'Jambi', 'Bekasi', 4000),
('8', 'Jambi', 'Jakarta', 4000),
('9', 'Jambi', 'Jambi', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `paketreguler`
--

CREATE TABLE IF NOT EXISTS `paketreguler` (
  `ID_PaketReguler` varchar(30) NOT NULL,
  `Kota_Dari` varchar(20) NOT NULL,
  `Kota_Tujuan` varchar(20) NOT NULL,
  `Hargakg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketreguler`
--

INSERT INTO `paketreguler` (`ID_PaketReguler`, `Kota_Dari`, `Kota_Tujuan`, `Hargakg`) VALUES
('1', 'Bekasi', 'Bekasi', 3000),
('2', 'Bekasi', 'Jakarta', 5000),
('3', 'Bekasi', 'Jambi', 7000),
('4', 'Jakarta', 'Bekasi', 4000),
('5', 'Jakarta', 'Jakarta', 3000),
('6', 'Jakarta', 'Jambi', 9000),
('7', 'Jambi', 'Bekasi', 7000),
('8', 'Jambi', 'Jakarta', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `paketyes`
--

CREATE TABLE IF NOT EXISTS `paketyes` (
  `ID_PaketYes` varchar(30) NOT NULL,
  `Kota_Dari` tinytext NOT NULL,
  `Kota_Tujuan` tinytext NOT NULL,
  `Hargakg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketyes`
--

INSERT INTO `paketyes` (`ID_PaketYes`, `Kota_Dari`, `Kota_Tujuan`, `Hargakg`) VALUES
('1', 'Bekasi', 'Bekasi', 5000),
('2', 'Bekasi', 'Jakarta', 10000),
('3', 'Bekasi', 'Jambi', 20000),
('4', 'Jakarta', 'Bekasi', 10000),
('5', 'Jakarta', 'Jakarta', 5000),
('6', 'Jakarta', 'Jambi', 22000),
('7', 'Jambi', 'Bekasi', 20000),
('8', 'Jambi', 'Jakarta', 22000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `ID_Pegawai` varchar(30) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Telepon` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Hak_User` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_Pegawai`, `Nama`, `Telepon`, `Username`, `Password`, `Hak_User`) VALUES
('1', 'admin', '0812-123456789', 'admin', 'admin', 'Admin'),
('2', 'pegawai', '0812-123456789', 'pegawai', 'pegawai', 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `ID_Transaksi` varchar(30) NOT NULL,
  `Nama_Pengawai` tinytext NOT NULL,
  `Tgl_Transaksi` tinytext NOT NULL,
  `Jam_Transaksi` tinytext NOT NULL,
  `Status_Barang` tinytext NOT NULL,
  `Nama_Customer` tinytext NOT NULL,
  `Alamat_Rincian` tinytext NOT NULL,
  `No_Telp` tinytext NOT NULL,
  `Nama_Penerima` tinytext NOT NULL,
  `Nama_Barang` tinytext NOT NULL,
  `Jenis_Barang` tinytext NOT NULL,
  `Berat_Barang` int(11) NOT NULL,
  `Paket` tinytext NOT NULL,
  `Kota_Dari` tinytext NOT NULL,
  `Kota_Tujuan` tinytext NOT NULL,
  `Hargaperkg` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Bayar` int(11) NOT NULL,
  `Kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `Nama_Pengawai`, `Tgl_Transaksi`, `Jam_Transaksi`, `Status_Barang`, `Nama_Customer`, `Alamat_Rincian`, `No_Telp`, `Nama_Penerima`, `Nama_Barang`, `Jenis_Barang`, `Berat_Barang`, `Paket`, `Kota_Dari`, `Kota_Tujuan`, `Hargaperkg`, `Total_Harga`, `Bayar`, `Kembali`) VALUES
('1', 'pegawai', '24-May-2016', '21:17:41', 'On Transit', 'Tommy Utomo Wijaya', 'Jalan Scientia no 16, Tangerang', '0812-13110310003', 'ABC', 'HANDPHONE', 'Elektronik', 2, 'Paket YES', 'Jakarta', 'Jambi', 22000, 44000, 50000, 6000),
('2', 'pegawai', '24-May-2016', '21:17:41', 'On Process', 'Benny Cahyadi', 'Jalan Scientia no 28, Tangerang', '0813-13110310004', 'BUDI', 'SEPATU', 'Pakaian', 2, 'Paket Regular', 'Jakarta', 'Bekasi', 4000, 8000, 9000, 1000),
('3', 'pegawai', '24-May-2016', '21:17:41', 'On Process', 'Hendy Tandi', 'Jalan Scientia no 33, Tangerang', '0812-13110310005', 'CHALIE', 'SNACK', 'Makanan', 3, 'Paket Oke', 'Bekasi', 'Jakarta', 3000, 9000, 10000, 1000),
('4', 'pegawai', '24-May-2016', '16:41:06', 'Manifest', 'Vincent Andrew', 'Perum Taman Harapan Baru Blok M2, Bekasi', '0812-13110310027', 'DUDU', 'GELAS', 'Elektronik', 4, 'Paket Regular', 'Bekasi', 'Jambi', 7000, 28000, 30000, 2000),
('5', 'pegawai', '25-May-2016', '08:42:39', 'On Process', 'Tommy Utomo Wijaya', 'Jalan Scientia no 16, Tangerang', '0812-13110310003', 'STEVE', 'BATU ', 'Pakaian', 2, 'Paket Regular', 'Bekasi', 'Jambi', 7000, 14000, 15000, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`idcustomer`);

--
-- Indexes for table `kotadari`
--
ALTER TABLE `kotadari`
 ADD PRIMARY KEY (`ID_KotaDari`);

--
-- Indexes for table `kotatujuan`
--
ALTER TABLE `kotatujuan`
 ADD PRIMARY KEY (`ID_KotaTujuan`);

--
-- Indexes for table `paketoke`
--
ALTER TABLE `paketoke`
 ADD PRIMARY KEY (`ID_PaketOke`);

--
-- Indexes for table `paketreguler`
--
ALTER TABLE `paketreguler`
 ADD PRIMARY KEY (`ID_PaketReguler`);

--
-- Indexes for table `paketyes`
--
ALTER TABLE `paketyes`
 ADD PRIMARY KEY (`ID_PaketYes`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
 ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`ID_Transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
