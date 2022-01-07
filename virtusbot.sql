-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 09:10 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtusbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE `m_admin` (
  `ID` int(25) NOT NULL,
  `USERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 'admin', '$2a$08$t/SSOQDWwDKtZpc4PTKahO816w4S9ZbQI.1MgCeXUVlNoXZBCR3ii'),
(2, 'anu@anu2.com', '$2a$08$eFLlvSqEVA5YyKkxxpPi8.dDlvallgKqIeg00EUeoA0KL.EpijTiW');

-- --------------------------------------------------------

--
-- Table structure for table `m_config`
--

CREATE TABLE `m_config` (
  `CONFIG_ID` int(9) NOT NULL,
  `TELEGRAM_TOKEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DEV_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COMPANY_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BOT_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_MAINTENANCE` int(1) NOT NULL,
  `IS_DEFAULT` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_config`
--

INSERT INTO `m_config` (`CONFIG_ID`, `TELEGRAM_TOKEN`, `DEV_ID`, `COMPANY_NAME`, `BOT_NAME`, `IS_MAINTENANCE`, `IS_DEFAULT`) VALUES
(1, '1826014735:AAErfA1ELHtH5Zm85Xg1lO0zeR34zTZJKP0', '1884843695', 'Virtus Technology Indonesia', 'VirtusBot', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_log`
--

CREATE TABLE `m_log` (
  `LOG_ID` int(9) NOT NULL,
  `SENDER_ID` int(20) NOT NULL,
  `SENDER_USERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SENDER_NICK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RESPONSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIMESTAMP` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_log`
--

INSERT INTO `m_log` (`LOG_ID`, `SENDER_ID`, `SENDER_USERNAME`, `SENDER_NICK`, `MSG`, `RESPONSE`, `TIMESTAMP`) VALUES
(304, 1884843695, 'xyperia', 'XYPERIA', 'hi', 'Selamat pagi, <i>XYPERIA</i>. Saya adalah <i>VirtusBot</i>\n\nApabila kamu ingin mengetahui tentang <i>Virtus Technology Indonesia</i>, kamu dapat menekan tombol \"Tampilkan Menu\" 😊', 1624934453),
(305, 1884843695, 'xyperia', 'XYPERIA', '4', 'Selamat datang di Virtus Technology Indonesia\nVisi kami adalah menjadi salah satu penyedia solusi infrastruktur TI terkemuka di Indonesia, menjadi mitra pilihan bagi mitra bisnis dan pengguna akhir serta pemberi kerja pilihan bagi para profesional bisnis ', 1624934460),
(306, 1884843695, 'xyperia', 'XYPERIA', '4', 'Selamat datang di Virtus Technology Indonesia\nVisi kami adalah menjadi salah satu penyedia solusi infrastruktur TI terkemuka di Indonesia, menjadi mitra pilihan bagi mitra bisnis dan pengguna akhir serta pemberi kerja pilihan bagi para profesional bisnis ', 1624934462),
(307, 1884843695, 'xyperia', 'XYPERIA', '4', 'Selamat datang di Virtus Technology Indonesia\nVisi kami adalah menjadi salah satu penyedia solusi infrastruktur TI terkemuka di Indonesia, menjadi mitra pilihan bagi mitra bisnis dan pengguna akhir serta pemberi kerja pilihan bagi para profesional bisnis ', 1624934463),
(308, 1884843695, 'xyperia', 'XYPERIA', '4', 'Selamat datang di Virtus Technology Indonesia\nVisi kami adalah menjadi salah satu penyedia solusi infrastruktur TI terkemuka di Indonesia, menjadi mitra pilihan bagi mitra bisnis dan pengguna akhir serta pemberi kerja pilihan bagi para profesional bisnis ', 1624934464),
(309, 1884843695, 'xyperia', 'XYPERIA', '4', 'Selamat datang di Virtus Technology Indonesia\nVisi kami adalah menjadi salah satu penyedia solusi infrastruktur TI terkemuka di Indonesia, menjadi mitra pilihan bagi mitra bisnis dan pengguna akhir serta pemberi kerja pilihan bagi para profesional bisnis ', 1624934481),
(310, 1884843695, 'xyperia', 'XYPERIA', '5', 'Grow With Us\nKami adalah distributor IT terkemuka di Indonesia. Sebagai Mitra Solusi Infrastruktur TI, perusahaan mendistribusikan Produk TI Internasional dengan merek teratas melalui ratusan reseller/channel yang tersebar di seluruh wilayah Indonesia. Ka', 1624934488),
(311, 1884843695, 'xyperia', 'XYPERIA', '5', 'Grow With Us\nKami adalah distributor IT terkemuka di Indonesia. Sebagai Mitra Solusi Infrastruktur TI, perusahaan mendistribusikan Produk TI Internasional dengan merek teratas melalui ratusan reseller/channel yang tersebar di seluruh wilayah Indonesia. Ka', 1624934489),
(312, 1884843695, 'xyperia', 'XYPERIA', '7', 'Connect With Us\nAnda dapat menghubungi kami melalui telepon atau melalui chat di (021) 806 222 88 \n\nMasih ada yang ingin kamu tanyakan? 😊😊', 1624934491),
(313, 1884843695, 'xyperia', 'XYPERIA', '7', 'Connect With Us\nAnda dapat menghubungi kami melalui telepon atau melalui chat di (021) 806 222 88 \n\nMasih ada yang ingin kamu tanyakan? 😊😊', 1624934492),
(314, 1884843695, 'xyperia', 'XYPERIA', '7', 'Connect With Us\nAnda dapat menghubungi kami melalui telepon atau melalui chat di (021) 806 222 88 \n\nMasih ada yang ingin kamu tanyakan? 😊😊', 1624934493),
(315, 1884843695, 'xyperia', 'XYPERIA', '6', 'Sementara tidak ada event yang berlangsung di Virtus Technology Indonesia \n\nMasih ada yang ingin kamu tanyakan? 😊😊', 1624934515),
(316, 1884843695, 'xyperia', 'XYPERIA', '6', 'Sementara tidak ada event yang berlangsung di Virtus Technology Indonesia \n\nMasih ada yang ingin kamu tanyakan? 😊😊', 1624934516),
(317, 1884843695, 'xyperia', 'XYPERIA', '6', 'Sementara tidak ada event yang berlangsung di Virtus Technology Indonesia \n\nMasih ada yang ingin kamu tanyakan? 😊😊', 1624934518),
(318, 1884843695, 'xyperia', 'XYPERIA', '3', 'Kamu dapat memanfaatkan pengalaman dan keahlian Virtus yang luas dalam solusi produk Virtus dengan memanfaatkan tenaga, proses, dan pengetahuan kami melalui Layanan Profesional Virtus. Dari mengevaluasi kebutuhan bisnis dan solusi Anda, konsultan teknis h', 1624934539),
(319, 1884843695, 'xyperia', 'XYPERIA', '3', 'Kamu dapat memanfaatkan pengalaman dan keahlian Virtus yang luas dalam solusi produk Virtus dengan memanfaatkan tenaga, proses, dan pengetahuan kami melalui Layanan Profesional Virtus. Dari mengevaluasi kebutuhan bisnis dan solusi Anda, konsultan teknis h', 1624934541),
(320, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934546),
(321, 1884843695, 'xyperia', 'XYPERIA', 'sec', 'Kami memiliki beberapa teknologi pada solusi Security yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>OSDA</b> - OS, Database & Application Security\n<b>DIS</b> - Data & Information Security\n<b>NGS</b> - Network & Gateway Security\n<b>UEM</b> -', 1624934549),
(322, 1884843695, 'xyperia', 'XYPERIA', 'sec', 'Kami memiliki beberapa teknologi pada solusi Security yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>OSDA</b> - OS, Database & Application Security\n<b>DIS</b> - Data & Information Security\n<b>NGS</b> - Network & Gateway Security\n<b>UEM</b> -', 1624934550),
(323, 1884843695, 'xyperia', 'XYPERIA', 'sec', 'Kami memiliki beberapa teknologi pada solusi Security yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>OSDA</b> - OS, Database & Application Security\n<b>DIS</b> - Data & Information Security\n<b>NGS</b> - Network & Gateway Security\n<b>UEM</b> -', 1624934551),
(324, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934613),
(325, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934615),
(326, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934616),
(327, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934617),
(328, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934618),
(329, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934619),
(330, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934620),
(331, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934938),
(332, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934939),
(333, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934940),
(334, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934941),
(335, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934941),
(336, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934942),
(337, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934943),
(338, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934944),
(339, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934945),
(340, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934945),
(341, 1884843695, 'xyperia', 'XYPERIA', '1', 'Maaf. Sementara ini saya belum mengerti jawabanmu. 😕\n\n<b>Tapi saya bisa memberikan informasi tentang beberapa poin dibawah: </b> ☺\n', 1624934945),
(342, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934950),
(343, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624934951),
(344, 1884843695, 'xyperia', 'XYPERIA', 'hi', 'Selamat malam, <i>XYPERIA</i>. Saya adalah <i>VirtusBot</i>\n\nApabila kamu ingin mengetahui tentang <i>Virtus Technology Indonesia</i>, kamu dapat menekan tombol \"Tampilkan Menu\" 😊', 1624978415),
(345, 1884843695, 'xyperia', 'XYPERIA', '1]', 'Maaf. Sementara ini saya belum mengerti jawabanmu. 😕\n\n<b>Tapi saya bisa memberikan informasi tentang beberapa poin dibawah: </b> ☺\n1️⃣ - Solutions 💡\n2️⃣ - Products 📦\n3️⃣ - Services ⭐\n4️⃣ - About Us 🏢\n5️⃣ - Career 💼\n6️⃣ - News & Event 📰\n7️⃣ - Contact Us 📞', 1624978445),
(346, 1884843695, 'xyperia', 'XYPERIA', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1624978450),
(347, 1884843695, 'xyperia', 'XYPERIA', 'nw', 'Kami memiliki beberapa teknologi pada solusi Network yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>AD</b> - Application Delivery/Server Load Balancing\n<b>WAN</b> - WAN Optimization\n<b>NTV</b> - Network Traffic Visibility\n<b>LLB</b> - Link L', 1624978455),
(348, 1884843695, 'xyperia', 'XYPERIA', 'Hi', 'Selamat sore, <i>XYPERIA</i>. Saya adalah <i>VirtusBot</i>\n\nApabila kamu ingin mengetahui tentang <i>Virtus Technology Indonesia</i>, kamu dapat menekan tombol \"Tampilkan Menu\" 😊', 1625042980),
(349, 1863023700, 'iyan_tp', 'Septian', 'Hi', 'Selamat pagi, <i>Septian</i>. Saya adalah <i>VirtusBot</i>\n\nApabila kamu ingin mengetahui tentang <i>Virtus Technology Indonesia</i>, kamu dapat menekan tombol \"Tampilkan Menu\" 😊', 1625075907),
(350, 1863023700, 'iyan_tp', 'Septian', '1', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐 \n\nApa yang ingin kamu tanyakan? 😊😊', 1625075917),
(351, 1863023700, 'iyan_tp', 'Septian', 'Nw', 'Kami memiliki beberapa teknologi pada solusi Network yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>AD</b> - Application Delivery/Server Load Balancing\n<b>WAN</b> - WAN Optimization\n<b>NTV</b> - Network Traffic Visibility\n<b>LLB</b> - Link L', 1625075920),
(352, 1863023700, 'iyan_tp', 'Septian', 'Wlan', 'Ketika datang ke WiFi, pengguna saat ini membutuhkan sistem LAN nirkabel (WLAN) yang lebih cerdas yang menyediakan jangkauan, kapasitas, dan keandalan yang jauh lebih baik. WLAN kami menggabungkan smart meshing, keamanan pengguna dinamis, perutean sinyal ', 1625075924),
(353, 1863023700, 'iyan_tp', 'Septian', 'Bye', 'Terima kasih! 🙏 Sampai jumpa, <i>Septian</i> 🙋', 1625075935),
(354, 1863023700, 'iyan_tp', 'Septian', 'Hi', 'Selamat pagi, <i>Septian</i>. Saya adalah <i>VirtusBot</i>\n\nApabila kamu ingin mengetahui tentang <i>Virtus Technology Indonesia</i>, kamu dapat menekan tombol \"Tampilkan Menu\" 😊', 1625102213),
(355, 1884843695, 'xyperia', 'XYPERIA', 'Hi', 'Selamat siang, <i>XYPERIA</i>. Saya adalah <i>VirtusBot</i>\n\nApabila kamu ingin mengetahui tentang <i>Virtus Technology Indonesia</i>, kamu dapat menekan tombol \"Tampilkan Menu\" 😊', 1625125799);

-- --------------------------------------------------------

--
-- Table structure for table `m_menu`
--

CREATE TABLE `m_menu` (
  `ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TITLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KEYWORD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_MAINMENU` int(1) NOT NULL,
  `IS_LASTMENU` int(1) NOT NULL,
  `IS_ENABLED` int(1) NOT NULL,
  `VISITOR` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_menu`
--

INSERT INTO `m_menu` (`ID`, `TITLE`, `CONTENT`, `KEYWORD`, `IS_MAINMENU`, `IS_LASTMENU`, `IS_ENABLED`, `VISITOR`) VALUES
('VTI/BOT/1624345369847', 'Solutions 💡', 'Kami dapat memberikan solusi dari permasalahan yang kamu hadapi.\n\nSolusi yang kami berikan berupa:\n<b>Infra</b> - Infrastruktur 🖥\n<b>NW</b> - Network 🌐\n<b>SW</b> - Software 💾\n<b>Sec</b> - Security 🔐', 'solutions', 1, 0, 1, 21),
('VTI/BOT/1624345595769', 'Products 📦', 'Berikut produk yang kami tawarkan\n-', 'products', 1, 1, 1, 4),
('VTI/BOT/1624345734663', 'Services ⭐', 'Kamu dapat memanfaatkan pengalaman dan keahlian Virtus yang luas dalam solusi produk Virtus dengan memanfaatkan tenaga, proses, dan pengetahuan kami melalui Layanan Profesional Virtus. Dari mengevaluasi kebutuhan bisnis dan solusi Anda, konsultan teknis hingga menerapkan solusi Virtus, manajemen proyek, melatih personel tentang cara memaksimalkan solusi nilai, dan pemeliharaan.\n\nLayanan Profesional Virtus dapat memberi Anda sumber daya, keahlian, dan Pusat Teknologi CTI yang tidak tersedia di tempat lain di kawasan ini. Silakan hubungi marketing@virtusindonesia.com untuk lebih jelasnya. ', 'services', 1, 1, 1, 4),
('VTI/BOT/1624345910528', 'About Us 🏢', 'Selamat datang di Virtus Technology Indonesia\nVisi kami adalah menjadi salah satu penyedia solusi infrastruktur TI terkemuka di Indonesia, menjadi mitra pilihan bagi mitra bisnis dan pengguna akhir serta pemberi kerja pilihan bagi para profesional bisnis dan teknologi paling berbakat. ', 'aboutus', 1, 1, 1, 6),
('VTI/BOT/1624345977696', 'Career 💼', 'Grow With Us\nKami adalah distributor IT terkemuka di Indonesia. Sebagai Mitra Solusi Infrastruktur TI, perusahaan mendistribusikan Produk TI Internasional dengan merek teratas melalui ratusan reseller/channel yang tersebar di seluruh wilayah Indonesia. Kami mencari profesional dengan rekam jejak yang terbukti untuk bergabung dengan tim sukses kami dalam lingkungan dan peluang bisnis yang berkembang pesat. ', 'career', 1, 1, 1, 5),
('VTI/BOT/1624346051967', 'News & Event 📰', 'Sementara tidak ada event yang berlangsung di Virtus Technology Indonesia', 'news', 1, 1, 1, 5),
('VTI/BOT/1624346165284', 'Contact Us 📞', 'Connect With Us\nAnda dapat menghubungi kami melalui telepon atau melalui chat di (021) 806 222 88', 'contactus', 1, 1, 1, 7),
('VTI/BOT/1624347735396', 'Infrastructure', 'Kami memiliki beberapa teknologi pada solusi Infrastruktur yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>DCC</b> - Data Center Computing\n<b>DCS</b> - Data Center Storage\n<b>DCN</b> - Data Center Networking\n<b>BC</b> - Business Continuity & Disaster Recovery\n<b>CV</b> - Cloud and Virtualization\n<b>EUC</b> - End User Computing', 'infra', 0, 0, 1, 6),
('VTI/BOT/1624347982848', 'Network', 'Kami memiliki beberapa teknologi pada solusi Network yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>AD</b> - Application Delivery/Server Load Balancing\n<b>WAN</b> - WAN Optimization\n<b>NTV</b> - Network Traffic Visibility\n<b>LLB</b> - Link Load Balancing\n<b>VN</b> - Virtual Networking\n<b>WLAN</b> - Wireless Network\n<b>DPI</b> - Deep Packet Inspection\n<b>APM</b> - Application Performance', 'nw', 0, 0, 1, 2),
('VTI/BOT/1624348285983', 'Software', 'Kami memiliki beberapa teknologi pada solusi Software yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>AM</b> - Inventory & Asset Management\n<b>NM</b> - Navigation Map\n<b>MAC</b> - Email & Collaboration\n<b>SEN</b> - Search Engine\n<b>WCM</b> - Web Content Management\n<b>ESM</b> - End-Point System Management\n<b>DCI</b> - Data Connectivity & Integration\n<b>DAD</b> - Database & Application Development\n<b>ITS</b> - IT Service Help Desk\n<b>DMM</b> - Database Management & Monitoring', 'sw', 0, 0, 1, 1),
('VTI/BOT/1624354266729', 'Data Center Storage', 'Enterprise Storage adalah sistem penyimpanan data terkomputerisasi untuk skala besar, dimaksudkan sebagai sistem penyimpanan (konsolidasi) terpusat di setiap organisasi untuk menyimpan miliaran data.\n\n-Storage Area Network (Block Based Storage)\n-Network Attached Storage (File Based Storage)\n-Unified Storage (Block & File Combination Storage)\n-Hybrid Storage (Combination Technology SSD & HDD)\n-All Flash Array (Full SSD)\n-Object Storage (Object Based Storage)\n-Software Defined Storage (Build a Storage from a Software)\n-Backup Storage (Storage for Backup Solution)\n-Archive storage (Storage for Archiving)', 'dcs', 0, 1, 1, 0),
('VTI/BOT/1624354436015', 'Data Center Computing', 'Data Center berisi banyak perangkat IT, salah satunya adalah mesin komputasi, yang populer disebut sebagai server. Seiring berjalannya waktu, teknologi berkembang semakin luas mencoba mengintegrasikan satu sama lain\n\n-Servers\n-Integrated Infrastructure System\n-Hyperconverged System', 'dcc', 0, 1, 1, 6),
('VTI/BOT/1624354515455', 'Data Center Networking', 'Data Center adalah kumpulan sumber daya, Jaringan memegang peran penting karena menghubungkan semua sumber daya pusat data bersama-sama, sehingga perlu skalabel dan efisien untuk menghubungkan ratusan ribu server untuk menangani tuntutan komputasi Cloud yang terus meningkat.\n\n-Enterprise Networking\n-Cloud Solution Networking\n-Network Virtualization\n-Sofware Defined Network\n-Tap Aggregation', 'dcn', 0, 1, 1, 0),
('VTI/BOT/1624354587225', 'Business Continuity', 'Setiap organisasi mengharapkan bisnis mereka akan selalu berdiri dan berjalan. Namun ada beberapa hal yang tidak dapat diprediksi seperti bencana alam, terorisme atau downtime sistem yang tidak direncanakan. Ada banyak teknologi yang dapat digunakan untuk mencegah gangguan dan memungkinkan pemulihan aplikasi kritis bisnis dengan cepat.\n\n-Replication\n-HighAvailability\n-Cluster\n-Fault Tolerance\n-Active-Active Data Center\n-Backup and recovery\n-Archiving', 'bc', 0, 1, 1, 0),
('VTI/BOT/1624354666443', 'Cloud Virtualization', 'Virtualisasi TA sekarang ada di mana-mana, era cloud muncul secara alami. Teknologi ini hanya membuat TI bekerja lebih fleksibel.\n\n-Data Center Virtualization\n-Storage Virtualization\n-Network Virtualization\n-Software Define Data Center\n-Software Define Storage\n-Data Center Cloud Computing\n-Cloud Management\n-End-user Cloud Computing\n-Enterprise mobility management', 'cv', 0, 1, 1, 2),
('VTI/BOT/1624354755253', 'End User Computing', 'End User Computing adalah peralatan yang digunakan langsung oleh end-user untuk menunjang aktivitas kerja sehari-hari.\n\n-Desktops\n-Workstation\n-Laptops\n-Thin Client\n-Virtual Desktop', 'euc', 0, 1, 1, 2),
('VTI/BOT/1624355705368', 'Application Delivery', 'Solusi pengiriman aplikasi generasi berikutnya kami yang dirancang untuk memastikan SLA aplikasi, ketersediaan, dan pengalaman pengguna yang dioptimalkan untuk pengguna akhir aplikasi. Plus menyediakan pelacakan SLA aplikasi secara real-time untuk mengatasi kemacetan kinerja. ', 'ad', 0, 1, 1, 0),
('VTI/BOT/1624356023808', 'WAN Optimization', 'Solusi kami membantu mempercepat pengiriman aplikasi ke cabang dan dari cloud, dan memungkinkan TI untuk memprioritaskan pengiriman aplikasi mission-critical melalui jaringan tercepat. Ini juga memberikan visibilitas yang lebih baik ke dalam aplikasi dan kinerja jaringan dan pengalaman pengguna akhir. ', 'wan', 0, 1, 1, 0),
('VTI/BOT/1624356076897', 'Network Traffic Visibility', 'Kami membantu organisasi TI mengukur dan memahami kinerja aplikasi, sehingga mereka dapat memperbaiki masalah dan menyempurnakan aplikasi untuk kinerja terbaik. Dengan menyediakan analisis tingkat paket yang terperinci, tampilan grafis, dan alur kerja intuitif, solusi kami memungkinkan administrator jaringan hingga manajer NOC hingga pengembang aplikasi--untuk memantau, menganalisis, dan memahami kinerja aplikasi lebih baik dari sebelumnya.', 'ntv', 0, 1, 1, 0),
('VTI/BOT/1624356116444', 'Link Load Balancing', 'Sebagian besar fungsi operasional di organisasi saat ini mengandalkan konektivitas internet tanpa gangguan, itu menjadi komponen penting bagi organisasi. Ini mengatasi tantangan dan persyaratan organisasi yang berkembang dari solusi konektivitas internet dan memastikan tingkat layanan konektivitas WAN yang dioptimalkan per aplikasi. Tidak hanya menangani bagian ketersediaan, ini menyediakan pemantauan kinerja aplikasi untuk mengukur tingkat layanan aplikasi secara real-time, per tautan WAN.', 'llb', 0, 1, 1, 0),
('VTI/BOT/1624356152318', 'Virtual Networking', 'Dalam model operasional saat ini, penyediaan jaringan lambat dan penempatan serta mobilitas beban kerja dibatasi oleh topologi fisik dan penyediaan manual. Ini mengurangi efisiensi dan membatasi kemampuan perusahaan untuk menyebarkan, memindahkan, menskalakan, dan melindungi aplikasi dan data dengan cepat untuk memenuhi tuntutan bisnis. Solusi ini memaparkan rangkaian lengkap elemen dan layanan jaringan logis yang disederhanakan termasuk sakelar logis, router, firewall, penyeimbang beban, VPN, QoS, pemantauan, dan keamanan. Layanan ini disediakan di jaringan virtual melalui platform manajemen cloud apa pun yang memanfaatkan NSX API dan dapat diatur dalam topologi apa pun dengan isolasi dan multi-tenancy. Jaringan virtual disebarkan tanpa gangguan melalui jaringan yang ada dan pada hypervisor apa pun.', 'vn', 0, 1, 1, 0),
('VTI/BOT/1624356198472', 'Wireless Network', 'Ketika datang ke WiFi, pengguna saat ini membutuhkan sistem LAN nirkabel (WLAN) yang lebih cerdas yang menyediakan jangkauan, kapasitas, dan keandalan yang jauh lebih baik. WLAN kami menggabungkan smart meshing, keamanan pengguna dinamis, perutean sinyal RF adaptif, dan manajemen terpusat - semuanya dalam platform yang aman, dapat diskalakan, dan mudah digunakan. Dengan 802.11ac gelombang pertama Industri Titik Akses Nirkabel pertama kami menghadirkan titik akses Wi-Fi cerdas dengan kinerja tertinggi.', 'wlan', 0, 1, 1, 2),
('VTI/BOT/1624356224594', 'Deep Packet Inspection', 'Deep Packet Inspection', 'dpi', 0, 1, 1, 0),
('VTI/BOT/1624356284867', 'Application Performance Management', 'Manajemen Kinerja Aplikasi (APM) adalah pemantauan dan pengelolaan kinerja dan ketersediaan aplikasi perangkat lunak. APM berusaha untuk mendeteksi dan mendiagnosis masalah kinerja aplikasi yang kompleks untuk mempertahankan tingkat layanan yang diharapkan. APM adalah \"penerjemahan metrik TI ke dalam makna bisnis.\n\nDua set metrik kinerja dipantau secara ketat. Kumpulan metrik kinerja pertama mendefinisikan kinerja yang dialami oleh pengguna akhir aplikasi.\n\nKumpulan metrik kinerja kedua mengukur sumber daya komputasi yang digunakan oleh aplikasi untuk beban, yang menunjukkan apakah ada kapasitas yang memadai untuk mendukung beban, serta kemungkinan lokasi kemacetan kinerja.', 'apm', 0, 1, 1, 0),
('VTI/BOT/1624356417945', 'Inventory and Asset Management', 'Dari komputer dan server hingga perangkat seluler, router, printer, dan lainnya, solusinya akan membuat Anda tetap melihat semua perangkat keras dan perangkat lunak yang diinstal di seluruh jaringan Anda. Karena Internet of Things (IoT) — dengan beragam perangkat terhubung yang terus berkembang dan beragam — meluas ke visibilitas perusahaan di seluruh lingkungan terhubung Anda.', 'am', 0, 1, 1, 0),
('VTI/BOT/1624356575023', 'Navigation Map', 'Luangkan waktu lebih sedikit untuk menemukan sebagian besar lokasi seperti rumah, bangunan atau alamat apa pun yang Anda cari, itu termasuk informasi tentang cara mencapai lokasi yang dituju dengan cara yang mudah.', 'nm', 0, 1, 1, 0),
('VTI/BOT/1624356615925', 'Email and Collaboration', 'Alat kombinasi yang baik yang dapat membantu orang dengan mudah berkomunikasi satu sama lain tidak peduli seberapa jauh jaraknya seperti email, obrolan, konferensi jarak jauh.', 'mac', 0, 1, 1, 0),
('VTI/BOT/1624356641581', 'Search Engine', 'Pertumbuhan Data dan Informasi terus meledak untuk sebagian besar organisasi. Alat pencarian perusahaan yang efektif akan membantu menavigasi di lautan data dan dapat memberi mereka informasi yang mereka butuhkan untuk mempercepat keputusan dan melakukan pekerjaan mereka secara produktif.', 'sen', 0, 1, 1, 0),
('VTI/BOT/1624356673017', 'Web Content Management', 'Kembangkan bisnis Anda secara online dengan mudah - libatkan, konversi, dan pertahankan pelanggan dengan alat perangkat lunak yang mudah digunakan yang dapat mengelola konten Anda di web lebih cepat dari sebelumnya hanya dengan drag-and-drop.', 'wcm', 0, 1, 1, 0),
('VTI/BOT/1624356701799', 'End-Point System Management', 'Lupakan proses manual untuk mengelola setiap perangkat individu di kantor Anda. Berikut adalah perangkat lunak revolusioner yang dapat membantu Anda mengelola semua kerumitan termasuk PC Windows, Mac, Chromebook, tablet, Linux, dan Server Windows, printer, penyimpanan, dan internet of things (IoT).', 'esm', 0, 1, 1, 1),
('VTI/BOT/1624356750829', 'Data Connectivity and Integration', 'Memperluas visibilitas Anda dengan menghubungkan sumber data apa pun ke aplikasi apa pun. Mengumpulkan lebih banyak data dan informasi akan membantu Anda memutuskan lebih akurat.', 'dci', 0, 1, 1, 0),
('VTI/BOT/1624356778961', 'Database and Application Development', 'Lingkungan pengembangan aplikasi fundamental utama sebagai dasar dan menjaga bisnis Anda tetap berjalan.', 'dad', 0, 1, 1, 0),
('VTI/BOT/1624356811011', 'IT Service Help Desk', 'Ucapkan selamat tinggal pada sistem help desk yang tidak efisien di masa lalu. Dengan meja bantuan layanan pelanggan yang mudah digunakan untuk menangani permintaan tiket masuk, manajemen kasus, dan manajemen pengetahuan. Jadi TI lebih efisien, dan pengguna menjadi lebih produktif.', 'its', 0, 1, 1, 0),
('VTI/BOT/1624356849797', 'Database Management and Monitoring', 'Pastikan aplikasi penting selalu online & kemampuan untuk melakukan penyetelan otomatis dan menyelesaikan masalah lebih cepat dari sebelumnya', 'dmm', 0, 1, 1, 1),
('VTI/BOT/1624357212001', 'Security', 'Kami memiliki beberapa teknologi pada solusi Security yang kami tawarkan.\n\nTeknologi yang kami tawarkan berupa:\n<b>OSDA</b> - OS, Database & Application Security\n<b>DIS</b> - Data & Information Security\n<b>NGS</b> - Network & Gateway Security\n<b>UEM</b> - User, EndPoint & Mobile Security\n<b>SMC</b> - Security Management, Monitoring & Control\n<b>SFA</b> - Security Forensic & Analysis\n<b>APT</b> - SandBoxing & Advance Persistent Threat\n<b>VS</b> - Virtualization Security', 'sec', 0, 0, 1, 6),
('VTI/BOT/1624357634769', 'OS, Database and Application Security', 'Memberikan solusi keamanan yang komprehensif, mulai dari Virtualization, Operating System, Database dan Application Level. Memastikan Kerahasiaan, Integritas dan Ketersediaan di semua tingkat.\n\n-Key Management & Encryption\n-Virtualization Security\n-Web Application Firewall\n-Source Code & Application Review\n-Backup and Recovery Solution', 'osda', 0, 1, 1, 1),
('VTI/BOT/1624357683135', 'Data and Information Security', 'Mengelola Keamanan untuk data dan informasi dari akses dan perubahan yang tidak sah dan tidak sengaja.\n\n-File & Disk Encryption\n-Data Loss Prevention', 'dis', 0, 1, 1, 1),
('VTI/BOT/1624357750138', 'Network and Gateway Security', 'Melindungi jaringan dari akses dan serangan yang tidak sah, menggunakan pendekatan holistik dari mitra solusi kami. Solusinya adalah:\n\n-IDS / IPS & DOS Protection\n-Web Access Security & Control\n-Network Monitoring\n-Vulnerability Assessment\n-Email Security\n-Firewall\n-Wifi Security\n-Secure Remote Access\n-Network Forensic and Analysis', 'ngs', 0, 1, 1, 0),
('VTI/BOT/1624357812824', 'User, EndPoint and Mobile Security', 'Memberikan perlindungan terbaik bagi pengguna dan perangkatnya: PC/Laptop dan Gadget. Memastikan keamanan dari serangan canggih saat ini dan juga penggunaan dan akses tidak sah ke aset Organisasi oleh pengguna. Solusinya adalah:\n\n-End Point and Mobile Compliance\n-End Point Protection\n-Asset Management\n-Security Configuration & Patch Management', 'uem', 0, 1, 1, 0),
('VTI/BOT/1624357862470', 'Security Management, Monitoring and Control', 'Mengelola proses keamanan dengan solusi yang dirancang untuk memberikan visibilitas dan kontrol yang lebih besar bagi lingkungan TI paling canggih untuk memenuhi tujuan Keamanan. Solusinya adalah:\n\n-Security Control and Monitoring Center\n-Security Information and Event Management\n-Governance, Risk and Compliance', 'smc', 0, 1, 1, 0),
('VTI/BOT/1624357916922', 'Security Forensic and Analysis', 'RSA NetWitness Logs and Packets menangkap dan memperkaya data paket jaringan lengkap bersama tipe data lainnya, seperti log, NetFlow, dan titik akhir. RSA NetWitness Logs and Packets menangkap paket jaringan penuh, yang berarti serangan dapat direkonstruksi untuk sepenuhnya memahami cakupan penuh serangan dan pada gilirannya menerapkan rencana remediasi yang efektif untuk menghentikan penyerang mencapai tujuannya.\n\nLog dan Paket RSA NetWitness memberikan visibilitas yang luas dengan analitik tingkat lanjut - termasuk analitik perilaku waktu nyata - untuk mendeteksi dan menyelidiki serangan canggih. Visibilitas disediakan di:\n\n-Data Sources – Full Packet Capture, NetFlow Logs and Endpoint\n-Threat Vectors – Endpoint, Network and Cloud ', 'sfa', 0, 1, 1, 0),
('VTI/BOT/1624357969746', 'Sandboxing and Advanced Persistent Threat', 'Deteksi ancaman \"Zero-day\" dan serangan yang tidak diketahui, berikan analisis dan peringkat risiko.\n\nDan berikan detail integrasi untuk perbaikan.\n\n-Stopping advanced threats\n-Zero day attack protection\n-Custom sandboxing\n-Virtual Patching', 'apt', 0, 1, 1, 0),
('VTI/BOT/1624358013901', 'Virtualization Security', 'Virtualisasi telah mengubah pusat data dan sekarang, organisasi memindahkan sebagian atau semua beban kerja mereka ke cloud pribadi dan publik. Jika Anda tertarik untuk memanfaatkan manfaat virtualisasi dan komputasi awan, Anda perlu memastikan bahwa Anda memiliki keamanan yang dibangun untuk melindungi semua server Anda, baik fisik, virtual, atau awan.\n\n-VMware security virtualization\n-Virtual Patching\n-Detects and removes malware from virtual servers', 'vs', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `SENDER_ID` int(20) NOT NULL,
  `USERNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRSTNAME` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`SENDER_ID`, `USERNAME`, `FIRSTNAME`, `PICTURE`) VALUES
(1863023700, 'iyan_tp', 'Septian', 'assets/user-profile/1863023700.jpg'),
(1884843695, 'xyperia', 'XYPERIA', 'assets/user-profile/1884843695.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_log`
-- (See below for the actual view)
--
CREATE TABLE `v_log` (
`SENDER_ID` int(20)
,`SENDER_NICK` varchar(50)
,`SENDER_USERNAME` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_log`
--
DROP TABLE IF EXISTS `v_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_log`  AS SELECT DISTINCT `m_log`.`SENDER_ID` AS `SENDER_ID`, `m_log`.`SENDER_NICK` AS `SENDER_NICK`, `m_log`.`SENDER_USERNAME` AS `SENDER_USERNAME` FROM `m_log` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m_config`
--
ALTER TABLE `m_config`
  ADD PRIMARY KEY (`CONFIG_ID`);

--
-- Indexes for table `m_log`
--
ALTER TABLE `m_log`
  ADD PRIMARY KEY (`LOG_ID`);

--
-- Indexes for table `m_menu`
--
ALTER TABLE `m_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`SENDER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_log`
--
ALTER TABLE `m_log`
  MODIFY `LOG_ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
