-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2018 at 03:45 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'shawshank.jpg', 'The Shawshank Redemption', '1994', '2h 22m', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'shawshank.mp4', '14 October 1994'),
(2, 'godfather.jpg', 'The Godfather', '1972', '2 h 55m', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'godfather.mp4', '24 March 1972'),
(3, 'darkknight.jpg', 'The Dark Night', '2008', '2h 32m', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'darkkight.mp4', '18 July 2008'),
(4, '12angrymen.jpg', '12 Angry Men', '1957', '21h 36m', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', '12angrymen.mp4', 'April 1957'),
(5, 'list.jpg', 'Schindler\'s List', '1993', '2h 9min', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', 'list.mp4', '4 February 1994'),
(6, 'lotr.jpg', 'The Lord of the Rings: The Return of the King', '2003', '3h 21m', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'lotr.mp4', '17 December 2003'),
(7, 'pulpfiction.jpg', 'Pulp Fiction', '1994', '2h 34m', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'pulpfiction.mp4', '14 October 1994'),
(8, 'fightclub.jpg', 'Fight Club', '1999', '2h 19m', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soapmaker, forming an underground fight club that evolves into something much, much more.', 'fightclub.mp4', '15 October 1999'),
(9, 'forrestgump.jpg', 'Forrest Gump', '1994', '2h 22m', 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.', 'forrestgump.mp4', '6 July 1994'),
(10, 'inception.jpg', 'Inception', '2010', '2h 28m', 'A thief, who steals corporate secrets through the use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 'inception.mp4', '16 July 2010'),
(11, 'matrix.jpg', 'The Matrix', '1999', '2h 16m', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers', 'matrix.mp4', '31 March 1999'),
(12, 'seven.jpg', 'Se7en', '1995', '2h 17m', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives', 'seven.mp4', '22 September 1995'),
(13, 'interstellar.jpg', 'Interstellar', '2014', '2h 49m', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival', 'interstellar.mp4', '7 November 2014'),
(14, 'psycho.jpg', 'Psycho', '1960', '1h 49m', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'psycho.mp4', '8 September 1960'),
(15, 'gladiator.jpg', 'Gladiator', '2000', '2h 35m', 'When a Roman General is betrayed, and his family murdered by an emperor\'s corrupt son, he comes to Rome as a gladiator to seek revenge.', 'gladiator.mp4', '5 May 2000'),
(16, 'alien.jpg', 'Alien', '1979', '1h 56m', 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.', 'alien.mp4', '22 June 1979 (USA)'),
(17, 'up.jpg', 'Up', '2009', '1h 36m', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', 'up.mp4', '29 May 2009'),
(18, 'heat.jpg', 'Heat', '1995', '2h 50min', 'A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist, while both sides attempt to find balance between their personal and professional lives.', 'heat.mp4', '15 December 1995'),
(19, 'theroom.jpg', 'The Room', '2003', '1h 39m', 'Johnny is a successful banker who lives happily in a San Francisco townhouse with his fiancée, Lisa. One day, inexplicably, she gets bored with him and decides to seduce his best friend, Mark. From there, nothing will be the same again.', 'theroom.mp4', '3 March 2004'),
(20, 'jaws.jpg', 'jaws', '1975', '2h 4m', 'A local sheriff, a marine biologist and an old seafarer team up to hunt down a great white shark wrecking havoc in a beach resort.', 'jaws.jpg', '20 June 1975'),
(21, 'rocky.jpg', 'Rocky', '1976', '2h 2m', 'Rocky Balboa, a small-time boxer, gets a supremely rare chance to fight heavy-weight champion Apollo Creed in a bout in which he strives to go the distance for his self-respect.', 'rocky.jpg', '3 December 1976'),
(22, 'darko.jpg', 'Donnie Darko', '2001', '1h 53m', 'A troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes, after he narrowly escapes a bizarre accident.', 'darko.mp4', '26 October 2001'),
(23, 'insideout.jpg', 'Inside Out', '2015', '1h 35m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'insideout.mp4', '19 June 2015'),
(24, 'diehard.jpg', 'Die Hard', '1988', '2h 12m', 'John McClane, officer of the NYPD, tries to save his wife Holly Gennaro and several others that were taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.', 'diehard.mp4', '20 July 1988'),
(25, 'clockwork.jpg', 'A Clockwork Orange', '1971', '2h 16m', 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn\'t go as planned.', 'clockwork.mp4', '2 February 1972');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 4),
(8, 3, 1),
(9, 3, 2),
(10, 3, 14),
(11, 4, 1),
(12, 4, 4),
(13, 4, 5),
(14, 4, 6),
(15, 5, 1),
(16, 5, 5),
(17, 5, 6),
(18, 6, 1),
(19, 6, 2),
(20, 6, 14),
(21, 7, 1),
(22, 7, 2),
(23, 7, 5),
(24, 8, 9),
(25, 8, 5),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(35, 11, 2),
(36, 11, 5),
(37, 9, 5),
(38, 10, 9),
(39, 10, 1),
(40, 11, 9),
(41, 12, 7),
(42, 12, 5),
(43, 13, 9),
(44, 14, 7),
(45, 15, 1),
(46, 15, 5),
(47, 16, 7),
(48, 16, 9),
(49, 17, 13),
(50, 18, 1),
(51, 19, 5),
(52, 19, 3),
(53, 20, 7),
(54, 20, 1),
(55, 21, 1),
(56, 21, 5),
(57, 22, 9),
(58, 22, 5),
(59, 23, 13),
(60, 24, 1),
(61, 25, 5),
(62, 25, 9),
(63, 26, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `userlvl` varchar(50) NOT NULL,
  `userFirstLogin` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `userlvl`, `userFirstLogin`) VALUES
(1, 'adam', 'janisseeeee', 'pass', 'adamjanisse@gmail.com', '2018-03-22 17:38:05', '::1', '', 2),
(2, 'aadam', 'ee', 'xLbN0hMeb4', 'ee', '2018-03-22 17:44:43', '2', 'no', 2),
(3, 'eeerr', 'reee', 'gss3sPJpM#', 'ree', '2018-03-22 23:49:57', '2', 'no', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
