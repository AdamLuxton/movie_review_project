-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2017 at 06:26 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_review`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` tinyint(4) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Horror'),
(4, 'Drama'),
(5, 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` smallint(6) NOT NULL,
  `movie_id` smallint(6) NOT NULL,
  `comment_name` varchar(100) NOT NULL,
  `comment_comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment_id`, `movie_id`, `comment_name`, `comment_comment`) VALUES
(1, 1, 'Adam', 'Hey making sure this works.'),
(2, 1, 'adam', '"test two"'),
(3, 1, 'Adam', 'HAHAHAHHA'),
(4, 1, 'Adam', 'HAHAHAHHA'),
(5, 1, 'Adam', 'HAHAHAHHA'),
(6, 1, 'AA', 'aaaa'),
(7, 1, 'Adam', 'Testing'),
(8, 2, 'Adam', 'Comment for Iron man');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_l_mc`
--

CREATE TABLE `tbl_l_mc` (
  `mc_id` smallint(6) NOT NULL,
  `movie_id` smallint(6) NOT NULL,
  `cat_id` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_l_mc`
--

INSERT INTO `tbl_l_mc` (`mc_id`, `movie_id`, `cat_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 1),
(4, 3, 4),
(5, 4, 4),
(6, 5, 5),
(7, 6, 5),
(8, 7, 3),
(9, 8, 3),
(10, 9, 1),
(11, 10, 1),
(12, 10, 2),
(13, 11, 1),
(14, 11, 2),
(15, 12, 1),
(16, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` smallint(6) NOT NULL,
  `movie_name` varchar(200) NOT NULL,
  `movie_img` varchar(100) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_video` varchar(100) NOT NULL,
  `movie_slug` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `movie_img`, `movie_desc`, `movie_video`, `movie_slug`) VALUES
(1, 'Star Wars: The Last Jedi', 'starwars.jpg', 'Having taken her first steps into a larger world in Star Wars: The Force Awakens (2015), Rey continues her epic journey with Finn, Poe and Luke Skywalker in the next chapter of the saga.', 'trailer.mp4', 'starwarsjedi'),
(2, 'Iron Man', 'ironman.jpg', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', 'trailer.mp4', 'ironman'),
(3, 'American Beauty', 'americanbeauty.jpg', 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.', 'trailer.mp4', 'americanbeauty'),
(4, 'The Shawshank Redemption', 'shawshank.jpg', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'trailer.mp4', 'shawshank'),
(5, 'Zootopia', 'zootopia', 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.', 'trailer.mp4', 'zootopia'),
(6, 'Big Hero 6', 'bighero6.jpg', 'The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.', 'trailer.mp4', 'bighero6'),
(7, 'The Witch', 'witch.jpg', 'A family in 1630s New England is torn apart by the forces of witchcraft, black magic and possession.', 'trailer.mp4', 'thewitch'),
(8, 'The Conjuring', 'conjuring.jpg', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'trailer.mp4', 'conjuring'),
(9, 'The Avengers', 'avengers.jpg', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.', 'trailer.mp4', 'theavengers'),
(10, 'Black Dynamite', 'blackdynamite.jpg', 'Black Dynamite is the greatest African-American action star of the 1970s. When his only brother is killed by The Man it\'s up to him to find justice.', 'trailer.mp4', 'blackdynamite'),
(11, 'The World\'s End', 'worldsend.jpg', 'Five friends who reunite in an attempt to top their epic pub crawl from twenty years earlier unwittingly become humanity\'s only hope for survival.', 'trailer.mp4', 'worldsend'),
(12, 'The Dark Knight', 'darkknight.jpg', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the Dark Knight must come to terms with one of the greatest psychological tests of his ability to fight injustice.', 'trailer.mp4', 'darkknight');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_l_mc`
--
ALTER TABLE `tbl_l_mc`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_l_mc`
--
ALTER TABLE `tbl_l_mc`
  MODIFY `mc_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
