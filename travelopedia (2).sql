-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 12:20 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelopedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cid` int(10) NOT NULL,
  `Cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cid`, `Cname`) VALUES
(1, 'Australia'),
(3, 'France'),
(4, 'Honkong'),
(5, 'Maldives'),
(6, 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `msg` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `firstName`, `lastName`, `email`, `phone`, `msg`) VALUES
(1, 'John', 'Berry', 'john@gmail.com', '9000000000', 'I want to know if vegan food will be available in Australia pckg'),
(6, 'Harry ', 'Singh ', 'harry@example.com', '9888888888', 'Can I get discount if I book for 40 travelers together?'),
(7, 'Kitty', 'Roy', 'kits@example.com', '9999999999', 'Call me asap!');

-- --------------------------------------------------------

--
-- Table structure for table `customise_dom`
--

CREATE TABLE `customise_dom` (
  `tourName` varchar(30) NOT NULL,
  `tourPrice` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customise_dom`
--

INSERT INTO `customise_dom` (`tourName`, `tourPrice`) VALUES
('Flamingo', '10,000'),
('Hind Tours', '5234'),
('Happy Travellers', '10,403'),
('Namaste Tours', '7865'),
('World Around Travellers', '9546');

-- --------------------------------------------------------

--
-- Table structure for table `dombook`
--

CREATE TABLE `dombook` (
  `UserId` int(10) NOT NULL,
  `Pid` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adults` int(30) NOT NULL,
  `children` int(30) NOT NULL,
  `comments` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dombook`
--

INSERT INTO `dombook` (`UserId`, `Pid`, `firstName`, `lastName`, `email`, `phone`, `adults`, `children`, `comments`) VALUES
(10, 1, 'Het ', 'Patel', 'het@example.com', '9000000001', 5, 2, ''),
(18, 5, 'Renne', 'Roy', 'rr23@gmail.com', '9000000001', 6, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `domcategory`
--

CREATE TABLE `domcategory` (
  `Cid` int(3) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `hotel_charge_double` int(10) UNSIGNED NOT NULL,
  `hotel_charge_single` int(11) NOT NULL DEFAULT 0,
  `hotel_charge_for_extra_children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domcategory`
--

INSERT INTO `domcategory` (`Cid`, `Cname`, `hotel_charge_double`, `hotel_charge_single`, `hotel_charge_for_extra_children`) VALUES
(1, 'Goa', 1500, 1000, 200),
(2, 'Gujarat', 1000, 700, 200),
(3, 'Himachal Pradesh', 700, 500, 200),
(4, 'Leh Ladakh', 1200, 800, 200),
(5, 'Maharastra', 1000, 600, 200),
(6, 'Rajasthan', 900, 600, 100);

-- --------------------------------------------------------

--
-- Table structure for table `domcust`
--

CREATE TABLE `domcust` (
  `Dest` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `adults` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domcust`
--

INSERT INTO `domcust` (`Dest`, `Name`, `email`, `phone`, `days`, `adults`, `date`, `price`) VALUES
('Goa', 'Tithi', 'tithi@gmail.com', '9999999999', '5', '2', '2021-08-28', '500000'),
('Maharashtra', 'Het', 'het@example.com', '9000000001', '6', '1', '2021-07-26', '9000');

-- --------------------------------------------------------

--
-- Table structure for table `dompackages`
--

CREATE TABLE `dompackages` (
  `Pid` int(10) NOT NULL,
  `Ctg` int(10) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `Pamt` varchar(50) NOT NULL,
  `Pdetail` varchar(50) NOT NULL,
  `PtourList1` varchar(50) NOT NULL,
  `PtourList2` varchar(50) NOT NULL,
  `PtourList3` varchar(50) NOT NULL,
  `PtourList4` varchar(50) NOT NULL,
  `PtourList5` varchar(30) NOT NULL,
  `Pimg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dompackages`
--

INSERT INTO `dompackages` (`Pid`, `Ctg`, `Pname`, `Pamt`, `Pdetail`, `PtourList1`, `PtourList2`, `PtourList3`, `PtourList4`, `PtourList5`, `Pimg`) VALUES
(1, 1, 'Flamingo Tours', ' 21,000/- ', '4 Days, 3 Nights package', 'Parasailing', 'Wakeboarding', 'Flea Market', 'Wind Surfing', '', 'goa1.jpg'),
(2, 1, 'Happy Travelers', '20,000/-', '4 Days, 3 Nights package', 'DudhSagar Falls', 'National Park', ' Sashyari Spice Farm', 'Jeep Safari', '', 'goa3.jpg'),
(3, 1, 'Hind Tours', '21,000/-', '4 Days, 3 Nights package', ' Club Cubana', 'Night Market', ' Se cathedral', 'Bom Jesus', '', 'goa4.jpg'),
(4, 1, 'Namaste Tours', '19,000/-', '4 Days, 3 Nights package', 'Calangute Beach', 'Museum', 'Candolim Beach', 'Fort Augada', '', 'goa2.jpg'),
(5, 2, 'World around travell', '25,000/-', '4 Days, 3 Nights package', 'Safari', 'Jamjir Fall', 'Museum', 'Resorts', 'Forest Exploration', 'gujarat1.jpg'),
(6, 2, 'Flamingo Tours', ' 32,000/-', '4 Days, 3 Nights package', 'Rann of Kutch', 'Dholavira', ' Mandvi Beach', 'Kutch Sanctuary', ' Prag Mahal Palace', 'gujarat3.jpg'),
(7, 2, 'Happy Travellers', ' 10,000/-', '4 Days, 3 Nights package', 'Somnath Temple', 'Surya Mandir', 'Market', ' Patan Museum', 'Lakshminarayan Temple', 'gujarat2.jpg'),
(8, 2, 'Hind tours', '21,000/-', '4 Days, 3 Nights package', ' Diu Fort', ' Nagao Beach', 'Naida Caves', 'Devka Beach', 'Sunset Point', 'gujarat4.jpg'),
(9, 3, 'Namaste Tours', '21,000/-', '5 Days, 4 Nights package', 'Solang Valley', 'Rohtang pass', 'Beas Kund Trek', 'Hidimba temple', 'Nature Park', 'manali1.jpg'),
(10, 3, 'World around', '20,000/-', '5 Days, 4 Nights package', 'Khajjiar', 'Punchpula', ' Dainkund Peak', 'Kalatop Khaijjar Sanctuary', 'Satdhara Falls', 'hp-4.jpg'),
(11, 3, 'Flamingo', '20,000/-', '5 Days, 4 Nights package', 'Kheerganga Trek', 'Parvati River', 'Kasol Trek', 'Malana', 'Sar Pass Trek', 'hp-1.jpg'),
(12, 3, 'Happy Travellers', '23,000/-', '5 Days, 4 Nights package', 'Chandratal Lake', 'Spliti Vallery Trekking', 'Kunzum Pass', 'Pin Valley Trek', 'Key Monestery', 'hp-2.jpg'),
(13, 4, 'Hind tours', '20,000/-', '4 Days, 3 Nights package', ' Magnetic Hill', 'Pangong Lake', ' Shanti Stupa', 'Leh Palace', '', 'lehladakh1.jpg'),
(14, 4, 'Namaste Tours', ' 22,000/-', '4 Days, 3 Nights package', 'Mountain Bike Ride', ' Trekking in Ladakh', 'Markets', 'Tso Moriri', '', 'lehladakh2.jpg'),
(15, 4, 'World around', ' 15,000/-', '4 Days, 3 Nights package', 'Nubra Valley', 'Diskit Moanstery', 'Camel Safari', ' Yarab tso Lake', '', 'lehladakh3.jpg'),
(16, 4, 'Flamingo Tours', '11,000/-', '4 Days, 3 Nights package', 'Hall of Fame', ' Zanskar Valley', 'SiteSeeing', 'Chadar Trek', '', 'lehladakh4.jpg'),
(17, 5, 'Happy travellers', '18,000/-', '4 Days, 3 Nights package', ' Gateway of India', ' Marine Drive', 'Chowpatty', ' Elephanta Caves', '', 'maharastra2.jpg'),
(18, 5, 'Namaste tours', '20,000/-', '4 Days, 3 Nights package', 'Tamhini Ghat', 'SightSeeing', 'Devkund WaterFall', 'Torna Fort', '', 'maharastra5.jpg'),
(19, 5, 'World around', '20,000/-', '4 Days, 3 Nights package', 'Imagica', 'Shaniwar Wada', ' Aga Khan Palace', 'Nightlife in Pune', '', 'maharastra4.jpg'),
(20, 5, 'Flamingo tours', '21,000/-', '4 Days, 3 Nights package', 'River Rafting', 'Bhira Dam', 'Plus Valley Trek', ' Ghosala Fort', '', 'maharastra3.jpg'),
(21, 6, 'Happy travellers', '21,000/-', '4 Days, 3 Nights package', 'Amer Fort', 'Jantar Mantar', 'Jal Mahal', 'Nahargarh Fort', '', 'rajasthan-1.jpg'),
(22, 6, 'Hind tours', '22,000/-', '4 Days, 3 Nights package', 'Lake Pichola', 'City Palace', 'Saheliyon-ki-bali', ' Monsoon Palace', '', 'rajasthan-2.jpg'),
(23, 6, 'Namaste tours', '21,000/-', '4 Days, 3 Nights package', 'Mehrangarh Fort', 'Umaid Bhawan Palace', 'Mandore Garden', 'Sardar Market', '', 'rajasthan-3.jpg'),
(24, 6, 'World around', '22,000/-', '4 Days, 3 Nights package', 'National Park', 'Ranthambore Fort', 'Resort', 'Trinetra Ganesh Temple', '', 'rajasthan-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `intbook`
--

CREATE TABLE `intbook` (
  `UserId` int(50) NOT NULL,
  `Pid` int(20) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adults` int(10) NOT NULL,
  `children` int(10) NOT NULL,
  `comments` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intbook`
--

INSERT INTO `intbook` (`UserId`, `Pid`, `firstName`, `lastName`, `email`, `phone`, `adults`, `children`, `comments`) VALUES
(16, 13, 'Kaya', 'Pitt', 'kaya23@example.com', '9000000001', 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `intcust`
--

CREATE TABLE `intcust` (
  `Dest` varchar(15) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `days` varchar(15) NOT NULL,
  `adults` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intcust`
--

INSERT INTO `intcust` (`Dest`, `Name`, `email`, `phone`, `days`, `adults`, `date`, `price`) VALUES
('France', 'Ricky', 'ricky@gmail.com', '9000000001', '7', '1', '2021-11-21', '1680000');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `Pid` int(10) NOT NULL,
  `Ctg` int(10) NOT NULL,
  `Pname` varchar(50) NOT NULL,
  `Pamt` varchar(10) NOT NULL,
  `Pdetail` varchar(50) NOT NULL,
  `PtourList1` varchar(100) NOT NULL,
  `PtourList2` varchar(100) NOT NULL,
  `PtourList3` varchar(100) NOT NULL,
  `PtourList4` varchar(100) NOT NULL,
  `PtourList5` varchar(30) NOT NULL,
  `Pimg` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`Pid`, `Ctg`, `Pname`, `Pamt`, `Pdetail`, `PtourList1`, `PtourList2`, `PtourList3`, `PtourList4`, `PtourList5`, `Pimg`) VALUES
(1, 1, 'Flamingo Tours', '80,000', '5 Days, 4 Nights package', 'Opera House', 'Harbour Bridge', 'Bondi Beach', 'Port Jackson Bay', 'Royal Botanic Garden ', 'australia1.jpg'),
(2, 1, 'Happy Tours', '72,000', '5 Days, 4 Nights package', 'National Park', 'Remarkable rocks', 'Vivonne Bay', 'Raptor Domain', 'Sahara Adventure Center', 'australia2.jpg'),
(3, 1, 'Namaste Tours', '71,000', '5 Days, 4 Nights package', 'Esplanade fitzroy', 'Skyrail rainforest', 'Cabelway', 'Kuranda', 'Fitzroy Island', 'australia3.jpg'),
(4, 1, 'World Tours', '82,000', '5 Days,  4 Nights package', 'Great Ocean Road', 'Eureka skydeck', 'City Tour', 'Botanic Garden', 'Queen Victoria Market', 'australia8.jpg'),
(5, 2, 'Flamingo Tours', '50,000', '4 Days, 3 Nights package', 'Burj Khalifa', 'Dessert Safari', 'Burj Al Arab', 'Dubai Mall', '', 'dubai-1.jpg'),
(6, 2, 'Happy Tours', '45,000', '4 Days, 3 Nights package', 'Ferrari World', 'Grand Mosque', 'Emirates palace', 'Corniche roads', '', 'dubai-4.jpg'),
(7, 2, 'Namaste Tours', '55,000', '4 Days, 3 Nights package', 'The palm-Jumeriah', 'Beach Club', 'Al fardh', ' Aquanventure beach', '', 'dubai-9.jpg'),
(8, 2, 'World Tours', '46,000', '4 Days, 3 Nights package', 'Museum', 'Aquarium', 'Montazah Parks', ' Al manzar Beach', '', 'dubai-10.jpg'),
(9, 3, 'Flamingo Tours', '75,000', '5 Days, 4 Nights package', 'Promenade', 'Musee matisse', 'Castle of nice', 'Castle Hill', '', 'france-7.jpg'),
(10, 3, 'Happy Tours', '80,000', '5 Days, 4 Nights package', 'Eiffel Tower', 'Louvre Museum', 'Cathedrale norte-dame de paris', 'Arc de triomphe', '', 'france-1.jpg'),
(11, 3, 'Namaste Tours', '70,000', '5 Days,  4 Nights package', 'Promenad de la croisette', ' Lerins island', 'Pampelinne', 'Palasis des festivels', '', 'france0.jpg'),
(12, 3, 'World Tours', '72,000', '5 Days, 4 Nights package', 'Musee Picasso', 'Cape d\'antibes', 'Fort Carre', ' Plage de la garoupe', '', 'france-6.jpg'),
(13, 4, 'Flamingo Tours', '40,000', '4 Days, 3 Nights package', 'Asian Animals Safari', 'Thrilling Rides', 'Ocean Theatre', 'Sky Gondola', '', 'honkong6.jpg'),
(14, 4, 'Happy Tours', '41,000', '4 Days, 3 Nights package', 'City Tour', 'Inspiration lake', 'Disney Land', 'Princess castles', '', 'honkong1.jpg'),
(15, 4, 'Namaste Tours', '45,000', '4 Days,  3 Nights package', 'Star Ferry', 'Victoria Harbour', 'Avenue of stars', ' Sky observation deck', '', 'honkong3.jpg'),
(16, 4, 'World Tours.', '38,000', '4 Days, 3 Nights package', 'Big buddha', 'Nging ping 360', 'Cheung chau', ' Hall of buddhas', '', 'honkong5.jpg'),
(17, 5, 'Flamingo Tours', '90,000', '5 Days, 4 Nights package', 'Sea of stars', 'Faarrufushi', 'Ifuru', 'Private beach Resort', '', 'maldives-5.jpg'),
(18, 5, 'Happy Tours', '94,000', '5 Days, 4 Nights package', 'Underwater Diving', 'Water sports', 'Chill Resorts', 'Beach activities', '', 'maldives2.jpg'),
(19, 5, 'Namaste Tours', '91,000', '4 Days,  3 Nights package', 'Olhuveli', 'Kunahandhoo', 'Medhoo', 'Fornadhoo', '', 'maldives-4.jpg'),
(20, 5, 'World Tours', '1,00,000', '4 Days, 3 Nights package', 'Hulhule Island', 'Artificial beach', 'Male', 'Villingili beach', '', 'maldives-1.jpg'),
(21, 6, 'Flamingo Tours', '69,000', '5 Days, 4 Nights package', ' Machlear\'s Beach', 'Cape of good hope', 'Lion\'s head', 'Boulder\'s Beach', 'Table Mountain National Park', 'south africa1.jpeg'),
(22, 6, 'Happy Tours', '62,000', '5 Days, 4 Nights package', 'Kruger National Park', 'Timbavti reserve', 'Lake panic', 'Sabi sands reserve', 'Mala Mala Game Reserve', 'south africa2.jpeg'),
(23, 6, 'Namaste Tours', '66,000', '5 Days,  4 Nights package', 'Gold Reef City', 'WeOriginate', 'Montecasino', 'ApartHeid Museum', 'Craddle of humandkind', 'south africa3.jpeg'),
(24, 6, 'World Tours', '60,000', '5 Days, 4 Nights package', 'Cango Caves', 'Swartberg pass', 'Birds of eden', 'Outeniqua mountains', 'Robberg', 'south africa4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `userType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `userType`) VALUES
(1, 'Khushi', '9654', 'admin'),
(24, 'Het04', '0000', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dombook`
--
ALTER TABLE `dombook`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `domcategory`
--
ALTER TABLE `domcategory`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `dompackages`
--
ALTER TABLE `dompackages`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `intbook`
--
ALTER TABLE `intbook`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dombook`
--
ALTER TABLE `dombook`
  MODIFY `UserId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `domcategory`
--
ALTER TABLE `domcategory`
  MODIFY `Cid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dompackages`
--
ALTER TABLE `dompackages`
  MODIFY `Pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `intbook`
--
ALTER TABLE `intbook`
  MODIFY `UserId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `Pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
