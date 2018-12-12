SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `b_id` int(4) NOT NULL AUTO_INCREMENT,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(10) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  `b_pdf` longtext NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`, `b_pdf`) VALUES
(1, 'A Dictionary of Architecture ', '1', 'Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume', 'THE BOOK SHOP', '2007', '89564636 ', 200, 500, 'upload_image/ARC9.jpg', 'upload_ebook/arc.txt'),
(2, 'Elephant Kingdom : Sculptures from Indian Architecture ', '1', 'Elephants occupy a special place in the life and art of India. Since ancient times, they have been treasured and pampered as the ultimate beasts of burden, venerated as the vehicles of gods and kings and even worshipped in their own right. Their legendary attributes of strength, intelligence, nobility and longevity are eulogized in myth, epic and popular literature. In the figural and decorative arts, elephants provide an enduring fascination. Elephant Kingdom traces the myriad stories and symbolisms behind India''s much-loved animal, through its depictions in architectural sculpture. At the heart of the study is a collection of over 60 colour photographs from a diversity of antique settings-many of them in remote parts of the subcontinent. At centuries-old temples, monasteries, forts and palaces, elephants flank ceremonial entrances, enrich columns and capitals, form balustrades to stairways or stand as enigmatic sentinels of vast courtyards. Some are legendary characters in tales of dreams and salvation; others enact scenes from a faithfully observed natural history. Some transport kings and heroes into battle and the hunt; others are celestial messengers of rain, fertility and good fortune. From monumental freestanding sculptures to finely-worked narrative friezes, the warmth and energy of these depictions bear testimony to the achievements of countless anonymous artisans. ', 'Vikramjit Ram', '2006', '81-88204-6', 250, 1000, 'upload_image/ARC8.jpg', 'upload_ebook/arc2.txt');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(4) NOT NULL AUTO_INCREMENT,
  `cat_nm` varchar(30) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Uncategorized'),
(2, 'Biography'),
(3, 'Fiction'),
(4, 'Non-Fiction'),
(5, 'Thriller'),
(6, 'Romance'),
(7, 'Religious'),
(8, 'Educational'),
(9, 'Humor'),
(10, 'Business'),
(11, 'Featured'),
(12, 'TextBooks');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `con_id` int(4) NOT NULL AUTO_INCREMENT,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Dipraj', 'dipraj@gmail.com', 'English Novels...'),
(2, 'Shital', 'shital@yahoo.com', 'Do you have medical books?');


-- --------------------------------------------------------

--
-- Table structure for table `delivery_details`
--

CREATE TABLE IF NOT EXISTS `delivery_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `delivery_details`
--

INSERT INTO `delivery_details` (`id`, `name`, `address`, `postal_code`, `city`, `state`, `phone`, `f_id`) VALUES
(1, 'Dipraj', 'Baneshwor', 44600, 'Kathmandu', '03', 9851501897, 'Dipraj');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE IF NOT EXISTS `subcat` (
  `subcat_id` int(4) NOT NULL AUTO_INCREMENT,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Uncategorized'),
(2, 2, 'Biography'),
(3, 3, 'Fiction'),
(4, 4, 'Non-Fiction'),
(5, 5, 'Thriller'),
(6, 6, 'Romance'),
(7, 7, 'Religious'),
(8, 8, 'Educational'),
(9, 9, 'Humor'),
(10, 10, 'Business'),
(11, 11, 'Featured'),
(12, 12, 'TextBooks');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Dipraj Kayastha', 'Dipraj', 'dipraj', 'Male', 'dipraj@gmail.com', '9851513652', 'Kathmandu'),
(2, 'Shital Karki', 'shital', 'shital1', 'Female', 'shital@yahoo.com', '985189856', 'ABC'),
(3, 'Anjan Chapagain', 'anjan123', '12345', 'Male', 'anjan123@gmail.com', '9416325663', 'Kathmandu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
