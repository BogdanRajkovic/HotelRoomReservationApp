-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2019 at 07:18 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rezervacijahotelskihsoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `HotelID` int(11) NOT NULL,
  `NazivHotela` varchar(30) NOT NULL,
  `AdresaHotela` varchar(50) NOT NULL,
  `Drzava` varchar(50) NOT NULL,
  `Grad` varchar(100) NOT NULL,
  `BrojZvezdica` int(11) NOT NULL,
  `CenaPoNocenju` double NOT NULL,
  `Slike` varchar(4000) NOT NULL,
  `Opis` varchar(4000) NOT NULL,
  `DatumModifikacije` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`HotelID`, `NazivHotela`, `AdresaHotela`, `Drzava`, `Grad`, `BrojZvezdica`, `CenaPoNocenju`, `Slike`, `Opis`, `DatumModifikacije`) VALUES
(1, 'Crowne Plaza ', 'Vladimira Popovica 11', 'Serbia', 'Belgrade', 4, 150, 'img/CrownePlaza/SlikeHotela/slikahotela1.jpg;img/CrownePlaza/SlikeHotela/slikahotela2.jpg;img/CrownePlaza/SlikeHotela/slikahotela3.jpg;img/CrownePlaza/SlikeHotela/slikahotela4.jpg;', 'Luksuzni hotel Crowne Plaza Belgrade nalazi se na idealnoj lokaciji u centru poslovne ?etvrti na Novom Beogradu. Do centra grada može se sti?i za 5 minuta vožnje, a 2 tržna centra nalaze se na svega par koraka. Gostima su na raspolaganju spa centar, sala za fitnes, kao i zatvoreni bazen. Hotel poseduje i 2 restorana u kojima gosti mogu uživati u jelima lokalne kuhinje.\r\n\r\nNedavno ure?ene, klimatizovane sobe imaju radni sto, stolicu, mini-bar i flat-screen TV. Sopstveno kupatilo opremljeno je tušem i besplatnim toaletnim priborom. Besplatan beži?ni internet dostupan je u celom hotelu.', '2019-09-24'),
(2, 'Hilton', 'Kralja Milana 3', 'Serbia', 'Belgrade', 4, 110, 'img/Hilton/SlikeHotela/SlikaHotela1.jpg;img/Hilton/SlikeHotela/SlikaHotela2.jpg;img/Hilton/SlikeHotela/SlikaHotela3.jpg;img/Hilton/SlikeHotela/SlikaHotela4.jpg', 'Hotel Hilton Belgrade nudi krovni bar i restoran sa pogledom na grad, a nalazi se na peša?koj udaljenosti od Trga Slavija i Hrama Sv. Save. Living Well Health Club nudi spa i velnes sadržaje, a gostima su na raspolaganju termalno kupatilo, sauna i tursko kupatilo.\r\n\r\nProstrane sobe poseduju klima-ure?aj, sto i flat-screen TV sa kablovskim kanalima. Svaka smeštajna jedinica nudi kuvalo i frižider, dok pojedine obuhvataju i ?ajnu kuhinju. Sopstvena kupatila sadrže tuš (bez kabine) i fen za kosu. Besplatan toaletni pribor je obezbe?en.', '2019-09-24'),
(3, 'Holiday Inn', 'Spanskih boraca 74', 'Serbia', 'Belgrade ', 4, 100, 'img/HolidayInn/SlikeHotela/SlikeHotela1.jpg;img/HolidayInn/SlikeHotela/SlikeHotela2.jpg;img/HolidayInn/SlikeHotela/SlikeHotela3.jpg;img/HolidayInn/SlikeHotela/SlikeHotela4.jpg;img/HolidayInn/SlikeHotela/SlikeHotela5.jpg;', 'Holiday Inn u Beogradu ima 4 zvezdice, a smešten je na povoljnom položaju, u najzna?ajnijoj poslovnoj zoni Novog Beograda. Autoput je udaljen 500 metara, a Me?unarodni aerodrom Nikola Tesla nalazi se na 14 km. Ispred objekta vam je na raspolaganju besplatan parking.\r\n\r\nProstrane i udobne sobe krasi elegantan dekor sa zemljanim i jarkim bojama. Smeštajne jedinice uklju?uju besplatan beži?ni internet i flat-screen TV sa kablovskim kanalima. Hotel je direktno povezan sa kongresnim centrom Belexpocentar i predstavlja idealno mesto za održavanje konferencija i seminara.', '2019-09-25'),
(4, 'Metropol Palace', 'Bulevar kralja Aleksandra 69', 'Serbia', 'Belgrade', 5, 125, 'img/Metropol/SlikeHotela/metropol1.jpg;img/Metropol/SlikeHotela/metropol2.jpg;img/Metropol/SlikeHotela/metropol3.jpg;img/Metropol/SlikeHotela/metropol4.jpg;img/Metropol/SlikeHotela/metropol5.jpg;', 'Hotel Metropol Palace, iz hotelskog lanca A Luxury Collection, smešten je na svega 400 metara od srca Beograda. U ponudi ima 2 restorana i elegantno ure?ene smeštajne jedinice sa besplatnim beži?nim internetom. Pored toga nudi spa centar sa 25-metarskim bazenom. Hotel je renoviran 2012. godine.\r\n\r\nHotelski spa centar zauzima površinu ve?u od 1.200 m². Uklju?uje saunu, hidromasažnu kadu, parno kupatilo, teretanu, salu za vežbanje i prostor za opuštanje.\r\n\r\nSve klimatizovane i moderno ure?ene smeštajne jedinice poseduju LCD TV sa satelitskim kanalima, sef i mini-bar. Pored toga sadrže sopstveno kupatilo sa fenom za kosu.', '2019-09-25'),
(6, 'Moskva', 'Terazije 20', 'Serbia', 'Belgrade', 4, 90, 'img/Moskva/SlikeHotela/SlikaHotela1.jpg;img/Moskva/SlikeHotela/SlikaHotela2.jpg;img/Moskva/SlikeHotela/SlikaHotela3.jpg;img/Moskva/SlikeHotela/SlikaHotela4.jpg;img/Moskva/SlikeHotela/SlikaHotela5.jpg;', 'Hotel Moskva smešten je u zgradi izgra?enoj u ampir stilu, koja predstavlja gradsku znamenitost. Gosti mogu besplatno i neograni?eno koristiti velnes i spa centar, kao i teretanu. Hotel se nalazi na idealnoj lokaciji u glavnoj beogradskoj ulici. Poseduje à-la-carte restoran i ?uvenu poslasti?arnicu. U elegantnim i klimatizovanim smeštajnim jedinicama obezbe?en je besplatan beži?ni internet.\r\n\r\nSve sobe i apartmani tipa \"suite\" imaju tradicionalno ure?en enterijer i uklju?uju moderne pogodnosti. Sadrže mini-bar i flat-screen TV sa satelitskim kanalima. Kupatila su opremljena tušem i besplatnim toaletnim priborom.', '2019-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `hotelskasoba`
--

CREATE TABLE `hotelskasoba` (
  `SobaID` int(11) NOT NULL,
  `BrojSoba` int(11) NOT NULL,
  `CenaPoNocenju` double NOT NULL,
  `Slike` varchar(4000) NOT NULL,
  `DatumModifikacije` date NOT NULL,
  `HotelID` int(11) NOT NULL,
  `TipHotelskeSobeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelskasoba`
--

INSERT INTO `hotelskasoba` (`SobaID`, `BrojSoba`, `CenaPoNocenju`, `Slike`, `DatumModifikacije`, `HotelID`, `TipHotelskeSobeID`) VALUES
(1, 20, 179.99, 'img\\CrownePlaza\\KingRoom\\KingRoom1.jpg;img\\CrownePlaza\\KingRoom\\KingRoom2.jpg;', '2019-10-23', 1, 1),
(2, 35, 150, 'img\\CrownePlaza\\TwinRoom\\twinRoom1.jpg;img\\CrownePlaza\\TwinRoom\\twinRoom2.jpg;', '2019-10-23', 1, 2),
(3, 15, 135, 'img\\Hilton\\KingRoom\\KingRoom1.jpg;', '2019-10-23', 2, 1),
(4, 20, 110, 'img\\Hilton\\TwinRoom\\TwinRoom1.jpg;', '2019-10-23', 2, 2),
(5, 10, 120, 'img\\HolidayInn\\KingRoom\\KingRoom1.jpg;img\\HolidayInn\\KingRoom\\KingRoom2.jpg;', '2019-10-23', 3, 1),
(6, 20, 100, 'img\\HolidayInn\\TwinRoom\\TwinRoom1.jpg;img\\HolidayInn\\TwinRoom\\TwinRoom2.jpg', '2019-10-23', 3, 2),
(7, 23, 145, 'img\\Metropol\\KingRoom\\KingRoom1.jpg;img\\Metropol\\KingRoom\\KingRoom2.jpg;', '2019-10-23', 4, 1),
(8, 10, 125, 'img\\Metropol\\TwinRoom\\TwinRoom1.jpg;img\\Metropol\\TwinRoom\\TwinRoom2.jpg', '2019-10-23', 4, 2),
(9, 15, 90, 'img\\Moskva\\SingleRoom\\SingleRoom1.jpg;img\\Moskva\\SingleRoom\\SingleRoom2.jpg;', '2019-10-23', 6, 3),
(10, 20, 140, 'img\\Moskva\\DoubleRoom\\DoubleRoom1.jpg;img\\Moskva\\DoubleRoom\\DoubleRoom2.jpg;', '2019-10-23', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kreditnakartica`
--

CREATE TABLE `kreditnakartica` (
  `KarticaID` int(11) NOT NULL,
  `TipKreditneKartice` varchar(10) NOT NULL,
  `BrojKreditneKartice` varchar(16) NOT NULL,
  `DatumIsteka` date NOT NULL,
  `SigurnosniKod` varchar(3) NOT NULL,
  `DatumModifikacije` date NOT NULL,
  `OsobaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `OsobaID` int(11) NOT NULL,
  `Ime` varchar(30) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `Telefon` varchar(50) NOT NULL,
  `Drzava` varchar(50) NOT NULL,
  `Grad` varchar(50) NOT NULL,
  `AdresaStanovanja` varchar(50) NOT NULL,
  `MailAdresa` varchar(100) NOT NULL,
  `KorisnickoIme` varchar(30) NOT NULL,
  `Sifra` varchar(30) NOT NULL,
  `Poeni` double NOT NULL,
  `IsManager` bit(1) NOT NULL,
  `IsAdmin` bit(1) NOT NULL,
  `DatumModifikacije` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`OsobaID`, `Ime`, `Prezime`, `Telefon`, `Drzava`, `Grad`, `AdresaStanovanja`, `MailAdresa`, `KorisnickoIme`, `Sifra`, `Poeni`, `IsManager`, `IsAdmin`, `DatumModifikacije`) VALUES
(2, 'Bogdan', 'Rajkovic', '0631848', 'Srbija', 'Beograd', 'Buyl oslolo 3044', 'bogdan@gmail.com', 'BogBog', 'Bogdan', 0, b'0', b'0', '2019-09-23'),
(4, 'Bogdan', 'Rajkovic', '+436502646367', 'Serbia', 'Belgrade', 'Bulevar oslobodjenja 303', 'bogdanrajkovic96@gmail.com', 'Bogdan Rajkovic', '123', 0, b'0', b'0', '2019-09-23'),
(5, 'Zika', 'Peric', '063194575', 'Hrvatska', 'Osjek', 'Mirovica Petra 54', 'ZikaPeric@gmail.com', 'ZaikZika', 'zikaOsjek123', 0, b'0', b'0', '2019-09-23'),
(6, 'Vlada', 'Vuksic', '+436502646367', 'Austria', 'Vienna', 'Erlaaer Platz 1/1/1103, Flat', 'VladaVu@gmail.com', 'VladaVuk', 'Vlada', 0, b'0', b'0', '2019-09-23'),
(11, 'Marija', 'Mari', '1641555', 'Srbija', 'Beograd', 'Beogradska 14', 'mariMarija@gmail.com', 'MariMari', 'Mari123', 0, b'0', b'0', '2019-09-24'),
(12, 'Mirko', 'Vuksic', '+436502646367', 'Austria', 'Vienna', 'Erlaaer Platz 1/1/1103, Flat', 'ZikaPeric@gmail.com', 'Marko Vuksic', '123', 0, b'0', b'0', '2019-09-24'),
(13, 'vlada', 'Rajkovic', '+436502646367', 'Serbia', 'Belgrade', 'Bulevar oslobodjenja 303', 'kibo.boki96@gmail.com', 'Bogdan Rajkovic', '121344', 0, b'0', b'0', '2019-09-24'),
(14, 'mila', 'milic', '12312412412', 'Bosna', 'trebinje', 'trwbidhd 123123', 'mila@gmial.com', 'mila', '123', 0, b'0', b'0', '2019-09-24'),
(16, 'proba', 'probic', '123124124', 'probq', 'proba', 'proba', 'proba@gmail.com', 'proba', 'proba1', 0, b'0', b'0', '2019-09-24'),
(17, 'Denis', 'Redza', '1564156', 'Srbija', 'Beograd', 'Bilecka 43', 'denisdenis@gmail.com', 'denis95', 'denis123', 0, b'0', b'0', '2019-09-24'),
(18, 'Bogdan', 'proba', '331232', 'Spalnije', 'barsa', '12323', 'bogdanrajkovic96@gmail.com', 'proba', 'proba1', 0, b'0', b'0', '2019-09-24'),
(19, 'da', 'da', '063/19154454', 'Serbia', 'Belgrade', 'Bulevar oslobodjenja 303', 'bogdanrajkovic96@gmail.com', 'Bogdan Rajkovic', '1231', 0, b'0', b'0', '2019-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `RezervacijaID` int(11) NOT NULL,
  `DatumDolaska` date NOT NULL,
  `DatumOdlaska` date NOT NULL,
  `Odrasli` int(11) NOT NULL,
  `Deca` int(11) NOT NULL,
  `BrojSoba` int(11) NOT NULL,
  `NacinPlacanja` varchar(20) NOT NULL,
  `PlacenaCena` double NOT NULL,
  `DatumRezervacije` date NOT NULL,
  `DatumModifikacije` date NOT NULL,
  `OsobaID` int(11) NOT NULL,
  `HotelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`RezervacijaID`, `DatumDolaska`, `DatumOdlaska`, `Odrasli`, `Deca`, `BrojSoba`, `NacinPlacanja`, `PlacenaCena`, `DatumRezervacije`, `DatumModifikacije`, `OsobaID`, `HotelID`) VALUES
(2, '2019-10-01', '2019-10-10', 2, 0, 1, 'Kartica', 1619.91, '2019-10-28', '2019-10-28', 17, 6),
(3, '2019-10-01', '2019-10-10', 2, 0, 1, 'Kartica', 1619.91, '2019-10-28', '2019-10-28', 17, 6),
(4, '2019-10-01', '2019-10-10', 2, 0, 1, 'Kartica', 1080, '2019-10-28', '2019-10-28', 17, 6),
(5, '2019-10-01', '2019-10-17', 2, 0, 1, 'Kartica', 1440, '2019-10-28', '2019-10-28', 17, 6),
(6, '2019-10-01', '2019-10-10', 2, 0, 1, 'Kartica', 810, '2019-10-28', '2019-10-28', 17, 6),
(7, '2019-10-01', '2019-10-16', 2, 0, 1, 'Kartica', 2699.8500000000004, '2019-10-28', '2019-10-28', 17, 1),
(8, '2019-10-08', '2019-10-10', 2, 0, 1, 'Kartica', 359.98, '2019-10-31', '2019-10-31', 17, 1),
(9, '2019-11-01', '2019-11-05', 2, 0, 1, 'Kartica', 719.96, '2019-11-01', '2019-11-01', 17, 1),
(10, '2019-11-01', '2019-11-27', 2, 0, 1, 'Kartica', 3510, '2019-11-01', '2019-11-01', 17, 2),
(11, '2019-11-01', '2019-11-09', 2, 0, 1, 'Kartica', 1439.92, '2019-11-01', '2019-11-01', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tiphotelskesobe`
--

CREATE TABLE `tiphotelskesobe` (
  `TipHotelskeSobeID` int(11) NOT NULL,
  `NazivTipaHotelskeSobe` varchar(50) NOT NULL,
  `BrojKreveta` int(11) NOT NULL,
  `BrojLezajnihMesta` int(11) NOT NULL,
  `DatumModifikacije` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiphotelskesobe`
--

INSERT INTO `tiphotelskesobe` (`TipHotelskeSobeID`, `NazivTipaHotelskeSobe`, `BrojKreveta`, `BrojLezajnihMesta`, `DatumModifikacije`) VALUES
(1, 'King Room', 1, 2, '2019-09-25'),
(2, 'Twin Room', 2, 2, '2019-09-25'),
(3, 'Single Room', 1, 1, '2019-09-25'),
(4, 'Double Room', 2, 2, '2019-09-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`HotelID`);

--
-- Indexes for table `hotelskasoba`
--
ALTER TABLE `hotelskasoba`
  ADD PRIMARY KEY (`SobaID`),
  ADD KEY `TipHotelskeSobeID` (`TipHotelskeSobeID`),
  ADD KEY `HotelID` (`HotelID`) USING BTREE;

--
-- Indexes for table `kreditnakartica`
--
ALTER TABLE `kreditnakartica`
  ADD PRIMARY KEY (`KarticaID`),
  ADD KEY `OsobaID` (`OsobaID`);

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`OsobaID`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`RezervacijaID`),
  ADD KEY `OsobaID` (`OsobaID`,`HotelID`),
  ADD KEY `HotelID` (`HotelID`);

--
-- Indexes for table `tiphotelskesobe`
--
ALTER TABLE `tiphotelskesobe`
  ADD PRIMARY KEY (`TipHotelskeSobeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `HotelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotelskasoba`
--
ALTER TABLE `hotelskasoba`
  MODIFY `SobaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kreditnakartica`
--
ALTER TABLE `kreditnakartica`
  MODIFY `KarticaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osoba`
--
ALTER TABLE `osoba`
  MODIFY `OsobaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `RezervacijaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tiphotelskesobe`
--
ALTER TABLE `tiphotelskesobe`
  MODIFY `TipHotelskeSobeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotelskasoba`
--
ALTER TABLE `hotelskasoba`
  ADD CONSTRAINT `hotelskasoba_ibfk_1` FOREIGN KEY (`TipHotelskeSobeID`) REFERENCES `tiphotelskesobe` (`TipHotelskeSobeID`),
  ADD CONSTRAINT `hotelskasoba_ibfk_2` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`);

--
-- Constraints for table `kreditnakartica`
--
ALTER TABLE `kreditnakartica`
  ADD CONSTRAINT `kreditnakartica_ibfk_1` FOREIGN KEY (`OsobaID`) REFERENCES `osoba` (`OsobaID`);

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `rezervacija_ibfk_1` FOREIGN KEY (`HotelID`) REFERENCES `hotel` (`HotelID`),
  ADD CONSTRAINT `rezervacija_ibfk_2` FOREIGN KEY (`OsobaID`) REFERENCES `osoba` (`OsobaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
