-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 05 Décembre 2014 à 05:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `antiebola`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `origin` int(11) NOT NULL,
  `person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `health`
--

CREATE TABLE IF NOT EXISTS `health` (
  `id_health` int(11) NOT NULL,
  `vaccin` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=207 ;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id_country`, `country`) VALUES
(2, 'Afghanistan'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Antigua and Barbuda'),
(8, 'Argentina'),
(9, 'Armenia'),
(10, 'Aruba'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Azerbaijan'),
(14, 'Bahamas, The'),
(15, 'Bahrain'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bhutan'),
(23, 'Bolivia'),
(24, 'Bosnia and Herzegovina'),
(25, 'Botswana'),
(26, 'Brazil'),
(27, 'Brunei '),
(28, 'Bulgaria'),
(29, 'Burkina Faso'),
(30, 'Burma'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Central African Republic'),
(37, 'Chad'),
(38, 'Chile'),
(39, 'China'),
(40, 'Colombia'),
(41, 'Comoros'),
(42, 'Congo, Democratic Republic of the'),
(43, 'Congo, Republic of the'),
(44, 'Costa Rica'),
(45, 'Cote d Ivoire'),
(46, 'Croatia'),
(47, 'Cuba'),
(48, 'Curacao'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Republic'),
(55, 'East Timor (see Timor-Leste)'),
(56, 'Ecuador'),
(57, 'Egypt'),
(58, 'El Salvador'),
(59, 'Equatorial Guinea'),
(60, 'Eritrea'),
(61, 'Estonia'),
(62, 'Ethiopia'),
(63, 'Fiji'),
(64, 'Finland'),
(65, 'France'),
(66, 'Gabon'),
(67, 'Gambia, The'),
(68, 'Georgia'),
(69, 'Germany'),
(70, 'Ghana'),
(71, 'Greece'),
(72, 'Grenada'),
(73, 'Guatemala'),
(74, 'Guinea'),
(75, 'Guinea-Bissau'),
(76, 'Guyana'),
(77, 'Haiti'),
(78, 'Holy See'),
(79, 'Honduras'),
(80, 'Hong Kong'),
(81, 'Hungary'),
(82, 'Iceland'),
(83, 'India'),
(84, 'Indonesia'),
(85, 'Iran'),
(86, 'Iraq'),
(87, 'Ireland'),
(88, 'Israel'),
(89, 'Italy'),
(90, 'Jamaica'),
(91, 'Japan'),
(92, 'Jordan'),
(93, 'Kazakhstan'),
(94, 'Kenya'),
(95, 'Kiribati'),
(96, 'Korea, North'),
(97, 'Korea, South'),
(98, 'Kosovo'),
(99, 'Kuwait'),
(100, 'Kyrgyzstan'),
(101, 'Laos'),
(102, 'Latvia'),
(103, 'Lebanon'),
(104, 'Lesotho'),
(105, 'Liberia'),
(106, 'Libya'),
(107, 'Liechtenstein'),
(108, 'Lithuania'),
(109, 'Luxembourg'),
(110, 'Macau'),
(111, 'Macedonia'),
(112, 'Madagascar'),
(113, 'Malawi'),
(114, 'Malaysia'),
(115, 'Maldives'),
(116, 'Mali'),
(117, 'Malta'),
(118, 'Marshall Islands'),
(119, 'Mauritania'),
(120, 'Mauritius'),
(121, 'Mexico'),
(122, 'Micronesia'),
(123, 'Moldova'),
(124, 'Monaco'),
(125, 'Mongolia'),
(126, 'Montenegro'),
(127, 'Morocco'),
(128, 'Mozambique'),
(129, 'Namibia'),
(130, 'Nauru'),
(131, 'Nepal'),
(132, 'Netherlands'),
(133, 'Netherlands Antilles'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Niger'),
(137, 'Nigeria'),
(138, 'North Korea'),
(139, 'Norway'),
(140, 'Oman'),
(141, 'Pakistan'),
(142, 'Palau'),
(143, 'Palestinian Territories'),
(144, 'Panama'),
(145, 'Papua New Guinea'),
(146, 'Paraguay'),
(147, 'Peru'),
(148, 'Philippines'),
(149, 'Poland'),
(150, 'Portugal'),
(151, 'Qatar'),
(152, 'Romania'),
(153, 'Russia'),
(154, 'Rwanda'),
(155, 'Saint Kitts and Nevis'),
(156, 'Saint Lucia'),
(157, 'Saint Vincent and the Grenadines'),
(158, 'Samoa '),
(159, 'San Marino'),
(160, 'Sao Tome and Principe'),
(161, 'Saudi Arabia'),
(162, 'Senegal'),
(163, 'Serbia'),
(164, 'Seychelles'),
(165, 'Sierra Leone'),
(166, 'Singapore'),
(167, 'Sint Maarten'),
(168, 'Slovakia'),
(169, 'Slovenia'),
(170, 'Solomon Islands'),
(171, 'Somalia'),
(172, 'South Africa'),
(173, 'South Korea'),
(174, 'South Sudan'),
(175, 'Spain '),
(176, 'Sri Lanka'),
(177, 'Sudan'),
(178, 'Suriname'),
(179, 'Swaziland '),
(180, 'Sweden'),
(181, 'Switzerland'),
(182, 'Syria'),
(183, 'Taiwan'),
(184, 'Tajikistan'),
(185, 'Tanzania'),
(186, 'Thailand '),
(187, 'Timor-Leste'),
(188, 'Togo'),
(189, 'Tonga'),
(190, 'Trinidad and Tobago'),
(191, 'Tunisia'),
(192, 'Turkey'),
(193, 'Turkmenistan'),
(194, 'Tuvalu'),
(195, 'Uganda'),
(196, 'Ukraine'),
(197, 'United Arab Emirates'),
(198, 'United Kingdom'),
(199, 'Uruguay'),
(200, 'Uzbekistan'),
(201, 'Vanuatu'),
(202, 'Venezuela'),
(203, 'Vietnam'),
(204, 'Yemen'),
(205, 'Zambia'),
(206, 'Zimbabwe ');

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id_person` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `mother` int(11) NOT NULL,
  `father` int(11) NOT NULL,
  `vaccin` int(11) NOT NULL,
  `origin` int(11) NOT NULL,
  `dst` int(11) NOT NULL,
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Contenu de la table `person`
--

INSERT INTO `person` (`id_person`, `first_name`, `last_name`, `mother`, `father`, `vaccin`, `origin`, `dst`) VALUES
(1, 'sm', '14', 1, 1, 0, 42, 62),
(2, 'truc', 'ovila', 0, 0, 0, 205, 67),
(3, 'pouf', 'alexandra', 0, 0, 0, 64, 64),
(4, 'bidule', 'phil', 2, 0, 0, 45, 69),
(5, 'test', 'test', 0, 0, 0, 2, 1),
(6, 'herden', 'kar', 0, 0, 0, 65, 67);

-- --------------------------------------------------------

--
-- Structure de la table `vaccin`
--

CREATE TABLE IF NOT EXISTS `vaccin` (
  `id_vaccin` int(11) NOT NULL,
  `virus` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
  `id_zone` int(11) NOT NULL,
  `danger` int(11) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
