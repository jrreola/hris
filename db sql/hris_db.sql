-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 01:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hris_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `barangay_id` int(11) NOT NULL,
  `citymunicipality_id` int(11) NOT NULL,
  `barangay_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`barangay_id`, `citymunicipality_id`, `barangay_name`) VALUES
(1, 3, 'Sagpon'),
(2, 3, 'Binitayan'),
(3, 3, 'ILAWOD'),
(4, 6, 'TINAGO'),
(5, 101, 'DANAO'),
(6, 8, 'PAULBA'),
(7, 85, 'CALPI'),
(8, 35, 'IPIL'),
(9, 70, 'SIPI'),
(10, 19, 'BACTAS'),
(11, 89, 'BAPOR'),
(12, 89, 'BAGUMBAYAN'),
(13, 14, 'APAD'),
(14, 114, 'ABUYOG'),
(15, 6, 'RAWIS'),
(16, 89, 'IBINGAY'),
(17, 8, 'ALLANG'),
(20, 14, 'CENTRO');

-- --------------------------------------------------------

--
-- Table structure for table `basiced_degree_course`
--

CREATE TABLE `basiced_degree_course` (
  `bdc_id` int(11) NOT NULL,
  `bdc_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basiced_degree_course`
--

INSERT INTO `basiced_degree_course` (`bdc_id`, `bdc_name`) VALUES
(1, 'N/A'),
(2, 'Elementary'),
(3, 'High School'),
(4, 'BS Industrial Engineering'),
(5, 'BS Computer Science'),
(6, 'SECONDARY'),
(7, 'BS INDUSTRIAL TECHNOLOGY'),
(8, 'PRIMARY'),
(9, 'BS ACCOUNTANCY'),
(10, 'BS INFORMATION TECHNOLOGY'),
(11, 'ELEMENATRY'),
(12, 'BS IN INFORMATION TECHNOLOGY'),
(13, 'BACHELOR OF ARTS IN ECONOMICS'),
(14, 'MASTERS OF PUBLIC ADMINISTRATION'),
(15, 'BACHELOR IN APPLIED STATISTICS'),
(16, 'BS CIVIL ENGINEERING'),
(17, 'BS IN AGRICULTURE'),
(18, 'MASTER IN RURAL DEVELOPMENT');

-- --------------------------------------------------------

--
-- Table structure for table `bloodtype`
--

CREATE TABLE `bloodtype` (
  `bloodtype_id` int(11) NOT NULL,
  `bloodtype_name` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloodtype`
--

INSERT INTO `bloodtype` (`bloodtype_id`, `bloodtype_name`) VALUES
(1, 'N/A'),
(2, 'A+'),
(3, 'o'),
(4, 'A+'),
(5, 'A-'),
(6, 'B+'),
(7, 'B-'),
(8, 'AB+'),
(9, 'AB-'),
(10, 'O+'),
(11, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `child_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `child_fullname` varchar(128) NOT NULL,
  `child_bday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`child_id`, `employee_id`, `child_fullname`, `child_bday`) VALUES
(1, 17, 'ANJANETTE JUAREZ', '2004-10-10'),
(2, 19, 'KENDALL CRUZ', '1999-10-03'),
(3, 19, 'JOSH CRUZ', '2001-01-07'),
(4, 21, 'KEN CRUZ', '2002-02-05'),
(5, 25, 'JHANNA MAE GOMEZ', '2025-09-15'),
(6, 32, 'HARLET VASQUEZ', '2003-02-25'),
(7, 32, 'HANZ NIKKO VASQUEZ', '2007-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `city_municipality`
--

CREATE TABLE `city_municipality` (
  `citymunicipality_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `citymunicipality_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_municipality`
--

INSERT INTO `city_municipality` (`citymunicipality_id`, `province_id`, `citymunicipality_name`) VALUES
(1, 1, 'Bacacay'),
(2, 1, 'Camalig'),
(3, 1, 'Daraga'),
(4, 1, 'Guinobatan'),
(5, 1, 'Jovellar'),
(6, 1, 'Legazpi'),
(7, 1, 'Libon'),
(8, 1, 'Ligao'),
(9, 1, 'Malilipot'),
(10, 1, 'Malinao'),
(11, 1, 'Manito'),
(12, 1, 'Oas'),
(13, 1, 'Pio Duran'),
(14, 1, 'Polangui'),
(15, 1, 'Rapu-Rapu'),
(16, 1, 'Santo Domingo'),
(17, 1, 'Tabaco'),
(18, 1, 'Tiwi'),
(19, 2, 'Basud'),
(20, 2, 'Capalonga'),
(21, 2, 'Daet'),
(22, 2, 'Jose Panganiban'),
(23, 2, 'Labo'),
(24, 2, 'Mercedes'),
(25, 2, 'Paracale'),
(26, 2, 'San Lorenzo Ruiz'),
(27, 2, 'San Vicente'),
(28, 2, 'Santa Elena'),
(29, 2, 'Talisay'),
(30, 2, 'Vinzons'),
(31, 3, 'Baao'),
(32, 3, 'Balatan'),
(33, 3, 'Bato'),
(34, 3, 'Bombon'),
(35, 3, 'Buhi'),
(36, 3, 'Bula'),
(37, 3, 'Cabusao'),
(38, 3, 'Calabanga'),
(39, 3, 'Camaligan'),
(40, 3, 'Canaman'),
(41, 3, 'Caramoan'),
(42, 3, 'Del Gallego'),
(43, 3, 'Gainza'),
(44, 3, 'Garchitorena'),
(45, 3, 'Goa'),
(46, 3, 'Iriga'),
(47, 3, 'Lagonoy'),
(48, 3, 'Lagonoy'),
(49, 3, 'Lupi'),
(50, 3, 'Magarao'),
(51, 3, 'Milaor'),
(52, 3, 'Minalabac'),
(53, 3, 'Nabua'),
(54, 3, 'Naga'),
(55, 3, 'Ocampo'),
(56, 3, 'Pamplona'),
(57, 3, 'Pasacao'),
(58, 3, 'Pili'),
(59, 3, 'Presentacion'),
(60, 3, 'Ragay'),
(61, 3, 'Sagñay'),
(62, 3, 'San Fernando'),
(63, 3, 'San Jose'),
(64, 3, 'Sipocot'),
(65, 3, 'Siruma'),
(66, 3, 'Tigaon'),
(67, 3, 'Tinambac'),
(68, 4, 'Bagamanoc'),
(69, 4, 'Baras'),
(70, 4, 'Bato'),
(71, 4, 'Caramoran'),
(72, 4, 'Gigmoto'),
(73, 4, 'Pandan'),
(74, 4, 'Panganiban'),
(75, 4, 'San Andres'),
(76, 4, 'San Miguel'),
(77, 4, 'Viga'),
(78, 4, 'Virac'),
(79, 5, 'Aroroy'),
(80, 5, 'Baleno'),
(81, 5, 'Balud'),
(82, 5, 'Batuan'),
(83, 5, 'Cataingan'),
(84, 5, 'Cawayan'),
(85, 5, 'Claveria'),
(86, 5, 'Dimasalang'),
(87, 5, 'Esperanza'),
(88, 5, 'Mandaon'),
(89, 5, 'Masbate City'),
(90, 5, 'Milagros'),
(91, 5, 'Mobo'),
(92, 5, 'Monreal'),
(93, 5, 'Palanas'),
(94, 5, 'Pio V. Corpuz'),
(95, 5, 'Placer'),
(96, 5, 'San Fernando'),
(97, 5, 'San Jacinto'),
(98, 5, 'San Pascual'),
(99, 5, 'Uson'),
(100, 6, 'Barcelona'),
(101, 6, 'Bulan'),
(102, 6, 'Bulusan'),
(103, 6, 'Casiguran'),
(104, 6, 'Castilla'),
(105, 6, 'Donsol'),
(106, 6, 'Gubat'),
(107, 6, 'Irosin'),
(108, 6, 'Juban'),
(109, 6, 'Magallanes'),
(110, 6, 'Matnog'),
(111, 6, 'Pilar'),
(112, 6, 'Prieto Diaz'),
(113, 6, 'Santa Magdalena'),
(114, 6, 'Sorsogon City');

-- --------------------------------------------------------

--
-- Table structure for table `civil_services`
--

CREATE TABLE `civil_services` (
  `cs_id` int(11) NOT NULL,
  `cs_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `civil_services`
--

INSERT INTO `civil_services` (`cs_id`, `cs_name`) VALUES
(1, 'N/A'),
(2, 'CSE Professional'),
(3, 'CARRER SERVICE PROFESSIONAL'),
(4, 'CARREER SERVICE PROFESSIONAL'),
(5, 'CARRER SERVICE PROFFESIONAL'),
(6, 'CSC PROFESSIONAL'),
(7, 'CIVIL SERVICE PROFESSIONAL'),
(8, 'CIVIL SERVICE EXAMINATION');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(1, 'N/A'),
(118598, 'SPAIN');

-- --------------------------------------------------------

--
-- Table structure for table `cs_eligibility`
--

CREATE TABLE `cs_eligibility` (
  `cseligibility_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `cseligibility_rating` float(10,0) NOT NULL,
  `cseligibility_examdate` date NOT NULL,
  `cseligibility_examplace` varchar(128) NOT NULL,
  `cseligibility_license` varchar(32) NOT NULL,
  `cseligibility_datevalidity` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cs_eligibility`
--

INSERT INTO `cs_eligibility` (`cseligibility_id`, `employee_id`, `cs_id`, `cseligibility_rating`, `cseligibility_examdate`, `cseligibility_examplace`, `cseligibility_license`, `cseligibility_datevalidity`) VALUES
(1, 17, 4, 90, '2006-02-20', 'LEGAZPI', 'N/A', '0000-00-00'),
(2, 19, 3, 85, '1993-10-08', 'LEGAZPI CITY', 'N/A', '0000-00-00'),
(3, 20, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(4, 21, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(5, 25, 3, 80, '2010-09-10', 'CAMARINES SUR', 'N/A', '0000-00-00'),
(6, 27, 3, 88, '2022-10-05', 'LEGAZPI CITY', 'N/A', '0000-00-00'),
(7, 28, 3, 86, '2021-04-10', 'MASBATE', 'N/A', '0000-00-00'),
(8, 29, 6, 89, '2018-05-08', 'MASBATE CITY', 'N/A', '0000-00-00'),
(9, 30, 7, 90, '2015-02-05', 'LEGAZPI CITY', 'N/A', '0000-00-00'),
(10, 31, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(11, 32, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(12, 33, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(13, 37, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(14, 38, 8, 90, '2022-02-05', 'LEGAZPI CITY', 'N/A', '0000-00-00'),
(15, 20, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(16, 39, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(17, 39, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00'),
(18, 39, 1, 0, '0000-00-00', 'N/A', 'N/A', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `dept_agency_office_co`
--

CREATE TABLE `dept_agency_office_co` (
  `daoc_id` int(11) NOT NULL,
  `daoc_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_agency_office_co`
--

INSERT INTO `dept_agency_office_co` (`daoc_id`, `daoc_name`) VALUES
(1, 'N/A'),
(2, 'Philippine Statistics Authority'),
(3, 'DENR'),
(4, 'PSA'),
(5, 'NATIONAL STATISTICS OFFICE'),
(6, 'SUTHERLAND LEGAZPI'),
(7, 'PHILIPPINE STATISTICS AUTHORITY-ALBAY');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `educ_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `educ_acadlvl` char(1) NOT NULL COMMENT 'E = Elementary /\r\nS = Secondary /\r\nV = Vocational /\r\nC = College / \r\nG = Graduate',
  `school_id` int(11) NOT NULL,
  `bdc_id` int(11) NOT NULL,
  `educ_period_from` varchar(4) NOT NULL,
  `educ_period_to` varchar(4) NOT NULL,
  `educ_highest` varchar(64) NOT NULL,
  `educ_graduated` varchar(4) NOT NULL,
  `educ_scholarship_acad_honors` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`educ_id`, `employee_id`, `educ_acadlvl`, `school_id`, `bdc_id`, `educ_period_from`, `educ_period_to`, `educ_highest`, `educ_graduated`, `educ_scholarship_acad_honors`) VALUES
(1, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(2, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(3, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(4, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(5, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(6, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(7, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(8, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(9, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(10, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(11, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(12, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(13, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(14, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(15, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(16, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(17, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(18, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(19, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(20, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(21, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(22, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(23, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(24, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(25, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(26, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(27, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(28, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(29, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(30, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(31, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(32, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(33, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(34, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(35, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(36, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(37, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(38, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(39, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(40, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(41, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(42, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(43, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(44, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(45, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(46, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(47, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(48, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(49, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(50, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(51, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(52, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(53, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(54, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(55, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(56, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(57, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(58, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(59, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(60, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(61, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(62, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(63, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(64, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(65, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(66, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(67, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(68, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(69, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(70, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(71, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(72, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(73, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(74, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(75, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(76, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(77, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(78, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(79, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(80, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(81, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(82, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(83, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(84, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(85, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(86, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(87, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(88, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(89, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(90, 11, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(91, 15, 'E', 5, 2, '1997', '2003', 'Graduated', '2003', 'N/A'),
(92, 15, 'S', 3, 3, '2003', '2007', 'Graduated', '2007', 'N/A'),
(93, 15, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(94, 15, 'C', 6, 5, '2007', '2011', 'Graduated', '2011', 'N/A'),
(95, 15, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(96, 16, 'E', 7, 2, '1996', '2002', 'GRADUATED', '2002', 'N/A'),
(97, 16, 'S', 8, 6, '2002', '2007', 'GRADUATED', '2007', 'N/A'),
(98, 16, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(99, 16, 'C', 6, 7, '2006', '2010', 'GRADUATED', '2010', 'N/A'),
(100, 16, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(101, 17, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(102, 17, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(103, 17, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(104, 17, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(105, 17, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(106, 19, 'E', 12, 2, '1977', '1983', 'GRADUATED', '1983', 'N/A'),
(107, 19, 'S', 13, 6, '1983', '1987', 'GRADUATED', '1987', 'WITH HONORS'),
(108, 19, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(109, 19, 'C', 6, 10, '1987', '1991', 'GRADUATED', '1991', 'N/A'),
(110, 19, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(111, 20, 'E', 17, 2, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(112, 20, 'S', 18, 6, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(113, 20, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(114, 20, 'C', 6, 5, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(115, 20, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(116, 21, 'E', 19, 2, '1999', '1986', 'GRADUATED', '1989', 'N/A'),
(117, 21, 'S', 13, 6, '1986', '1990', 'GRADUATED', '1991', 'N/A'),
(118, 21, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(119, 21, 'C', 6, 5, '1990', '1994', 'GRADUATED', '1994', 'N/A'),
(120, 21, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(121, 25, 'E', 20, 2, '1994', '2000', 'GRADUATED', '2000', 'N/A'),
(122, 25, 'S', 21, 6, '2000', '2004', 'GRADUATED', '2004', 'N/A'),
(123, 25, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(124, 25, 'C', 22, 10, '2004', '2008', 'GRADUATED', '2008', 'N/A'),
(125, 25, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(126, 27, 'E', 23, 11, '2005', '2011', 'GRADUATED', '2011', 'N/A'),
(127, 27, 'S', 24, 6, '2011', '2015', 'GRADUATED', '2015', 'WITH HONORS'),
(128, 27, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(129, 27, 'C', 25, 5, '2015', '2019', 'GRADUTED', '2019', 'CUM LAUDE'),
(130, 27, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(131, 28, 'E', 26, 2, '2002', '2008', 'GRADUATED', '2008', 'WITH HONORS'),
(132, 28, 'S', 27, 6, '2008', '2012', 'GRADUATED', '2012', 'WITH HONORS'),
(133, 28, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(134, 28, 'C', 28, 10, '2012', '2016', 'GRADUATED', '2012', 'N/A'),
(135, 28, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(136, 29, 'E', 30, 2, '2002', '2008', 'GRADUATED', '2008', 'N/A'),
(137, 29, 'S', 31, 6, '2008', '2012', 'GRADUATED', '2012', 'N/A'),
(138, 29, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(139, 29, 'C', 32, 12, '2012', '2016', 'GRADUATED', '2016', 'N/A'),
(140, 29, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(141, 30, 'E', 33, 2, '2001', '2007', 'N/A', '2007', '9TH HONORABLE MENTION'),
(142, 30, 'S', 34, 6, '2007', '2011', 'N/A', '2011', '1ST HONORABLE MENTION'),
(143, 30, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(144, 30, 'C', 35, 13, '2011', '2015', 'N/A', '2015', 'CUM LAUDE'),
(145, 30, 'G', 36, 14, '2017', '2018', '12', '2007', 'N/A'),
(146, 31, 'E', 37, 2, '1995', '2001', 'N/A', '2001', 'N/A'),
(147, 31, 'S', 13, 3, '2001', '2005', 'N/A', '2005', 'N/A'),
(148, 31, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(149, 31, 'C', 32, 15, '2005', '2009', 'N/A', '2009', 'N/A'),
(150, 31, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(151, 32, 'E', 38, 2, '1981', '1987', 'GRADUATED', '1987', 'N/A'),
(152, 32, 'S', 39, 6, '1987', '1991', 'GRADUATED', '1991', 'N/A'),
(153, 32, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(154, 32, 'C', 40, 16, '1991', '1997', 'GRADUATED', '1997', 'N/A'),
(155, 32, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(156, 33, 'E', 41, 2, '2005', '2011', 'N/A', 'N/A', 'N/A'),
(157, 33, 'S', 34, 6, '2011', '2015', 'N/A', 'N/A', 'N/A'),
(158, 33, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(159, 33, 'C', 42, 17, '2015', '2019', 'N/A', 'N/A', 'N/A'),
(160, 33, 'G', 6, 18, '2021', 'N/A', '9 UNITS', 'N/A', 'N/A'),
(161, 37, 'E', 17, 2, '2009', '2006', 'GRADUATED', '2006', 'N/A'),
(162, 37, 'S', 18, 6, '2015', '2019', 'GRADUATED', '2019', 'N/A'),
(163, 37, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(164, 37, 'C', 6, 5, '2019', '2023', 'GRADUATED', '2023', 'N/A'),
(165, 37, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(166, 38, 'E', 43, 2, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'WITH HONORS'),
(167, 38, 'S', 44, 6, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'WITH HONORS'),
(168, 38, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(169, 38, 'C', 6, 5, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'CUM LAUDE'),
(170, 38, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(171, 20, 'E', 17, 2, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(172, 20, 'S', 18, 6, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(173, 20, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(174, 20, 'C', 6, 5, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(175, 20, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(176, 39, 'E', 17, 2, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(177, 39, 'S', 18, 6, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(178, 39, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(179, 39, 'C', 6, 10, 'N/A', '2021', 'GRADUATED', 'N/A', 'N/A'),
(180, 39, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(181, 39, 'E', 17, 2, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(182, 39, 'S', 18, 6, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(183, 39, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(184, 39, 'C', 6, 10, 'N/A', '2021', 'GRADUATED', 'N/A', 'N/A'),
(185, 39, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(186, 39, 'E', 17, 2, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(187, 39, 'S', 18, 6, 'N/A', 'N/A', 'GRADUATED', 'N/A', 'N/A'),
(188, 39, 'V', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(189, 39, 'C', 6, 10, 'N/A', '2021', 'GRADUATED', 'N/A', 'N/A'),
(190, 39, 'G', 1, 1, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `employee_lastname` varchar(64) NOT NULL,
  `employee_firstname` varchar(64) NOT NULL,
  `employee_middlename` varchar(64) NOT NULL,
  `employee_nameext` varchar(4) NOT NULL,
  `employee_imgdir` varchar(256) DEFAULT NULL,
  `employee_office` varchar(16) NOT NULL,
  `employee_status` char(1) NOT NULL DEFAULT 'A' COMMENT 'A = Active / I = Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `position_id`, `employee_lastname`, `employee_firstname`, `employee_middlename`, `employee_nameext`, `employee_imgdir`, `employee_office`, `employee_status`) VALUES
(11, 22, 'VARGAS', 'ANA', 'SOTTO', 'N/A', 'id_pictures/VARGAS, ANA SOTTO.jpg', 'SOCD', 'A'),
(15, 23, 'Doe', 'Allen', 'Diaz', 'N/A', 'id_pictures/Doe, Allen Diaz.jpg', 'SOCD', 'A'),
(16, 24, 'VIDAL', 'MARTA', 'sOLER', 'N/A', 'id_pictures/VIDAL, MARTA sOLER.jpg', 'SOCD', 'A'),
(17, 25, 'JUAREZ', 'JAVIER', 'CRESPO', 'N/A', 'id_pictures/JUAREZ, JAVIER CRESPO.jpg', 'ALBAY', 'I'),
(19, 10, 'LUSTRE', 'MIGUEL', 'N/A', 'N/A', 'id_pictures/, .jpg', 'ALBAY', 'I'),
(20, 43, 'REOLA', 'JEZZEL', 'RELORCASA', 'N/A', 'id_pictures/REOLA, JEZZEL RELORCASA.jpg', 'ALBAY', 'A'),
(21, 28, 'CRUZ', 'MAE', 'SARIO', 'N/A', 'id_pictures/CRUZ, MAE SARIO.jpg', 'CAMARINES NORTE', 'A'),
(22, NULL, 'HERNANDEZ', 'CRISTINA', 'CARMONA', 'N/A', NULL, 'ALBAY', 'I'),
(23, NULL, 'HERNANDEZ', 'CRISTINA', 'CARMONA', 'N/A', NULL, 'ALBAY', 'I'),
(24, NULL, 'HERNANDEZ', 'CRISTINA', 'CARMONA', 'N/A', NULL, 'ALBAY', 'I'),
(25, 32, 'GOMEZ', 'CESAR', 'GIL', 'N/A', 'id_pictures/GOMEZ, CESAR GIL.jpg', 'CAMARINES NORTE', 'A'),
(26, NULL, 'TORRES', 'ANGELA', 'ARIA', 'N/A', NULL, 'CAMARINES SUR', 'I'),
(27, 34, 'LORENZO', 'ELENA', 'PILAR', 'N/A', 'id_pictures/LORENZO, ELENA PILAR.jpg', 'CAMARINES SUR', 'A'),
(28, 32, 'HERNANDEZ', 'CARMONA', 'ORTIZ', 'N/A', 'id_pictures/HERNANDEZ, CARMONA ORTIZ.jpg', 'MASBATE', 'A'),
(29, 17, 'PAJENTE', 'ANJUNE', 'GIL', 'N/A', 'id_pictures/PAJENTE, ANJUNE GIL.webp', 'CATANDUANES', 'A'),
(30, 37, 'MANLAPAZ', 'CHARLENE', 'RIO', 'N/A', 'id_pictures/MANLAPAZ, CHARLENE RIO.jpg', 'ALBAY', 'A'),
(31, 39, 'CHAVEZ', 'JHONNEL', 'N/A', 'N/A', 'id_pictures/CHAVEZ, JHONNEL.jpg', 'ALBAY', 'I'),
(32, 15, 'VASQUEZ', 'MARY ROSE', 'NIPAS', 'N/A', 'id_pictures/VASQUEZ, MARY ROSE NIPAS.jpg', 'ALBAY', 'A'),
(33, 41, 'INOPIA', 'MARY JANE', 'ATIBAGOS', 'N/A', 'id_pictures/INOPIA, MARY JANE ATIBAGOS.webp', 'ALBAY', 'A'),
(34, NULL, 'ESPINOSA', 'ANGELITA ROSE', 'SODSOD', 'N/A', NULL, 'ALBAY', 'I'),
(35, NULL, 'ESPINOSA', 'ANGELITA ROSE', 'SODSOD', 'N/A', NULL, 'ALBAY', 'I'),
(36, NULL, 'SERDINA', 'JESSA', 'RIO', 'N/A', NULL, 'ALBAY', 'I'),
(37, 42, 'REYES', 'JOHN PAUL', 'ROMERO', 'N/A', 'id_pictures/REYES, JOHN PAUL ROMERO.jpg', 'ALBAY', 'A'),
(38, 43, 'DURAN', 'MICHAEL JOHN', 'PEREZ', 'N/A', 'id_pictures/DURAN, MICHAEL JOHN PEREZ.jpg', 'ALBAY', 'A'),
(39, 1, 'ORDIZ', 'CAMILLA', 'LOPEZ', 'N/A', 'id_pictures/ORDIZ, CAMILLA LOPEZ.jpg', 'ALBAY', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `employee_addresses`
--

CREATE TABLE `employee_addresses` (
  `emp_add_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `zipcode_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `citymunicipality_id` int(11) NOT NULL,
  `barangay_id` int(11) NOT NULL,
  `subdivisionvillage_id` int(11) NOT NULL,
  `street_id` int(11) NOT NULL,
  `houseblocklot_id` int(11) NOT NULL,
  `emp_add_type` char(1) NOT NULL COMMENT 'R = Residential /\r\nP = Permanent /\r\nB = Both'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_addresses`
--

INSERT INTO `employee_addresses` (`emp_add_id`, `employee_id`, `zipcode_id`, `province_id`, `citymunicipality_id`, `barangay_id`, `subdivisionvillage_id`, `street_id`, `houseblocklot_id`, `emp_add_type`) VALUES
(1, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(2, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(3, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(4, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(5, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(6, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(7, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(8, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(9, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(10, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(11, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(12, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(13, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(14, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(15, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(16, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(17, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(18, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(19, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(20, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(21, 11, 1, 1, 3, 1, 1, 1, 2, 'B'),
(22, 15, 1, 1, 3, 2, 1, 1, 3, 'R'),
(23, 15, 1, 1, 3, 2, 1, 1, 3, 'P'),
(24, 16, 1, 1, 3, 3, 1, 1, 4, 'B'),
(25, 17, 2, 1, 6, 4, 1, 1, 1, 'B'),
(26, 19, 3, 6, 101, 5, 1, 1, 5, 'B'),
(27, 20, 4, 1, 8, 6, 1, 1, 1, 'B'),
(28, 21, 3, 6, 101, 5, 1, 1, 6, 'B'),
(29, 25, 5, 3, 35, 8, 1, 1, 24699, 'B'),
(30, 26, 6, 4, 70, 9, 1, 1, 3, 'R'),
(31, 27, 7, 2, 19, 10, 1, 1, 1, 'B'),
(32, 28, 8, 5, 85, 7, 1, 1, 1, 'B'),
(33, 29, 9, 5, 89, 11, 1, 1, 37823, 'B'),
(34, 30, 9, 5, 89, 12, 1, 1, 37824, 'B'),
(35, 31, 10, 1, 14, 13, 1, 1, 37825, 'R'),
(36, 31, 11, 6, 114, 14, 1, 1, 1, 'P'),
(37, 32, 2, 1, 6, 15, 1, 1, 5, 'B'),
(38, 33, 9, 5, 89, 16, 1, 1, 1, 'B'),
(39, 37, 4, 1, 8, 17, 1, 1, 24699, 'B'),
(40, 38, 10, 1, 14, 20, 1, 1, 5, 'B'),
(41, 39, 4, 1, 8, 6, 1, 1, 1, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `emp_cont_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `emp_cont_tel` varchar(16) NOT NULL,
  `emp_cont_mobile` varchar(11) NOT NULL,
  `emp_cont_emailadd` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`emp_cont_id`, `employee_id`, `emp_cont_tel`, `emp_cont_mobile`, `emp_cont_emailadd`) VALUES
(1, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(2, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(3, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(4, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(5, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(6, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(7, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(8, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(9, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(10, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(11, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(12, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(13, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(14, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(15, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(16, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(17, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(18, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(19, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(20, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(21, 11, 'N/A', '09746238718', 'anavargas@gmail.com'),
(22, 15, 'N/A', '09765283471', 'doeallan@gmail.com'),
(23, 16, 'N/A', '09073123680', 'martavidal@gmail.com'),
(24, 17, 'N/A', '09765823934', 'javier@gmail.com'),
(25, 19, '9073123680', '09073123680', 'maecruz@gmail.com'),
(26, 20, 'N/A', '09457846987', 'n/a'),
(27, 21, 'N/A', '09457846987', 'maecruz@gmail.com'),
(28, 25, 'N/A', '09782365441', 'cesargomez@gmail.com'),
(29, 27, '09212275329', '09212275329', 'elenalorezo@gmail.com'),
(30, 28, '09125639741', '09125639741', 'carmonahernandez@gmail.com'),
(31, 29, 'N/A', '09456872654', 'anjune@gmail.com'),
(32, 30, 'N/A', '09785643258', 'charlene@gmail.com'),
(33, 31, 'N/A', '09456823798', 'jhonnel@gmail.com'),
(34, 32, 'N/A', '0978654231', 'maryrose@gmail.com'),
(35, 33, 'N/A', '09464646513', 'maryjane@gmail.com'),
(36, 37, 'N/A', '09451265423', 'john@gmail.com'),
(37, 38, 'N/A', '09785623456', 'michael@gmail.com'),
(38, 39, 'N/A', '09832937484', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `emp_dets_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `emp_dets_bday` date NOT NULL,
  `emp_dets_birthplace` varchar(128) NOT NULL,
  `emp_dets_sex` char(1) NOT NULL COMMENT 'M = Male /\r\nF = Female',
  `emp_dets_civilstatus` char(1) NOT NULL COMMENT 'S = Single /\r\nM = Married /\r\nC = Common law /\r\nW = Widowed /\r\nH = Separated',
  `emp_dets_height` float NOT NULL,
  `emp_dets_weight` float NOT NULL,
  `bloodtype_id` int(11) NOT NULL,
  `emp_dets_citizenship` char(1) NOT NULL COMMENT 'F = Filipino /\r\nB = dual citizenship by Birth /\r\nN = dual citizenship by Naturalization',
  `citizenship_country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`emp_dets_id`, `employee_id`, `emp_dets_bday`, `emp_dets_birthplace`, `emp_dets_sex`, `emp_dets_civilstatus`, `emp_dets_height`, `emp_dets_weight`, `bloodtype_id`, `emp_dets_citizenship`, `citizenship_country`) VALUES
(1, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(2, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(3, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(4, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(5, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(6, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(7, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(8, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(9, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(10, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(11, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(12, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(13, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(14, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(15, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(16, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(17, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(18, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(19, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(20, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(21, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(22, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(23, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(24, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(25, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(26, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(27, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(28, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(29, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(30, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(31, 11, '1966-01-10', 'DARAGA', 'F', 'M', 1.53, 52, 8, 'F', 1),
(32, 15, '1991-07-15', 'Daraga', 'M', 'S', 1.59, 60, 8, 'F', 1),
(33, 16, '1989-05-15', 'DARAGA', 'F', 'M', 1.49, 59, 8, 'F', 1),
(34, 17, '1973-10-21', 'LEGAZPI CITY', 'M', 'H', 1.6, 59, 8, 'F', 1),
(35, 19, '1970-05-11', 'SORSOGON', 'F', 'M', 1.5, 50, 8, 'F', 1),
(36, 20, '2000-02-05', 'LIGAO CITY', 'F', 'S', 1.5, 55, 8, 'F', 1),
(37, 21, '1970-11-05', 'SORSOGON', 'F', 'M', 1.55, 56, 8, 'F', 1),
(38, 22, '1995-12-14', 'MASBATE', 'F', 'S', 1.49, 55, 8, 'F', 1),
(39, 22, '1995-12-14', 'MASBATE', 'F', 'S', 1.49, 55, 8, 'F', 1),
(40, 22, '1995-12-14', 'MASBATE', 'F', 'S', 1.49, 55, 8, 'F', 1),
(41, 25, '1988-11-21', 'CAMARINES SUR', 'M', 'M', 1.55, 59, 8, 'F', 1),
(42, 26, '1967-09-25', 'CATANDUANES', 'F', 'S', 1.49, 55, 8, 'F', 1),
(43, 27, '1998-07-15', 'CAMARINES SUR', 'F', 'S', 1.57, 45, 8, 'F', 1),
(44, 28, '1995-12-14', 'MASBATE', 'F', 'S', 1.49, 55, 8, 'B', 118598),
(45, 29, '1995-08-05', 'MASBATE CITY', 'F', 'S', 1.8, 89, 8, 'F', 1),
(46, 30, '1994-06-05', 'MASBATE, MASBATE', 'F', 'S', 1.89, 56, 8, 'F', 1),
(47, 31, '1989-07-08', 'SORSOGON CITY', 'M', 'S', 1.98, 90, 8, 'F', 1),
(48, 32, '1976-05-08', 'LEGAZPI, CTIY', 'F', 'M', 1.59, 68, 8, 'F', 1),
(49, 33, '1998-05-08', 'MASBATE, MASBATE', 'F', 'S', 1.89, 55, 8, 'F', 1),
(50, 34, '1990-05-08', 'LIGAO CITY', 'F', 'S', 1.9, 55, 8, 'F', 1),
(51, 34, '1990-05-08', 'LIGAO CITY', 'F', 'S', 1.9, 55, 8, 'F', 1),
(52, 37, '1999-05-08', 'LIGAO', 'M', 'S', 1.9, 60, 3, 'F', 1),
(53, 38, '1990-11-01', 'POLANGUI, ALBAY', 'M', 'S', 1.6, 70, 10, 'F', 1),
(54, 39, '1990-11-10', 'LIGAO CITY', 'F', 'S', 1.6, 50, 3, 'F', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_numbers`
--

CREATE TABLE `employee_numbers` (
  `emp_no_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `emp_no_gsis` varchar(32) NOT NULL,
  `emp_no_pagibig` varchar(32) NOT NULL,
  `emp_no_philhealth` varchar(32) NOT NULL,
  `emp_no_sss` varchar(32) NOT NULL,
  `emp_no_tin` varchar(32) NOT NULL,
  `emp_no_agency` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_numbers`
--

INSERT INTO `employee_numbers` (`emp_no_id`, `employee_id`, `emp_no_gsis`, `emp_no_pagibig`, `emp_no_philhealth`, `emp_no_sss`, `emp_no_tin`, `emp_no_agency`) VALUES
(1, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(2, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(3, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(4, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(5, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(6, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(7, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(8, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(9, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(10, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(11, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(12, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(13, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(14, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(15, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(16, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(17, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(18, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(19, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(20, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(21, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(22, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(23, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(24, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(25, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(26, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(27, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(28, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(29, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(30, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(31, 11, 'GESUCYT438', 'CUWYVT8I24', 'TXQ2HUJWCY29', 'C2JUWY8C23', 'C2I8749IQ', 'CN2IJ8I834179'),
(32, 15, 'CKIYT28O3', 'WJRGHHC9O348', 'CKIURGYWV394', 'FCHMGVWIY57V4938', 'EKCI34YV849O', 'MC3KYI7JA89'),
(33, 16, 'JSGDSNFHJS74', 'T374BCHJD5', 'NDG4395', 'ND4593P', '4736092JAD', 'WHE34890'),
(34, 17, 'FVGBJTUY4R738291', 'GYT5Y7423829', '29387457TFJ', 'HBFGT5Y89', '23924583TREIHF', 'JUGYT843'),
(35, 19, 'BJDBJSN', 'NKJDSNN', 'HEJWI', 'FJNSNK', 'JKNVSN', 'KJNCSJNC'),
(36, 20, 'VJSIOIO09', 'HFDFI809', 'HFJKDNH90', 'HKJFNDK09', 'HKJFN9090', 'JKFN98'),
(37, 21, 'HDFJK', 'HFUIJO', 'KDL;SKFL', 'FLSKEO', 'FJR', 'KLJSFLK'),
(38, 22, 'YIUORWO', 'FHIOWP', 'JFPWO', 'JDOWEP', 'JDOWEP', 'JDFOPJ'),
(39, 22, 'YIUORWO', 'FHIOWP', 'JFPWO', 'JDOWEP', 'JDOWEP', 'JDFOPJ'),
(40, 22, 'YIUORWO', 'FHIOWP', 'JFPWO', 'JDOWEP', 'JDOWEP', 'JDFOPJ'),
(41, 25, 'GFJHSK', 'IWEIO', 'FHJKS', 'GDFHSIEJ', 'FUIHIHJKD', 'HFKDHK'),
(42, 26, 'YUIEJKF890', 'FUIWEFN09', 'HJEWOI09', 'DSKFOIE', '89JFSIO', 'JFIIOE09'),
(43, 27, 'JADSUEWJHD8', 'NDUIWEF83K', 'SCHUE9W9', 'KMND382O', 'KMADHOD', 'INUEF893'),
(44, 28, 'SJAGDAI9876', 'HIFW7E6890', 'BD76890', 'JSDG328910', 'KAJDG3782910', 'NDEYR8E920'),
(45, 29, 'TRYUIWOBJH', 'KFUIBOEI', 'FVGUDIOQG', 'HJOWYUIO', 'GIUOWG', 'UIFOWHI'),
(46, 30, 'RTYUIOBJHKL;', 'TYUIOWPGHJKI', 'OYUIOPFGHU', 'UYGCIOPYUIO', 'YUIWOP', 'GHUIDJOWP'),
(47, 31, 'RTYUIGHJBKL', 'UYFIOPGHJ', 'UYIOVGHJK', 'FUIWOPBJK', 'FYUIOPKJH', 'YFUOIPWKJN'),
(48, 32, 'FYWIUODBHJK', 'UIOWPE', 'GFHIOW', 'FUOWIPF', 'GIUEORJ', 'GOIJOEW'),
(49, 33, 'TYUIOHJKL', 'IGUOWFKJJ', 'IUHYFUJOW', 'HFOIUJOP', 'ODIJUFOUJ', 'HDFSHOFIEU'),
(50, 34, 'RTYUIOFDHKJLK', 'FHUOJIPWHI', 'OFHIJOKP', 'DHFIJOU', 'IFIUHOIEWUJO', 'HDOIWAJ'),
(51, 34, 'RTYUIOFDHKJLK', 'FHUOJIPWHI', 'OFHIJOKP', 'DHFIJOU', 'IFIUHOIEWUJO', 'HDOIWAJ'),
(52, 37, 'TYUIO', 'IHUJODFIUOI', 'FIHWOUFIU', 'FIGUEHWOI', 'HIDHWOFO', 'HUDIWUE'),
(53, 38, 'GDHJKFWUIOQ', 'YGIUOWPI8', 'FHIEUO98', 'FIUFWJO', 'GJOEJR', 'JODIWFJ'),
(54, 39, 'KSDIUEHW89', 'DUIEY090', 'NUIDHG8R89', 'KJFUIY7RE89Q', 'KFUIY890', 'JD849032');

-- --------------------------------------------------------

--
-- Table structure for table `employer_business`
--

CREATE TABLE `employer_business` (
  `employer_business_id` int(11) NOT NULL,
  `employer_business_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employer_business`
--

INSERT INTO `employer_business` (`employer_business_id`, `employer_business_name`) VALUES
(1, 'N/A'),
(2, 'DEPED'),
(3, 'GOODFOUND CEMENT CORPORATION');

-- --------------------------------------------------------

--
-- Table structure for table `government_id`
--

CREATE TABLE `government_id` (
  `govt_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `govt_id_name` varchar(64) NOT NULL,
  `govt_id_no` varchar(32) NOT NULL,
  `govt_id_date_place` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `government_id`
--

INSERT INTO `government_id` (`govt_id`, `employee_id`, `govt_id_name`, `govt_id_no`, `govt_id_date_place`) VALUES
(1, 19, 'DSKLDJK', 'JDSLKJ', 'KFJSKK'),
(2, 20, 'NKJSJFIOJ', 'JFKDJJ', '098790'),
(3, 21, 'RYUIWEB', 'FUYIIWE', '6879'),
(4, 25, 'R78DFO', 'DIJO099', 'FJOIIO'),
(5, 27, 'DRIVER\'S LICENSE', '36742389137', 'CAMARINES SUR'),
(6, 28, 'NATIONAL ID', '5348263736248781', 'MASBATE'),
(7, 29, 'RTYUIO', 'GJHKLW;', 'JUNE 5, 2019/LEGAZPI CITY'),
(8, 30, '567890GYUHIJO', 'UIOP890', '11/2/2023/MASBATE CITY'),
(9, 31, 'PHILSYS ID', '7890-5678-5678', 'FEB.9,2023/LEGAZPI CITY'),
(10, 32, 'SSS ID 56789', 'N/A', 'LEGAZPI, CITY'),
(11, 33, 'PRC ID', '67890', 'RAWIS, LEGAZPI CITY'),
(12, 37, 'SSS ID', '67890', '9/7/2023/LIGAO CITY'),
(13, 38, 'SSS ID', '67890', '9/10/2023/LIGAO CITY'),
(14, 39, 'SSS ID', '890', '7/8/2023/LIGAO CITY');

-- --------------------------------------------------------

--
-- Table structure for table `house_block_lot`
--

CREATE TABLE `house_block_lot` (
  `houseblocklot_id` int(11) NOT NULL,
  `houseblocklot_no` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `house_block_lot`
--

INSERT INTO `house_block_lot` (`houseblocklot_id`, `houseblocklot_no`) VALUES
(1, 'N/A'),
(2, '423'),
(3, 'Purok 1'),
(4, 'PUROK 6'),
(5, 'PUROK 7'),
(6, 'T78'),
(7, 'BLK 10, '),
(24699, ''),
(37825, '');

-- --------------------------------------------------------

--
-- Table structure for table `ld_titles`
--

CREATE TABLE `ld_titles` (
  `ld_title_id` int(11) NOT NULL,
  `ld_title_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ld_titles`
--

INSERT INTO `ld_titles` (`ld_title_id`, `ld_title_name`) VALUES
(1, 'N/A'),
(2, 'Workshop on the Conduct of Inflation Rate Conference'),
(3, 'Seminar on Sustainable Development Goals (SDG)-2'),
(4, 'Training o 4c\'s Management'),
(5, 'qwertyuiop'),
(6, '2022 CENSUS OF AGRICULTURE AND FISHERIES'),
(7, 'QMS'),
(8, '2ND PHILIPPINE DATA FESTIVAL'),
(9, 'QMS ORIENTATION'),
(10, 'BUILDING AND MAINTAINING TRUST'),
(11, 'PERFORMANCE MANAGEMENT SYSTEM'),
(12, 'GENDER FAIR LANGUAGE'),
(13, 'NATIONAL STATISTICS OFFICE'),
(14, 'TRAINING ON INFOGRAPHICS USING CANVA'),
(15, 'AGRICULTURE STATISTIC ORIENTATION'),
(16, 'BASICS STATISTIC'),
(17, 'MANAGING WORKPLACE CONFLICT'),
(18, 'GOOGLE FORMS BASIC'),
(19, 'TRAINING ON  DATA DISSEMINATION'),
(20, 'TRAINING ON LEADERSHIP DEVELOPMENT PROGRAM'),
(21, 'HEALTH STATISTIC\'S FOR THE MONITORING SDG\'S'),
(22, 'BASIC OCCUPATIONAL SAFETY AND HEALTH TRAINING'),
(23, 'DATA VISUALIZATION USING VIDEO GRAPHICS'),
(24, 'CRVS 101 BRIEFING'),
(25, 'TRAINING WORKSHOP ON 5S GOOD HOUSEKEEPING'),
(26, 'WEBINAR ON LET\'S GET PHYSICAL'),
(27, '2021 GENERAL ASSEMBLY'),
(28, 'AAO ABD ERF HANDLERS ORIENTATION'),
(29, 'DATA MANAGEMENT'),
(30, 'womens forum');

-- --------------------------------------------------------

--
-- Table structure for table `learning_development`
--

CREATE TABLE `learning_development` (
  `ld_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `ld_title_id` int(11) NOT NULL,
  `ld_from` date NOT NULL,
  `ld_to` date NOT NULL,
  `ld_hrs` int(11) NOT NULL,
  `ld_type` varchar(32) NOT NULL,
  `sponsor_id` int(11) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_development`
--

INSERT INTO `learning_development` (`ld_id`, `employee_id`, `ld_title_id`, `ld_from`, `ld_to`, `ld_hrs`, `ld_type`, `sponsor_id`, `date_added`) VALUES
(1, 11, 2, '2024-09-19', '2024-09-21', 24, 'SUPERVISORY/TECHNICAL', 2, '2024-05-13'),
(2, 15, 3, '2023-05-05', '2023-05-05', 1, 'Supervisory', 3, '2024-05-13'),
(3, 16, 4, '2023-11-02', '2023-11-02', 4, 'Managerial', 4, '2024-05-13'),
(4, 11, 2, '2024-09-19', '2024-09-21', 24, 'SUPERVISORY/TECHNICAL', 2, '2024-05-14'),
(5, 17, 3, '2023-05-05', '2023-05-05', 1, 'SUPERVISORY', 4, '2024-05-14'),
(6, 17, 3, '2023-05-05', '2023-05-05', 1, 'SUPERVISORY', 4, '2024-05-14'),
(7, 19, 7, '2023-03-08', '2023-04-09', 10, 'TECHNICAL', 3, '2024-06-02'),
(8, 19, 8, '2023-03-10', '2023-04-10', 16, 'SUPERVISORY', 3, '2024-06-02'),
(9, 20, 1, '0000-00-00', '0000-00-00', 0, 'N/A', 1, '2024-06-04'),
(10, 21, 6, '2003-05-07', '2003-05-10', 14, 'TECHNICAL', 3, '2024-06-05'),
(11, 21, 3, '2023-02-05', '2023-02-06', 8, 'SUPERVISORY', 3, '2024-06-05'),
(12, 25, 14, '2023-02-05', '2023-02-05', 5, 'TECHNICAL', 3, '2024-06-05'),
(13, 27, 17, '2022-02-03', '2022-02-03', 4, 'MANAGERIAL', 4, '2024-06-05'),
(14, 27, 11, '2022-06-05', '2022-06-05', 1, 'MANAGERIAL', 4, '2024-06-05'),
(15, 28, 18, '2023-12-10', '2023-12-10', 5, 'TECHNICAL', 4, '2024-06-05'),
(16, 28, 19, '2023-10-20', '2023-10-20', 4, 'TECHNICAL', 4, '2024-06-05'),
(17, 28, 14, '2023-10-20', '2023-10-20', 4, 'TECHNICAL', 4, '2024-06-05'),
(18, 29, 21, '2020-02-05', '2020-02-05', 5, 'TECHNICAL', 3, '2024-06-06'),
(19, 29, 22, '2018-02-05', '2018-02-05', 4, 'TECHNICAL', 3, '2024-06-06'),
(20, 30, 23, '2022-11-11', '2022-11-12', 14, 'TECHINICAL', 3, '2024-06-06'),
(21, 30, 24, '2022-05-08', '2022-05-08', 8, 'SUPERVISORY', 3, '2024-06-06'),
(22, 31, 18, '2024-05-08', '2024-05-08', 5, 'TECHNICAL', 3, '2024-06-06'),
(23, 31, 25, '2023-02-05', '2023-02-05', 7, 'SUPERVISORY', 3, '2024-06-06'),
(24, 32, 26, '2022-06-09', '2022-06-09', 5, 'TECHNICAL', 8, '2024-06-06'),
(25, 32, 27, '2021-02-05', '2021-02-05', 7, 'TECHNICAL', 8, '2024-06-06'),
(26, 33, 28, '2022-02-05', '2022-02-05', 5, 'TECHNICAL', 9, '2024-06-06'),
(27, 37, 6, '2024-03-26', '2024-03-26', 8, 'TECHNICAL', 3, '2024-06-06'),
(28, 38, 29, '2024-02-07', '2024-02-08', 8, 'TECHNICAL', 4, '2024-06-06'),
(29, 39, 1, '0000-00-00', '0000-00-00', 0, 'N/A', 1, '2024-06-06'),
(30, 11, 30, '2024-05-03', '2024-05-05', 14, 'technical', 4, '2024-06-06'),
(31, 20, 30, '2024-05-03', '2024-05-05', 14, 'technical', 4, '2024-06-06'),
(32, 30, 30, '2024-05-03', '2024-05-05', 14, 'technical', 4, '2024-06-06'),
(33, 33, 30, '2024-05-03', '2024-05-05', 14, 'technical', 4, '2024-06-06'),
(34, 39, 1, '0000-00-00', '0000-00-00', 0, 'N/A', 1, '2024-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `membership_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `employee_id`, `membership_name`) VALUES
(1, 11, 'MARITES ASSOCIATION - ALBAY CHAP'),
(2, 15, 'N/A'),
(3, 16, 'Marites Association Albay Chapte'),
(4, 17, 'N/A'),
(5, 19, 'N/A'),
(6, 25, 'N/A'),
(7, 27, 'N/A'),
(8, 28, 'N/A'),
(9, 29, 'N/A'),
(10, 30, 'N/A'),
(11, 31, 'N/A'),
(12, 32, 'N/A'),
(13, 33, 'N/A'),
(14, 37, 'N/A'),
(15, 38, 'N/A'),
(16, 39, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `nonacademic_recognition`
--

CREATE TABLE `nonacademic_recognition` (
  `nar_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `nar_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nonacademic_recognition`
--

INSERT INTO `nonacademic_recognition` (`nar_id`, `employee_id`, `nar_name`) VALUES
(1, 11, 'N/A'),
(2, 15, 'N/A'),
(3, 16, 'Best in Data Gathering 2023'),
(4, 17, 'BEST IN TREE PLANTING 2023'),
(5, 19, 'N/A'),
(6, 25, 'N/A'),
(7, 27, 'N/A'),
(8, 28, 'N/A'),
(9, 29, 'N/A'),
(10, 30, 'N/A'),
(11, 31, 'N/A'),
(12, 32, 'N/A'),
(13, 33, 'N/A'),
(14, 37, 'N/A'),
(15, 38, 'N/A'),
(16, 39, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `occupation_id` int(11) NOT NULL,
  `occupation_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`occupation_id`, `occupation_name`) VALUES
(1, 'N/A'),
(2, 'ELEM. TEACHER'),
(3, 'DRIVER'),
(4, 'HOUSEWIFE'),
(1046176, 'QUALITY CONTROLLER');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parent_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `parent_lastname` varchar(64) NOT NULL,
  `parent_firstname` varchar(64) NOT NULL,
  `parent_middlename` varchar(64) NOT NULL,
  `parent_nameext` varchar(4) NOT NULL,
  `parent_type` char(1) NOT NULL COMMENT 'F = Father /\r\nM = Mother'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parent_id`, `employee_id`, `parent_lastname`, `parent_firstname`, `parent_middlename`, `parent_nameext`, `parent_type`) VALUES
(1, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(2, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(3, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(4, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(5, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(6, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(7, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(8, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(9, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(10, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(11, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(12, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(13, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(14, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(15, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(16, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(17, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(18, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(19, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(20, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(21, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(22, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(23, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(24, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(25, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(26, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(27, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(28, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(29, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(30, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(31, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(32, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(33, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(34, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(35, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(36, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(37, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(38, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(39, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(40, 11, 'SALTING', 'ALMA', 'DOLCE', 'N/A', 'M'),
(41, 15, 'Doe', 'Carlos', 'Martinez', 'N/A', 'F'),
(42, 15, 'Prieto', 'Manuela', 'Sanz', 'N/A', 'M'),
(43, 16, 'SOLER', 'EMILIO', 'SANTANA', 'N/A', 'F'),
(44, 16, 'RUBIO', 'CLAUDIA', 'ALONSO', 'N/A', 'M'),
(45, 17, 'CRESPO', 'IMELDA', 'SANTAYANA', 'N/A', 'M'),
(46, 17, 'CRESPO', 'IMELDA', 'SANTAYANA', 'N/A', 'M'),
(47, 19, 'SARIO', 'EDUARDO', 'DIAZ', 'N/A', 'F'),
(48, 19, 'SABAN', 'JOY', 'BELMONTE', 'N/A', 'M'),
(49, 20, 'REOLA', 'JONATHAN', 'N/A', 'N/A', 'F'),
(50, 20, 'N/A', 'N/A', 'N/A', 'N/A', 'M'),
(51, 21, 'SARIO', 'JHONNY', 'RIO', 'N/A', 'F'),
(52, 21, 'LUSTRE', 'SOLIDAD', 'MANLANGIT', 'N/A', 'M'),
(53, 25, 'GOMEZ', 'MARTIN', 'MORALDE', 'N/A', 'F'),
(54, 25, 'GIL', 'NIKKI', 'SANTOS', 'N/A', 'M'),
(55, 27, 'LORENZO', 'JESUS', 'NAVARRO', 'JR.', 'F'),
(56, 27, 'PILAR', 'AMPARO', 'VASQUEZ', 'N/A', 'M'),
(57, 28, 'HERNANDEZ', 'MANUEL', 'N/A', 'N/A', 'F'),
(58, 28, 'ORTIZ', 'JUANA', 'VELASCO', 'N/A', 'M'),
(59, 29, 'PAJENTE', 'BENNY', 'NEPO', 'N/A', 'F'),
(60, 29, 'ESPINAS', 'EMILIA', 'ESPINOSA', 'N/A', 'M'),
(61, 30, 'MANLAPAZ', 'RINO', 'RIVERA', 'N/A', 'F'),
(62, 30, 'BARCITA', 'ROSE MARIE', 'N/A', 'N/A', 'M'),
(63, 31, 'CHAVEEZ', 'ARNEL', 'REYES', 'N/A', 'F'),
(64, 31, 'JETOMO', 'MARILOU', 'FIDELSON', 'N/A', 'M'),
(65, 32, 'NIPAS', 'LEMIO', 'BANTOG', 'N/A', 'F'),
(66, 32, 'MOLAR', 'NARCITA', 'LUSTRE', 'N/A', 'M'),
(67, 33, 'INOPIA', 'JONATHAN', 'ARCUENO', 'N/A', 'F'),
(68, 33, 'ATIBAGOS', 'NENIA', 'SODSOD', 'N/A', 'M'),
(69, 37, 'REYES', 'JOSE', 'BIO', 'N/A', 'F'),
(70, 37, 'ROMERO', 'MARIA', 'N/A', 'N/A', 'M'),
(71, 38, 'DURAN', 'JOEY', 'LEE', 'N/A', 'F'),
(72, 38, 'PEREZ', 'NADINE', 'LUSTRE', 'N/A', 'M'),
(73, 39, 'ORDIZ', 'MANUEL', 'N/A', 'N/A', 'F'),
(74, 39, 'LOPEZ', 'MARIAN', 'CRUZ', 'N/A', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `pds_references`
--

CREATE TABLE `pds_references` (
  `ref_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `ref_name` varchar(128) NOT NULL,
  `ref_add` varchar(128) NOT NULL,
  `ref_telno` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pds_references`
--

INSERT INTO `pds_references` (`ref_id`, `employee_id`, `ref_name`, `ref_add`, `ref_telno`) VALUES
(1, 11, 'JUAN DELA CRUZ', 'LEGAZPI CITY', '09738791874'),
(2, 15, 'April Cassandra s. Regalario', 'Polangui, Albay', '09478381287'),
(3, 16, 'Jezzel Reola', 'Ligao City', '09099999999'),
(4, 17, 'CASSANDRA SASA', 'POLANGUI, ALBAY', '09578926472'),
(5, 19, 'EMILIO LANGIT', 'DARAGA', '9168743028'),
(6, 20, 'MICHELLE ABO', 'LIGAO CITY', '783490'),
(7, 21, 'JOHN ROMERO', 'SORSOGON', '46728'),
(8, 25, 'EDMA MARIE LOPEZ', 'GUINOBATAN ALBAY', '785930'),
(9, 27, 'CESAR GOMEZ', 'CAMARINES SUR', '09073123680'),
(10, 28, 'ANJANETTE BERCILLA', 'CAMARINESS NORTE', '09123456789'),
(11, 29, 'JANINA BRAVO', 'MASBATE CITY', '09785642365'),
(12, 29, 'JHANA MAE ABO', 'MASBATE CITY', '09567864523'),
(13, 30, 'ELBERT CONAG', 'MILAGROS, MASBATE', '09785643254'),
(14, 31, 'ARNEL D. VERA', 'LEGAZPI, CITY', '09786345872'),
(15, 31, 'CECIL LEE', 'LEGAZPI, CITY', '09234568710'),
(16, 32, 'CROSS LEE', 'PSA-ALBAY', '09783265542'),
(17, 32, 'PABLO SUE', 'PSA-ALBAY', '09121122543'),
(18, 32, 'JUSTINE QUE', 'PSA-ALBAY', '0978778823'),
(19, 33, 'SHIRLEY ALARCON', 'MASBATE CITY', '098746214'),
(20, 33, 'MARIVEL SODSOD', 'MASBATE CITY', '09785632451'),
(21, 37, 'MC RANOSA', 'LIGAO CITY', '09456587262'),
(22, 38, 'JOHN REY CANO', 'LIGAO CITY', '09782365489'),
(23, 38, 'JAY RAYAG', 'POLANGUI, ALBAY', '09235698456'),
(24, 20, 'MICHELLE ABO', 'LIGAO CITY', '783490'),
(25, 39, 'RACHELL ANN REYES', 'LIGAO CITY', '09785645325'),
(26, 39, 'RACHELL ANN REYES', 'LIGAO CITY', '09785645325'),
(27, 39, 'RACHELL ANN REYES', 'LIGAO CITY', '09785645325');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `pi_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `pii_birthplace` int(11) NOT NULL,
  `citizenship_country_id` int(11) NOT NULL,
  `radd_zipcode_id` int(11) NOT NULL,
  `radd_province_id` int(11) NOT NULL,
  `radd_citymunicipality_id` int(11) NOT NULL,
  `radd_barangay_id` int(11) NOT NULL,
  `radd_subdivisionvillage_id` int(11) NOT NULL,
  `radd_street_id` int(11) NOT NULL,
  `radd_houseblocklot_id` int(11) NOT NULL,
  `padd_zipcode_id` int(11) NOT NULL,
  `padd_province_id` int(11) NOT NULL,
  `padd_citymunicipality_id` int(11) NOT NULL,
  `padd_barangay_id` int(11) NOT NULL,
  `padd_subdivisionvillage_id` int(11) NOT NULL,
  `padd_street_id` int(11) NOT NULL,
  `padd_houseblocklot_id` int(11) NOT NULL,
  `pi_bday` date NOT NULL,
  `pi_sex` char(1) NOT NULL COMMENT 'M = Male /\r\nF = Female',
  `pi_civilstatus` char(1) NOT NULL COMMENT 'S = Single /\r\nM = Married /\r\nC = Common law /\r\nW = Widowed /\r\nH = Separated',
  `pi_height` int(11) NOT NULL,
  `pi_weight` int(11) NOT NULL,
  `pi_bloodtype` varchar(2) NOT NULL,
  `pi_citizenship` char(1) NOT NULL COMMENT 'F = Filipino /\r\nB = dual citizenship by Birth /\r\nN = dual citizenship by Naturalization',
  `pi_gsis_idno` int(11) NOT NULL,
  `pi_pagibig_idno` int(11) NOT NULL,
  `pi_philhealth_no` int(11) NOT NULL,
  `pi_sss_no` int(11) NOT NULL,
  `pi_tin_no` int(11) NOT NULL,
  `pi_tel_no` varchar(16) NOT NULL,
  `pi_mobile_no` varchar(11) NOT NULL,
  `pi_emailadd` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_title` varchar(64) NOT NULL,
  `position_salarygrade` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`position_id`, `position_title`, `position_salarygrade`) VALUES
(1, 'N/A', 0),
(2, 'Regional Director', 26),
(3, 'Chief Administrative Officer', 24),
(4, 'Chief Statistical Specialist', 24),
(5, 'Supervising Statistical Specialist', 22),
(6, 'Registration Officer IV', 22),
(7, 'Senior Statistical Specialist', 19),
(8, 'Registration Officer III', 18),
(9, 'Accountant III', 18),
(10, 'Statistical Specialist II', 16),
(11, 'Administrative Officer IV', 15),
(12, 'Administrative Officer III', 14),
(13, 'Information Systems Analyst I', 12),
(14, 'Information Officer I', 11),
(15, 'Statistical Analyst', 11),
(16, 'Administrative Assistant III', 9),
(17, 'Assistant Statistician', 9),
(18, 'Administrative Assistant II', 8),
(19, 'Administrative Assistant I', 7),
(20, 'Administrative Aide VI', 6),
(21, 'Administrative Aide III', 3),
(22, 'Supervising Statistical Analyst', 22),
(23, 'Administrative Clerk', 0),
(24, 'Planning Officer II', 0),
(25, 'ACCOUNTANT III', 10),
(26, 'STATISTICAL COORDINATION OFFICER II', 13),
(27, 'ACCOUNTANT IV', 11),
(28, 'STATISTICAL SPECIALIST II', 11),
(29, 'STATISTICAL COORDINATION OFFICER II', 12),
(30, 'STATISTICAL COORDINATION OFFICER II', 15),
(31, 'STATISTICAL COORDINATION OFFICER II', 10),
(32, 'ADMINISTRATIVE AIDE III', 0),
(33, 'SUPERVISING STATISTICAL ANALYST', 11),
(34, 'ADMINISTRATIVE OFFICER II', 0),
(35, 'ADMINISTRATIVE OFFICER I', 0),
(36, 'ADMINISTRATIVE AIDE II', 0),
(37, 'REGISTRATION OFFICER II', 14),
(38, 'ADMINISTRATIVE OFFICER I', 10),
(39, 'ASSISTANT STATISTICIAN', 0),
(40, 'CONSULTANT', 0),
(41, 'ADMINISTRATIVE ASSISTANT II', 0),
(42, 'ADMINISTRTATIVE CLERK', 0),
(43, 'ADMINISTRATIVE ASSISTANT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`province_id`, `province_name`) VALUES
(1, 'Albay'),
(2, 'Camarines Norte'),
(3, 'Camarines Sur'),
(4, 'Catanduanes'),
(5, 'Masbate'),
(6, 'Sorsogon');

-- --------------------------------------------------------

--
-- Table structure for table `qna`
--

CREATE TABLE `qna` (
  `qna_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_itemno` int(2) NOT NULL,
  `qna_a` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_a_ifyes` varchar(256) NOT NULL,
  `qna_b` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_b_ifyes` varchar(256) NOT NULL,
  `qna_b_ifyes_plus` varchar(256) NOT NULL,
  `qna_c` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_c_ifyes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qna`
--

INSERT INTO `qna` (`qna_id`, `employee_id`, `qna_itemno`, `qna_a`, `qna_a_ifyes`, `qna_b`, `qna_b_ifyes`, `qna_b_ifyes_plus`, `qna_c`, `qna_c_ifyes`) VALUES
(1, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(2, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(3, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(4, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(5, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(6, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(7, 11, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'FUYDHF'),
(8, 15, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(9, 15, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(10, 15, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(11, 15, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(12, 15, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(13, 15, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(14, 15, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(15, 16, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(16, 16, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(17, 16, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(18, 16, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(19, 16, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(20, 16, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(21, 16, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(22, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(23, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(24, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(25, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(26, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(27, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(28, 17, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(29, 19, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(30, 19, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(31, 19, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(32, 19, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(33, 19, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(34, 19, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(35, 19, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(36, 20, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(37, 20, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(38, 20, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(39, 20, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(40, 20, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(41, 20, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(42, 20, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(43, 21, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(44, 21, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(45, 21, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(46, 21, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(47, 21, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(48, 21, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(49, 21, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(50, 25, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(51, 25, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(52, 25, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(53, 25, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(54, 25, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(55, 25, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(56, 25, 40, 'N', 'N/A', 'Y', 'OA', 'N/A', 'Y', 'YUDJSK'),
(57, 27, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(58, 27, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(59, 27, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(60, 27, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(61, 27, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(62, 27, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(63, 27, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(64, 28, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(65, 28, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(66, 28, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(67, 28, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(68, 28, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(69, 28, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(70, 28, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(71, 29, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(72, 29, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(73, 29, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(74, 29, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(75, 29, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(76, 29, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(77, 29, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(78, 30, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(79, 30, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(80, 30, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(81, 30, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(82, 30, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(83, 30, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(84, 30, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(85, 31, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(86, 31, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(87, 31, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(88, 31, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(89, 31, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(90, 31, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(91, 31, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(92, 32, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(93, 32, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(94, 32, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(95, 32, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(96, 32, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(97, 32, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(98, 32, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(99, 33, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(100, 33, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(101, 33, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(102, 33, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(103, 33, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(104, 33, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(105, 33, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(106, 37, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(107, 37, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(108, 37, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(109, 37, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(110, 37, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(111, 37, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(112, 37, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(113, 38, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(114, 38, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(115, 38, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(116, 38, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(117, 38, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(118, 38, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(119, 38, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(120, 39, 34, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(121, 39, 35, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(122, 39, 36, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(123, 39, 37, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(124, 39, 38, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(125, 39, 39, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A'),
(126, 39, 40, 'N', 'N/A', 'N', 'N/A', 'N/A', 'N', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `qna_34`
--

CREATE TABLE `qna_34` (
  `qna_34_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_34a` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_34b` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_34b_ifyes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qna_35`
--

CREATE TABLE `qna_35` (
  `qna_35_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_35a` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_35a_ifyes` varchar(256) NOT NULL,
  `qna_35b` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_35b_ifyes_datefiled` varchar(255) NOT NULL,
  `qna_35b_ifyes_casestatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qna_36`
--

CREATE TABLE `qna_36` (
  `qna_36_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_36` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_36_ifyes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qna_37`
--

CREATE TABLE `qna_37` (
  `qna_37_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_37` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_37_ifyes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qna_38`
--

CREATE TABLE `qna_38` (
  `qna_38_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_38a` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_38a_ifyes` varchar(256) NOT NULL,
  `qna_38b` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_38b_ifyes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qna_39`
--

CREATE TABLE `qna_39` (
  `qna_39_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_39` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_39_ifyes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qna_40`
--

CREATE TABLE `qna_40` (
  `qna_40_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `qna_40a` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_40a_ifyes` varchar(256) NOT NULL,
  `qna_40b` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_40b_ifyes` varchar(255) NOT NULL,
  `qna_40c` char(1) NOT NULL COMMENT 'Y = Yes / N = No',
  `qna_40c_ifyes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rsso_v`
--

CREATE TABLE `rsso_v` (
  `rsso_id` int(11) NOT NULL,
  `rsso_name` varchar(128) NOT NULL,
  `rsso_acronym` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rsso_v`
--

INSERT INTO `rsso_v` (`rsso_id`, `rsso_name`, `rsso_acronym`) VALUES
(1, 'Office of the Regional Director', 'ORD'),
(2, 'Civil Registration and Administrative Support Division', 'CRASD'),
(3, 'Statistical Operations and Coordination Division', 'SOCD');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`) VALUES
(1, 'N/A'),
(2, 'Alcala Elementary School'),
(3, 'Daraga National High School'),
(4, 'University of San Antonio'),
(5, 'Binitayan Elementary School'),
(6, 'Bicol University'),
(7, 'ILAWOD ELEMENTARY SCHOOL'),
(8, 'DARAGA HIGH SCHOOL'),
(9, 'TINAGO ELEMENTARY SCHOOL'),
(10, 'TINAGO HIGH SCHOOL'),
(11, 'CAT COLLEGE'),
(12, 'INARARAN ELEMENTARY SCHOOL'),
(13, 'SORSOGON NATIONAL HIGH SCHOOL'),
(14, 'INARARAN E/S'),
(15, 'SORSOGON H/S'),
(16, 'TINAGO NATIONAL HIGH SCHOOL'),
(17, 'PAULBA ELEMENTARY SCHOOL'),
(18, 'PAULBA HIGH SCHOOL'),
(19, 'SORSOGON ELEMENTARY SCHOOL'),
(20, 'LOURDES ELEMENTARY SCHOOL'),
(21, 'BUHI HIGH SCHOOL'),
(22, 'CAMARINES SUR POLYTHECNIC COLLEGE'),
(23, 'SAN FELIPE E/S'),
(24, 'BASUD NATIONAL H/S'),
(25, 'CAMARINES NORTE STATE COLLEGE'),
(26, 'CURVADA E/S'),
(27, 'QUEZON NATIONAL H/S'),
(28, 'OSMENA COLLEGE'),
(29, 'ALCALA ELEEMENTARY SCHOOL'),
(30, 'JOSE SR. ELEMENTARY SCHOOL'),
(31, 'MASBATE NATIONAL HIGH SHCOOL'),
(32, 'POLYTHECNIC UNIVERSITY OF THE PHILIPPINES'),
(33, 'AMANCIO ELEMENTEARY SCHOOL'),
(34, 'MASBATE NATIONAL HIGH SCHOOL'),
(35, 'BICOL UNIVERSITY COLLEGE OF BUSINESS ECONOMICS AND MANAGEMENT'),
(36, 'OSMENA COLLEGES'),
(37, 'ABUYOG ELEMENTARY SCHOOL'),
(38, 'BALIGANG ELEMENTARY SCHOOL'),
(39, 'ST. JOHN\'S ACADEMY'),
(40, 'DIVINE WORLD COLLEGE OF LEGAZPI'),
(41, 'LICEO DE MASBATE'),
(42, 'BICOL UNIVESITY'),
(43, 'POLANGUI NORTH CENTRAL SCHOOL'),
(44, 'SAINT PETER ACADEMY');

-- --------------------------------------------------------

--
-- Table structure for table `special_skills_hobbies`
--

CREATE TABLE `special_skills_hobbies` (
  `ssh_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `ssh_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `special_skills_hobbies`
--

INSERT INTO `special_skills_hobbies` (`ssh_id`, `employee_id`, `ssh_name`) VALUES
(1, 11, 'DANCING'),
(2, 15, 'Writing Articles'),
(3, 15, 'Dancing'),
(4, 15, 'Singing'),
(5, 16, 'Data Gathering'),
(6, 17, 'GUITARIST'),
(7, 17, 'PIANIST'),
(8, 19, 'COOKING'),
(9, 19, 'SINGING'),
(10, 25, 'DANCING'),
(11, 25, 'DANCING'),
(12, 27, 'SINGER'),
(13, 27, 'DANCER'),
(14, 27, 'GUITARIST'),
(15, 28, 'COOKING'),
(16, 28, 'DRUMMER'),
(17, 29, 'KNOWLEDGEABLE IN HTML, CSS'),
(18, 30, 'SINGING'),
(19, 30, 'COOKING'),
(20, 31, 'KNOWLEDGE IN WEBPAGE DESIGN'),
(21, 31, 'MICROSOFT OFFICE APPLICATION ADV'),
(22, 32, 'DRAFTING'),
(23, 33, 'GOOD TEAM PLAYER'),
(24, 33, 'AUTODIDACT'),
(25, 37, 'DANCING'),
(26, 38, 'PLAYING GUITAR'),
(27, 38, 'READING'),
(28, 39, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `sponsor_id` int(11) NOT NULL,
  `sponsor_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`sponsor_id`, `sponsor_name`) VALUES
(1, 'N/A'),
(2, 'PSD PSA-Manila'),
(3, 'Philippine Statistics Authority'),
(4, 'Psa'),
(5, 'PSA - RSSO V'),
(6, 'OPTUM GLOBAL SOLUTIONS, INC'),
(7, 'PHILIPPINE STATISTICAL AND TRAINING INSTITUE'),
(8, 'PHILIPPINE STATISTICS AUTHORITY-RSSO V'),
(9, 'GOVERNMENT SERVICE INSURANCE SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `spouses`
--

CREATE TABLE `spouses` (
  `spouse_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `spouse_lastname` varchar(64) NOT NULL,
  `spouse_firstname` varchar(64) NOT NULL,
  `spouse_middlename` varchar(64) NOT NULL,
  `spouse_nameext` varchar(4) NOT NULL,
  `occupation_id` int(11) NOT NULL,
  `employer_business_id` int(11) NOT NULL,
  `spouse_busadd` varchar(128) NOT NULL,
  `spouse_telno` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spouses`
--

INSERT INTO `spouses` (`spouse_id`, `employee_id`, `spouse_lastname`, `spouse_firstname`, `spouse_middlename`, `spouse_nameext`, `occupation_id`, `employer_business_id`, `spouse_busadd`, `spouse_telno`) VALUES
(1, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(2, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(3, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(4, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(5, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(6, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(7, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(8, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(9, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(10, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(11, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(12, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(13, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(14, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(15, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(16, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(17, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(18, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(19, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(20, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(21, 11, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(22, 15, '', '', '', 'N/A', 1, 1, 'N/A', 'N/A'),
(23, 16, 'VIDAL', 'FELIX', 'MORALES', 'N/A', 2, 2, 'N/A', '9696749217'),
(24, 17, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(25, 19, 'CRUZ', 'EFREN', 'REYES', 'N/A', 3, 1, 'N/A', '9647829405'),
(26, 20, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(27, 21, 'CRUZ', 'FERNANDO', 'MARCOS', 'N/A', 3, 1, 'N/A', 'N/A'),
(28, 25, 'GOMEZ', 'MARTA', 'VEGA', 'N/A', 4, 1, 'N/A', 'N/A'),
(29, 27, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(30, 28, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(31, 29, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(32, 30, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(33, 31, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(34, 32, 'VASQUEZ', 'HARROLD', 'NIMPA', 'N/A', 1046176, 3, 'CAMALIG, ALBAY', 'N/A'),
(35, 33, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(36, 37, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(37, 38, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A'),
(38, 39, 'N/A', 'N/A', 'N/A', 'N/A', 1, 1, 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `streets`
--

CREATE TABLE `streets` (
  `street_id` int(11) NOT NULL,
  `street_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `streets`
--

INSERT INTO `streets` (`street_id`, `street_name`) VALUES
(1, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `subdivision_village`
--

CREATE TABLE `subdivision_village` (
  `subdivisionvillage_id` int(11) NOT NULL,
  `subdivisionvillage_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subdivision_village`
--

INSERT INTO `subdivision_village` (`subdivisionvillage_id`, `subdivisionvillage_name`) VALUES
(1, 'N/A'),
(2, 'RANCHO IMPERIAL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_pwdhash` varchar(128) NOT NULL,
  `user_type` char(1) NOT NULL COMMENT 'A = Admin /\r\nE = Employee',
  `user_status` char(1) NOT NULL COMMENT 'A = Active /\r\nI = Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pwdhash`, `user_type`, `user_status`) VALUES
(1, 'admin', '$argon2id$v=19$m=65536,t=4,p=1$cjMwbFJLRnR2U05wSmZxRg$sOdQlqSf3wUPH31zgIk3rptVkAXr/5NXO8x0fa1eiG0', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `voluntary_work`
--

CREATE TABLE `voluntary_work` (
  `volwork_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `volwork_name_add` varchar(256) NOT NULL,
  `volwork_from` date NOT NULL,
  `volwork_to` date NOT NULL,
  `volwork_hrs` int(11) NOT NULL,
  `volwork_position` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voluntary_work`
--

INSERT INTO `voluntary_work` (`volwork_id`, `employee_id`, `volwork_name_add`, `volwork_from`, `volwork_to`, `volwork_hrs`, `volwork_position`) VALUES
(1, 11, 'SOMETHING', '2024-05-07', '2024-05-08', 16, 'SOMETHINGSOMETHING'),
(2, 15, 'something', '2023-05-05', '2023-05-05', 8, 'somethingsomething'),
(3, 16, 'Marites Association Albay Chapter', '2022-09-09', '2024-05-13', 1000, 'Data Gatherer'),
(4, 17, 'DIOCESE OF LEGAZPI', '2023-05-05', '2023-05-05', 2, 'CHOIR'),
(5, 17, 'DIOCESE OF LEGAZPI', '2023-05-05', '2023-05-05', 2, 'CHOIR'),
(6, 19, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(7, 20, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(8, 21, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(9, 25, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(10, 27, 'DENR', '2024-05-13', '0000-00-00', 120, 'TREE PLANTER'),
(11, 28, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(12, 29, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(13, 30, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(14, 31, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(15, 32, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(16, 33, 'FUTURE VOCATIONAL AND TECHNICAL LEADERS OF THE PHILIPPINEES', '2020-05-05', '2023-08-05', 45, 'N/A'),
(17, 33, 'RED CROSS YOUTH', '2016-02-05', '2019-02-05', 78, 'N/A'),
(18, 37, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(19, 38, 'RED CROSS YOUTH', '2020-02-05', '2022-02-05', 80, 'N/A'),
(20, 20, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(21, 39, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(22, 39, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A'),
(23, 39, 'N/A', '0000-00-00', '0000-00-00', 0, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `workexp_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `workexp_from` date NOT NULL,
  `workexp_to` date NOT NULL,
  `position_id` int(11) NOT NULL,
  `daoc_id` int(11) NOT NULL,
  `workexp_salary_mo` varchar(12) NOT NULL,
  `workexp_paygrade_step` varchar(12) NOT NULL,
  `workexp_status` varchar(16) NOT NULL,
  `workexp_govtsvcs` char(1) NOT NULL COMMENT 'Y = Yes / N = No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`workexp_id`, `employee_id`, `workexp_from`, `workexp_to`, `position_id`, `daoc_id`, `workexp_salary_mo`, `workexp_paygrade_step`, `workexp_status`, `workexp_govtsvcs`) VALUES
(1, 11, '2022-01-07', '2024-05-13', 22, 2, '₱73,000', '22', 'PERMANENT', 'Y'),
(2, 15, '2021-10-04', '2024-05-13', 23, 2, '₱14,000', 'N/A', 'Temporary', 'Y'),
(3, 16, '2023-10-11', '2023-10-11', 24, 3, '₱40,00', 'n/a', 'Permanent', 'Y'),
(4, 17, '2023-01-11', '0000-00-00', 25, 4, '₱55,000', '10-1', 'PERMANENT', 'Y'),
(5, 19, '0000-00-00', '0000-00-00', 1, 1, 'N/A', 'N/A', 'N/A', 'N'),
(6, 20, '0000-00-00', '0000-00-00', 1, 1, 'N/A', 'N/A', 'N/A', 'N'),
(7, 21, '2000-06-05', '0000-00-00', 28, 2, '30,000', '11', 'PERMANENT', 'Y'),
(8, 25, '2019-06-05', '0000-00-00', 32, 2, '24,000', '9', 'PERMANENT', 'Y'),
(9, 25, '2019-06-05', '0000-00-00', 32, 2, '24,000', '9', 'PERMANENT', 'Y'),
(10, 27, '2023-03-13', '2022-01-24', 34, 2, '₱19,000', '8', 'PERMANENT', 'Y'),
(11, 27, '2020-10-06', '0000-00-00', 35, 2, '₱17,000', '7', 'PERMANENT', 'Y'),
(12, 28, '2023-02-14', '2019-01-12', 32, 2, '₱20,000', '9', 'PERMANENR', 'Y'),
(13, 28, '2018-02-19', '0000-00-00', 36, 2, '₱15,000', '7', 'PERMANNET', 'Y'),
(14, 29, '2023-02-05', '0000-00-00', 17, 2, '₱12,500', 'SG-09-2', 'PERMANENT', 'Y'),
(15, 30, '2023-12-08', '2023-02-05', 37, 2, '₱34,000', '14-1', 'PERMANENT', 'Y'),
(16, 30, '2020-02-05', '0000-00-00', 38, 2, '19,000', '10-1', 'PERMANENT', 'Y'),
(17, 31, '2020-02-05', '2007-02-25', 39, 2, '28,000', 'N/A', 'PERMANENT', 'Y'),
(18, 31, '2005-02-05', '0000-00-00', 40, 6, '25,000', 'N/A', 'CONTRACTUAL', 'N'),
(19, 32, '2023-06-15', '2023-05-08', 15, 7, '₱27,000', '11', 'REGULAR', 'Y'),
(20, 32, '2022-12-05', '2022-05-08', 15, 7, '₱25,000', '11', 'REGULAR', 'Y'),
(21, 32, '2020-02-05', '0000-00-00', 15, 7, '20,0000', '11', 'REGULAR', 'Y'),
(22, 33, '2022-05-25', '0000-00-00', 41, 2, '20,000', 'SG-8', 'PERMANENT', 'Y'),
(23, 37, '2024-02-01', '0000-00-00', 42, 2, '25,000', 'SG-8', 'PERMANENT', 'Y'),
(24, 38, '2023-02-05', '0000-00-00', 43, 4, '29,000', 'SG-8', 'PERMANENT', 'Y'),
(25, 20, '2022-02-05', '0000-00-00', 43, 4, '23,000', 'SG-7', 'PERMANENT', 'Y'),
(26, 39, '0000-00-00', '0000-00-00', 1, 1, 'N/A', 'N/A', 'N/A', 'N'),
(27, 39, '0000-00-00', '0000-00-00', 1, 1, 'N/A', 'N/A', 'N/A', 'N'),
(28, 39, '0000-00-00', '0000-00-00', 1, 1, 'N/A', 'N/A', 'N/A', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `zipcodes`
--

CREATE TABLE `zipcodes` (
  `zipcode_id` int(11) NOT NULL,
  `citymunicipality_id` int(11) NOT NULL,
  `zipcode_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zipcodes`
--

INSERT INTO `zipcodes` (`zipcode_id`, `citymunicipality_id`, `zipcode_no`) VALUES
(1, 3, 4501),
(2, 6, 4500),
(3, 101, 4706),
(4, 8, 4504),
(5, 35, 4433),
(6, 70, 4801),
(7, 19, 4608),
(8, 85, 5419),
(9, 89, 5400),
(10, 14, 4506),
(11, 114, 4700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`barangay_id`),
  ADD KEY `citymunicipality_id` (`citymunicipality_id`);

--
-- Indexes for table `basiced_degree_course`
--
ALTER TABLE `basiced_degree_course`
  ADD PRIMARY KEY (`bdc_id`);

--
-- Indexes for table `bloodtype`
--
ALTER TABLE `bloodtype`
  ADD PRIMARY KEY (`bloodtype_id`);

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`child_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `city_municipality`
--
ALTER TABLE `city_municipality`
  ADD PRIMARY KEY (`citymunicipality_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `civil_services`
--
ALTER TABLE `civil_services`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `cs_eligibility`
--
ALTER TABLE `cs_eligibility`
  ADD PRIMARY KEY (`cseligibility_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `cs_id` (`cs_id`);

--
-- Indexes for table `dept_agency_office_co`
--
ALTER TABLE `dept_agency_office_co`
  ADD PRIMARY KEY (`daoc_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`educ_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `bdc_id` (`bdc_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  ADD PRIMARY KEY (`emp_add_id`),
  ADD KEY `radd_zipcode_id` (`zipcode_id`),
  ADD KEY `radd_province_id` (`province_id`),
  ADD KEY `radd_citymunicipality_id` (`citymunicipality_id`),
  ADD KEY `radd_barangay_id` (`barangay_id`),
  ADD KEY `radd_subdivisionvillage_id` (`subdivisionvillage_id`),
  ADD KEY `radd_street_id` (`street_id`),
  ADD KEY `radd_houseblocklot_id` (`houseblocklot_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`emp_cont_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`emp_dets_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `citizenship_country_id` (`citizenship_country`),
  ADD KEY `bloodtype_id` (`bloodtype_id`);

--
-- Indexes for table `employee_numbers`
--
ALTER TABLE `employee_numbers`
  ADD PRIMARY KEY (`emp_no_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employer_business`
--
ALTER TABLE `employer_business`
  ADD PRIMARY KEY (`employer_business_id`);

--
-- Indexes for table `government_id`
--
ALTER TABLE `government_id`
  ADD PRIMARY KEY (`govt_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `house_block_lot`
--
ALTER TABLE `house_block_lot`
  ADD PRIMARY KEY (`houseblocklot_id`);

--
-- Indexes for table `ld_titles`
--
ALTER TABLE `ld_titles`
  ADD PRIMARY KEY (`ld_title_id`);

--
-- Indexes for table `learning_development`
--
ALTER TABLE `learning_development`
  ADD PRIMARY KEY (`ld_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `ld_title_id` (`ld_title_id`),
  ADD KEY `sponsor_id` (`sponsor_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `nonacademic_recognition`
--
ALTER TABLE `nonacademic_recognition`
  ADD PRIMARY KEY (`nar_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`occupation_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parent_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `pds_references`
--
ALTER TABLE `pds_references`
  ADD PRIMARY KEY (`ref_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`pi_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `pii_birthplace` (`pii_birthplace`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `citizenship_country_id` (`citizenship_country_id`),
  ADD KEY `radd_zipcode_id` (`radd_zipcode_id`),
  ADD KEY `radd_province_id` (`radd_province_id`),
  ADD KEY `radd_citymunicipality_id` (`radd_citymunicipality_id`),
  ADD KEY `radd_barangay_id` (`radd_barangay_id`),
  ADD KEY `radd_subdivisionvillage_id` (`radd_subdivisionvillage_id`),
  ADD KEY `radd_street_id` (`radd_street_id`),
  ADD KEY `radd_houseblocklot_id` (`radd_houseblocklot_id`),
  ADD KEY `padd_zipcode_id` (`padd_zipcode_id`),
  ADD KEY `padd_province_id` (`padd_province_id`),
  ADD KEY `padd_citymunicipality_id` (`padd_citymunicipality_id`),
  ADD KEY `padd_barangay_id` (`padd_barangay_id`),
  ADD KEY `padd_subdivisionvillage_id` (`padd_subdivisionvillage_id`),
  ADD KEY `padd_street_id` (`padd_street_id`),
  ADD KEY `padd_houseblocklot_id` (`padd_houseblocklot_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `qna`
--
ALTER TABLE `qna`
  ADD PRIMARY KEY (`qna_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `qna_34`
--
ALTER TABLE `qna_34`
  ADD PRIMARY KEY (`qna_34_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `qna_35`
--
ALTER TABLE `qna_35`
  ADD PRIMARY KEY (`qna_35_id`),
  ADD KEY `qna_35_ibfk_1` (`employee_id`);

--
-- Indexes for table `qna_36`
--
ALTER TABLE `qna_36`
  ADD PRIMARY KEY (`qna_36_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `qna_37`
--
ALTER TABLE `qna_37`
  ADD PRIMARY KEY (`qna_37_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `qna_38`
--
ALTER TABLE `qna_38`
  ADD PRIMARY KEY (`qna_38_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `qna_39`
--
ALTER TABLE `qna_39`
  ADD PRIMARY KEY (`qna_39_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `qna_40`
--
ALTER TABLE `qna_40`
  ADD PRIMARY KEY (`qna_40_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `rsso_v`
--
ALTER TABLE `rsso_v`
  ADD PRIMARY KEY (`rsso_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `special_skills_hobbies`
--
ALTER TABLE `special_skills_hobbies`
  ADD PRIMARY KEY (`ssh_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `spouses`
--
ALTER TABLE `spouses`
  ADD PRIMARY KEY (`spouse_id`),
  ADD KEY `occupation_id` (`occupation_id`),
  ADD KEY `employer_business_id` (`employer_business_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `streets`
--
ALTER TABLE `streets`
  ADD PRIMARY KEY (`street_id`);

--
-- Indexes for table `subdivision_village`
--
ALTER TABLE `subdivision_village`
  ADD PRIMARY KEY (`subdivisionvillage_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  ADD PRIMARY KEY (`volwork_id`),
  ADD KEY `voluntary_work_ibfk_1` (`employee_id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`workexp_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `daoc_id` (`daoc_id`);

--
-- Indexes for table `zipcodes`
--
ALTER TABLE `zipcodes`
  ADD PRIMARY KEY (`zipcode_id`),
  ADD KEY `citymunicipality_id` (`citymunicipality_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `barangay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `basiced_degree_course`
--
ALTER TABLE `basiced_degree_course`
  MODIFY `bdc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `bloodtype`
--
ALTER TABLE `bloodtype`
  MODIFY `bloodtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527227;

--
-- AUTO_INCREMENT for table `children`
--
ALTER TABLE `children`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city_municipality`
--
ALTER TABLE `city_municipality`
  MODIFY `citymunicipality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `civil_services`
--
ALTER TABLE `civil_services`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118599;

--
-- AUTO_INCREMENT for table `cs_eligibility`
--
ALTER TABLE `cs_eligibility`
  MODIFY `cseligibility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dept_agency_office_co`
--
ALTER TABLE `dept_agency_office_co`
  MODIFY `daoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `educ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  MODIFY `emp_add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `emp_cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `emp_dets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `employee_numbers`
--
ALTER TABLE `employee_numbers`
  MODIFY `emp_no_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `employer_business`
--
ALTER TABLE `employer_business`
  MODIFY `employer_business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `government_id`
--
ALTER TABLE `government_id`
  MODIFY `govt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `house_block_lot`
--
ALTER TABLE `house_block_lot`
  MODIFY `houseblocklot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56726;

--
-- AUTO_INCREMENT for table `ld_titles`
--
ALTER TABLE `ld_titles`
  MODIFY `ld_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `learning_development`
--
ALTER TABLE `learning_development`
  MODIFY `ld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nonacademic_recognition`
--
ALTER TABLE `nonacademic_recognition`
  MODIFY `nar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `occupation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046177;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pds_references`
--
ALTER TABLE `pds_references`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qna`
--
ALTER TABLE `qna`
  MODIFY `qna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `qna_34`
--
ALTER TABLE `qna_34`
  MODIFY `qna_34_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qna_35`
--
ALTER TABLE `qna_35`
  MODIFY `qna_35_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qna_36`
--
ALTER TABLE `qna_36`
  MODIFY `qna_36_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qna_37`
--
ALTER TABLE `qna_37`
  MODIFY `qna_37_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qna_38`
--
ALTER TABLE `qna_38`
  MODIFY `qna_38_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qna_39`
--
ALTER TABLE `qna_39`
  MODIFY `qna_39_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qna_40`
--
ALTER TABLE `qna_40`
  MODIFY `qna_40_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rsso_v`
--
ALTER TABLE `rsso_v`
  MODIFY `rsso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `special_skills_hobbies`
--
ALTER TABLE `special_skills_hobbies`
  MODIFY `ssh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `sponsor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spouses`
--
ALTER TABLE `spouses`
  MODIFY `spouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `streets`
--
ALTER TABLE `streets`
  MODIFY `street_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subdivision_village`
--
ALTER TABLE `subdivision_village`
  MODIFY `subdivisionvillage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  MODIFY `volwork_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `workexp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `zipcodes`
--
ALTER TABLE `zipcodes`
  MODIFY `zipcode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangays`
--
ALTER TABLE `barangays`
  ADD CONSTRAINT `barangays_ibfk_1` FOREIGN KEY (`citymunicipality_id`) REFERENCES `city_municipality` (`citymunicipality_id`) ON UPDATE CASCADE;

--
-- Constraints for table `children`
--
ALTER TABLE `children`
  ADD CONSTRAINT `children_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `city_municipality`
--
ALTER TABLE `city_municipality`
  ADD CONSTRAINT `city_municipality_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`province_id`) ON UPDATE CASCADE;

--
-- Constraints for table `cs_eligibility`
--
ALTER TABLE `cs_eligibility`
  ADD CONSTRAINT `cs_eligibility_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cs_eligibility_ibfk_2` FOREIGN KEY (`cs_id`) REFERENCES `civil_services` (`cs_id`) ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `education_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `education_ibfk_3` FOREIGN KEY (`bdc_id`) REFERENCES `basiced_degree_course` (`bdc_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  ADD CONSTRAINT `employee_addresses_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD CONSTRAINT `employee_contacts_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD CONSTRAINT `employee_details_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_details_ibfk_2` FOREIGN KEY (`citizenship_country`) REFERENCES `countries` (`country_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_details_ibfk_3` FOREIGN KEY (`bloodtype_id`) REFERENCES `bloodtype` (`bloodtype_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_numbers`
--
ALTER TABLE `employee_numbers`
  ADD CONSTRAINT `employee_numbers_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `government_id`
--
ALTER TABLE `government_id`
  ADD CONSTRAINT `government_id_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `learning_development`
--
ALTER TABLE `learning_development`
  ADD CONSTRAINT `learning_development_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `learning_development_ibfk_2` FOREIGN KEY (`ld_title_id`) REFERENCES `ld_titles` (`ld_title_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `learning_development_ibfk_3` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsors` (`sponsor_id`);

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `nonacademic_recognition`
--
ALTER TABLE `nonacademic_recognition`
  ADD CONSTRAINT `nonacademic_recognition_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `pds_references`
--
ALTER TABLE `pds_references`
  ADD CONSTRAINT `pds_references_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD CONSTRAINT `personal_information_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_10` FOREIGN KEY (`radd_street_id`) REFERENCES `streets` (`street_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_11` FOREIGN KEY (`radd_houseblocklot_id`) REFERENCES `house_block_lot` (`houseblocklot_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_12` FOREIGN KEY (`padd_zipcode_id`) REFERENCES `zipcodes` (`zipcode_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_13` FOREIGN KEY (`padd_province_id`) REFERENCES `provinces` (`province_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_14` FOREIGN KEY (`padd_citymunicipality_id`) REFERENCES `city_municipality` (`citymunicipality_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_15` FOREIGN KEY (`padd_barangay_id`) REFERENCES `barangays` (`barangay_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_16` FOREIGN KEY (`padd_subdivisionvillage_id`) REFERENCES `subdivision_village` (`subdivisionvillage_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_17` FOREIGN KEY (`padd_street_id`) REFERENCES `streets` (`street_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_18` FOREIGN KEY (`padd_houseblocklot_id`) REFERENCES `house_block_lot` (`houseblocklot_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_2` FOREIGN KEY (`pii_birthplace`) REFERENCES `places` (`place_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_4` FOREIGN KEY (`citizenship_country_id`) REFERENCES `countries` (`country_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_5` FOREIGN KEY (`radd_zipcode_id`) REFERENCES `zipcodes` (`zipcode_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_6` FOREIGN KEY (`radd_province_id`) REFERENCES `provinces` (`province_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_7` FOREIGN KEY (`radd_citymunicipality_id`) REFERENCES `city_municipality` (`citymunicipality_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_8` FOREIGN KEY (`radd_barangay_id`) REFERENCES `barangays` (`barangay_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_information_ibfk_9` FOREIGN KEY (`radd_subdivisionvillage_id`) REFERENCES `subdivision_village` (`subdivisionvillage_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna`
--
ALTER TABLE `qna`
  ADD CONSTRAINT `qna_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_34`
--
ALTER TABLE `qna_34`
  ADD CONSTRAINT `qna_34_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_35`
--
ALTER TABLE `qna_35`
  ADD CONSTRAINT `qna_35_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_36`
--
ALTER TABLE `qna_36`
  ADD CONSTRAINT `qna_36_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_37`
--
ALTER TABLE `qna_37`
  ADD CONSTRAINT `qna_37_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_38`
--
ALTER TABLE `qna_38`
  ADD CONSTRAINT `qna_38_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_39`
--
ALTER TABLE `qna_39`
  ADD CONSTRAINT `qna_39_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `qna_40`
--
ALTER TABLE `qna_40`
  ADD CONSTRAINT `qna_40_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `special_skills_hobbies`
--
ALTER TABLE `special_skills_hobbies`
  ADD CONSTRAINT `special_skills_hobbies_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `spouses`
--
ALTER TABLE `spouses`
  ADD CONSTRAINT `spouses_ibfk_1` FOREIGN KEY (`occupation_id`) REFERENCES `occupations` (`occupation_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `spouses_ibfk_2` FOREIGN KEY (`employer_business_id`) REFERENCES `employer_business` (`employer_business_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `spouses_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  ADD CONSTRAINT `voluntary_work_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE;

--
-- Constraints for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `work_experience_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `work_experience_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `work_experience_ibfk_3` FOREIGN KEY (`daoc_id`) REFERENCES `dept_agency_office_co` (`daoc_id`) ON UPDATE CASCADE;

--
-- Constraints for table `zipcodes`
--
ALTER TABLE `zipcodes`
  ADD CONSTRAINT `zipcodes_ibfk_1` FOREIGN KEY (`citymunicipality_id`) REFERENCES `city_municipality` (`citymunicipality_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
