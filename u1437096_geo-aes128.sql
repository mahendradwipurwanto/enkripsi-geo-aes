-- Adminer 4.8.1 MySQL 5.5.5-10.5.15-MariaDB-cll-lve dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tbl_file`;
CREATE TABLE `tbl_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `file_name_source` varchar(255) DEFAULT NULL,
  `file_name_finish` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_size` float DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `tgl_upload` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('1','2') NOT NULL COMMENT '1 untuk enkripsi, 2 untuk dekripsi',
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_file`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `tbl_file_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_file` (`id_file`, `id_user`, `email`, `message`, `file_name_source`, `file_name_finish`, `file_url`, `file_size`, `password`, `tgl_upload`, `status`, `keterangan`) VALUES
(83,	13,	'govan351@gmail.com',	'ini ya bro\0\0\0\0\0\0',	'assets/uploads/encrypt/83007-rahmatsyabani.docx',	'61398-rahmatsyabani.rda',	'assets/uploads/encrypt/61398-rahmatsyabani.rda',	12.083,	'3c6e0b8a9c15224a',	'2022-03-15 16:13:57',	'2',	'kunci'),
(84,	14,	'ngodingin.indonesia@gmail.com',	'C34GGOVUEpcstmepocy6Fw==',	'46754-undangan-perti-kota-malang.pdf',	'43249-undangan-perti-kota-malang.rda',	'assets/uploads/encrypt/43249-undangan-perti-kota-malang.rda',	190.961,	'1f73402c644002a7',	'2022-03-15 17:03:11',	'1',	'awd'),
(85,	13,	'govan351@gmail.com',	'in file nya\0\0\0\0\0',	'assets/uploads/encrypt/6797-5170411318_geovanywicaksono_uas.pdf',	'14866-5170411318_geovanywicaksono_uas.rda',	'assets/uploads/encrypt/14866-5170411318_geovanywicaksono_uas.rda',	83.3564,	'3c6e0b8a9c15224a',	'2022-03-15 22:53:08',	'2',	'kunci'),
(86,	16,	'mulyatie326@gmail.com',	'file yang dikiri',	'assets/uploads/encrypt/64613-05.3-bab-3.pdf',	'34507-05.3-bab-3.rda',	'assets/uploads/encrypt/34507-05.3-bab-3.rda',	339.828,	'fe6b5f11f069a561',	'2022-03-16 04:29:19',	'2',	'Key'),
(87,	17,	'Cocoon.asia99@gmail.com',	'Tolong di kirm\0\0',	'assets/uploads/encrypt/62349-5170411318_geovanywicaksono.pdf',	'98282-5170411318_geovanywicaksono.rda',	'assets/uploads/encrypt/98282-5170411318_geovanywicaksono.rda',	249.508,	'3c6e0b8a9c15224a',	'2022-03-20 07:09:23',	'2',	'Kunci'),
(88,	13,	'gegecrackers22@gmail.com',	'Emok baik\0\0\0\0\0\0\0',	'assets/uploads/encrypt/60633-5170411318_geovanywicaksono_ktm.pdf',	'72366-5170411318_geovanywicaksono_ktm.rda',	'assets/uploads/encrypt/72366-5170411318_geovanywicaksono_ktm.rda',	175.976,	'3c6e0b8a9c15224a',	'2022-03-20 07:08:04',	'2',	'Kunci'),
(89,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'50074-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'70790-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/70790-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:23:33',	'1',	'Key'),
(90,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'71262-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'26137-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/26137-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:23:43',	'1',	'Key'),
(91,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'94524-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'13868-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/13868-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:23:46',	'1',	'Key'),
(92,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'82438-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'23156-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/23156-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:23:49',	'1',	'Key'),
(93,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'Ini filenya\0\0\0\0\0',	'assets/uploads/encrypt/64352-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'68830-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/68830-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:26:25',	'2',	'Key'),
(94,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'71432-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'97469-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/97469-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:23:52',	'1',	'Key'),
(95,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'26804-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'32692-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/32692-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:23:58',	'1',	'Key'),
(96,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'20786-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'13147-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/13147-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:02',	'1',	'Key'),
(97,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'55577-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'88944-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/88944-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:02',	'1',	'Key'),
(98,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'94900-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'83553-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/83553-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:03',	'1',	'Key'),
(99,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'78983-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'39464-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/39464-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:07',	'1',	'Key'),
(100,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'6883-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'72461-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/72461-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:15',	'1',	'Key'),
(101,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'31613-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'88586-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/88586-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:24',	'1',	'Key'),
(102,	18,	'hevinayoawulandari.pnbyk21@gmail.com ',	'mGXeK24xvhL7ND+MI3BQVA==',	'64228-uts-navigasi-dan-panduan-terbang_17050076_hevi.pdf',	'37517-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	'assets/uploads/encrypt/37517-uts-navigasi-dan-panduan-terbang_17050076_hevi.rda',	224.894,	'fe6b5f11f069a561',	'2022-04-17 14:24:24',	'1',	'Key'),
(103,	19,	'govan351@gmail.com',	'8OD7JTYxbzpuVxOQQzbVqQ==',	'65480-lamaran-umum.docx',	'61481-lamaran-umum.rda',	'assets/uploads/encrypt/61481-lamaran-umum.rda',	8.54199,	'fe6b5f11f069a561',	'2022-05-30 16:19:05',	'1',	'Key');

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `last_activity` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(100) NOT NULL,
  `hak_akses` enum('admin','pengguna') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `last_activity`, `email`, `hak_akses`) VALUES
(9,	'admin',	'21232f297a57a5a743894a0e4a801fc3',	'admin9',	'2022-06-06 15:27:46',	'admin@gmail.com',	'admin'),
(13,	'gege',	'4adaf88a2e402560b7f8bd08d5611965',	'Geovany Wicaksono',	'2022-03-22 11:52:02',	'govan351@gmail.com',	'pengguna'),
(14,	'ngodingin',	'e10adc3949ba59abbe56e057f20f883e',	'ngodingin indonesia',	'2022-03-18 11:23:59',	'ngodingin.indonesia@gmail.com',	'pengguna'),
(15,	'hilda',	'06ccdf32786d310dbcd80f0fe24fac9b',	'Hilda Fazlia',	'2022-03-16 16:24:57',	'mulyatie326@gmail.com',	'admin'),
(16,	'dastan',	'e0a76ae6b8a18a0021611aa94449d9c1',	'Winda Widyastuti',	'2022-03-16 11:32:02',	'mulyatie326@gmail.com',	'pengguna'),
(17,	'Hilda',	'eabb80d46c7eda2b298f956cc6bb9aa6',	'Hilda Fazlia',	'2022-03-20 14:02:47',	'hildafazlia@gmail.com',	'pengguna'),
(18,	'Hevi',	'9930b9df3c1ca1286f9e656c64944c4a',	'Hevi nayoa',	'2022-04-17 21:22:02',	'hevinayoawulandari.pnbyk21@gmail.com ',	'pengguna'),
(19,	'subang',	'e59cd3ce33a68f536c19fedb82a7936f',	'Agung Laksojo',	'2022-05-30 23:19:25',	'govan351@gmail.com',	'pengguna'),
(21,	'dastan',	'3cb98ad580672180da39966691467300',	'gege',	'2022-06-06 13:38:45',	'govan351@gmail.com',	'pengguna');

-- 2022-06-06 12:03:48
