-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 06:56 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `email`, `password`, `mobile`, `fullname`) VALUES
('abc', 'hicoqoboze@mailinator.com', 'qwe', 6283069142, 'Rohit gutka'),
('yamraj', 'rahul@bharti.com', '111', 9872042013, 'rahul kumar bharti');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryname` varchar(100) NOT NULL,
  `categorydescription` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryname`, `categorydescription`) VALUES
('baby section', 'all the clothes and clothing related to loittle babies are available in this section'),
('clothes', 'all type of clothes like party wear,for ypga ,office wear'),
('grocery', 'flour,rice,soaps,detergents , fruits , green leafy vegetables,pulses, spices,sugar,oil,ghee '),
('kitchen', 'all material related to kitchen and cooking'),
('Shoes ', 'all types of shoes like for running dancing partywear'),
('women wear', 'all the clothes and clothing related to women are available in this section');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `stock` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `subcatid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `price`, `stock`, `discount`, `photo`, `description`, `subcatid`) VALUES
(5, 'bata lemonade', 439, 26, 16, 'photos/2773560a.jpg', 'curta pajama white', 8),
(6, 'sleeveless t-shorts', 769, 88, 37, 'photos/3097230a.jpg', 'Specifications\r\nBrand - Cucumber\r\nType - Tee\r\nFabric - Interlock/kNIT\r\nSleeves - Full \r\nNeck - Round ', 5),
(7, 'Babyhug Full Sleeves Solid Sherwani - Coral', 2300, 33, 22, 'photos/2648158a.jpg', 'Brand - Babyhug\r\nType - Sherwani & Pyjama set\r\nSleeves - Full Sleeves\r\nNeck - Mandarin Collar\r\nBottom Length - Full\r\nClosure - Front Button\r\nOccasion - Ethnic Wear\r\nFit - Regular\r\n\r\nItems Included in Package\r\nOne Sherwani, One Pyjama\r\n\r\nStyling Tip: Wear with matching mojari shoes for a complete ethnic look.\r\n\r\nNote: To confirm sizes please refer to the measurement link available at size chart above. \r\n\r\nMade In: India\r\ne-Code: 0\r\nGovernment Scheme: 0', 7),
(13, 'TASLAR Unisex Baby Flannel Jumpsuit Panda Style ', 1099, 12, 9, 'photos/babypanda1.jpg', 'SIZE: 80cm Fit 4-12month, 90cm Fit 13-18months, 100cm Fit 19-24months.\r\nMATERIAL:Soft Flannel,Make Sure It Is Adorable Comfortable and Breathable, Good Ideal For Spring & Autumn & Winter.\r\nRECOMMEND:Cuddly Animal Design,Not Only Fit For Daily Dress, But Also Is a Great Gift For Festivals Such as Birthdays, Christmas, Cosplay Party.\r\nINSTRUCTIONS: Hand Washing & Machine Washing, Zipper For Easy Diaper Change, The Mission Is To Help Baby Play and Sleep Comfortably.Better To Wash First Before Wear, As Baby Skin Is Quiet Sensitive.', 5),
(14, 'Splash - Baby (Unisex) Winter wear Set ', 295, 13, 15, 'photos/warmer1.jpg', 'Baby (Unisex) Winter wear Set - Upper & Lower.\r\nRound neck,Full Sleeve.\r\nColor - Black, Grey, Off - White.\r\nPack - 2 Product (Upper & Lower)\r\nWinter Wear,Slim Fit.', 5),
(15, 'Brim Hugs and Cuddles Sweater/Winter Jacket', 649, 11, 18, 'photos/frontjacket.jpg', 'Fit Type: Regular Fit\r\nMade up of cotton.\r\nMade with extreme perfection and have passed from tough level of qc.\r\nStuffed with poly wadding\r\nWill be a soft feel for the skin\r\nAvailable in different colours\r\n', 5),
(16, 'Minicult Cotton Baby Pajama ', 579, 5, 27, 'photos/1.jpg', 'Material composition: Cotton\r\nNo of units sold in pack: Combo of 6\r\nMinicult logo printed on the reverse side of the back for product authenticity and branding\r\nThe Product comes in different variations, the one available will be shipped.\r\nProduct features: Smooth breathable fabric, Soft ankle rib, Soft elastic waist for easy day long use', 5),
(17, 'Tinchuk Cotton Sleeveless T-Shirt', 849, 8, 34, 'photos/summer11.jpg', 'Tinchuk Sleeveless T-Shirt Hero Print Set Pack of 12 for Little Rockstar (6 TShirt + 6 Shorts)\r\nCloth :Housary Cotton\r\nNeck - Round Neck\r\nEvergreen for any season and time\r\nStyling Tip: Mix n match this T-Shirt with shorts, sandals and cap.', 6),
(18, 'Ninos Girls  Regular Fit Trousers', 699, 11, 12, 'photos/nino11.jpg', 'Color: Navy Blue\r\n100% Rayon\r\nRegular fit\r\nSquare\r\nCasual wear\r\nMachine wash\r\nElasticated at waist for easy fit\r\nWash care: Wash dark color separately', 19);

-- --------------------------------------------------------

--
-- Table structure for table `product_photo`
--

CREATE TABLE `product_photo` (
  `id` int(10) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `caption` varchar(500) NOT NULL,
  `productid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_photo`
--

INSERT INTO `product_photo` (`id`, `photo`, `caption`, `productid`) VALUES
(2, 'photos/3097230a.jpg', 'qwerty qwerty qwerty qwerty qwerty', 7),
(3, 'photos/huddy.jpg', 'jingle bell', 7),
(4, 'photos/fluffyjacket.jpg', 'merry christmas', 7),
(5, 'photos/combo.jpg', 'combo package', 7),
(6, 'photos/blazer.jpg', 'colorful blazer', 6),
(7, 'photos/leatherjacket.jpg', 'leatherr jacket', 5),
(8, 'photos/babypanda2.jpg', 'product description', 13),
(9, 'photos/babypanda3.jpg', 'all corners', 13),
(10, 'photos/babypanda4.jpg', 'full size', 13),
(11, 'photos/babypanda5.jpg', 'one more', 13),
(12, 'photos/babypanda6.jpg', 'design', 13),
(13, 'photos/warmer2.jpg', 'white color', 14),
(14, 'photos/warmer3.jpg', 'grey', 14),
(15, 'photos/backjacket.jpg', 'backside', 7),
(16, 'photos/backjacket.jpg', 'backside', 15),
(17, 'photos/2.jpg', 'collection', 16),
(18, 'photos/3.jpg', 'collection 2', 16),
(19, 'photos/4.jpg', 'collection 3', 16),
(20, 'photos/6.jpg', 'collection 4', 16),
(21, 'photos/5.jpg', 'collection 5', 16),
(22, 'photos/7.jpg', 'another collection', 16),
(23, 'photos/8.jpg', 'matching combo', 16),
(24, 'photos/9.jpg', 'matching combo 2', 16),
(25, 'photos/summer16.jpg', 'combo', 17),
(26, 'photos/summer15.jpg', 'combo 2', 17),
(27, 'photos/summer14.jpg', 'combo 3', 17),
(28, 'photos/summer13.jpg', 'combo 8', 17),
(29, 'photos/summer12.jpg', 'matching', 17),
(30, 'photos/nino12.jpg', 'left side', 18),
(31, 'photos/nino13.jpg', 'back side', 18),
(32, 'photos/nino14.jpg', 'dress design', 18),
(33, 'photos/nino15.jpg', 'full length', 18),
(34, 'photos/nino16.jpg', 'full length 2', 18);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`email`, `password`, `fullname`, `mobile`) VALUES
('rg4720500@gmail.com', '12', 'Rohit Gupta', 6239724322);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategoryid` int(11) NOT NULL,
  `subcategoryname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategoryid`, `subcategoryname`, `description`, `category`) VALUES
(2, 'formal shoes', 'curve shoes , black night mat finish shoes', 'Shoes '),
(4, 'jeans and trousors', 'tore jeans ', 'Shoes '),
(5, 'winter wear', 'winter is spo cool new designs of winter clothes', 'baby section'),
(6, 'summer wear', 'all the clothing suitable for summers', 'baby section'),
(7, 'functions and parties', 'all the shiny clothes like coat pant sherwani designer chunni', 'baby section'),
(8, 'spiritual ceremonies', 'all the ritual clothing are there like kurta pajama etc.', 'baby section'),
(9, 'baby shoes ', 'all punjabi jutis and sports shoes soft sandals', 'Shoes '),
(11, 'baby quilt,pillows,blankets', ' An infant  is the more formal or specialised synonym for \"baby\", the very young offspring of a human. The term may also be used to refer to juveniles of other organisms.\r\nA newborn is, in colloquial use, an infant who is only hours, days, or up to one month old. In medical contexts, newborn or neonate  refers to an infant in the first 28 days after birth; the term applies to premature, full term, and postmature infants; before birth, the term \"fetus\" is used.', 'baby section'),
(12, 'formal and informal wear', 'jeans,tops,suits,kurtas,jackets,jumpsuits,shirts,t-shirts,night suits ', 'clothes'),
(13, 'vegetables', ' Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds. The alternate definition of the term vegetable is applied somewhat arbitrarily, often by culinary and cultural tradition. It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savoury fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.\r\nOriginally, vegetables were collected ', 'grocery'),
(14, 'fruits', ' In botany, a fruit is the seed-bearing structure in flowering plants  formed from the ovary after flowering.\r\nFruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food. Accordingly, fruits account for a substantial fr', 'grocery'),
(15, 'oils', ' An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic  and lipophilic . Oils have a high carbon and hydrogen content and are usually flammable and surface active.\r\nThe general definition of oil includes classes of chemical compounds that may be otherwise unrelated in structure, properties, and uses. Oils may be animal, vegetable, or petrochemical in origin, and may be volatile or non-volatile. They are used for food, fuel, medical purposes, lubrication, and the manufacture of many types of paints, plastics, and other materials. Specially prepared oils are used in some religious ceremonies', 'grocery'),
(16, 'washing related', ' Washing is a method of cleaning, usually with water and often some kind of soap or detergent. Washing  both body and clothing is an essential part of good hygiene and health.\r\nOften people use soaps and detergents to assist in the emulsification of oils and dirt particles so they can be washed away. The soap can be applied directly, or with the aid of a washcloth.\r\nPeople wash themse', 'grocery'),
(17, 'pulses,oats', ' A legume  is a plant in the family Fabaceae, or the fruit or seed of such a plant . Legumes are grown agriculturally, primarily for human consumption, for livestock forage and silage, and as soil-enhancing green manure. Well-known legumes include alfalfa, clover, beans, peas, chickpeas, lentils, lupins, mesquite, carob, soybeans, peanuts, and tamarind. Legumes produce a botanically unique type of fruit – a simple dry fruit that develops from a simple carpel and usually dehisces  on two sides. A common name for this type of fruit is a pod, although the term \"p', 'grocery'),
(18, 'utensils', ' Bartın Province, a small province in northern Turkey on the Black Sea, surrounds the city of Bartın. It lies to the east of Zonguldak Province.\r\nThe town of Bartın contains a number of very old wooden houses in a style no longer extant in other places.\r\nBartın province includes the ancient port town of Amasra . This town stands on two small fortified islands and contains many interesting old buildings and restaurants.', 'kitchen'),
(19, 'formal and informal wear', 'bahut aaii gayi yaaden magar is baar tum hi aana', 'women wear'),
(20, 'party wear', 'gowns,western dresses,sarees', 'women wear'),
(21, 'gym wear', 'supporty track suits ', 'women wear');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryname`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `subcatid` (`subcatid`);

--
-- Indexes for table `product_photo`
--
ALTER TABLE `product_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_photo`
--
ALTER TABLE `product_photo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subcatid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_photo`
--
ALTER TABLE `product_photo`
  ADD CONSTRAINT `product_photo_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`categoryname`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
