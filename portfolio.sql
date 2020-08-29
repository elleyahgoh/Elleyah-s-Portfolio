-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 10:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `exposures`
--

CREATE TABLE `exposures` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `exposures`
--

INSERT INTO `exposures` (`id`, `name`) VALUES
(1, 'Angular'),
(2, 'ReactJS'),
(3, 'Python'),
(4, 'JSON'),
(5, 'Unity'),
(6, 'Bootstrap'),
(7, 'C#'),
(8, 'JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `project_id`, `url`) VALUES
(3, 2, 'https://i.postimg.cc/hGdtGcvM/fyp.png'),
(4, 2, 'https://i.postimg.cc/RVZ3LdgJ/fyp-2.png'),
(5, 2, 'https://i.postimg.cc/W4wjKL3N/fyp-3.png'),
(6, 2, 'https://i.postimg.cc/x8M51rdX/fyp-4.png'),
(7, 3, 'https://i.postimg.cc/gk1B4yxD/image-retrieve.png'),
(8, 3, 'https://i.postimg.cc/JnhqRty0/image-retrieve-1.png'),
(9, 3, 'https://i.postimg.cc/y8PpKMff/image-retrieve-2.png'),
(10, 4, 'https://i.postimg.cc/q7m3pwHV/ramp-ball-away.png'),
(11, 4, 'https://i.postimg.cc/vTKhDMRy/ramp-ball-away-1.png'),
(12, 4, 'https://i.postimg.cc/FsWzdRn3/ramp-ball-away-2.png'),
(13, 5, 'https://i.postimg.cc/k5RWkBf9/biq.png'),
(14, 5, 'https://i.postimg.cc/wjvXQWN1/biq-1.png'),
(15, 5, 'https://i.postimg.cc/Z5Mr7rPV/biq-2.png'),
(16, 6, 'https://i.postimg.cc/15XNN8wS/portfolio.png'),
(17, 6, 'https://i.postimg.cc/PxnmWdh4/portfolio-1.png'),
(18, 7, 'https://i.postimg.cc/NGzvtxqR/vnn.png'),
(19, 7, 'https://i.postimg.cc/sgFFQD2X/vnn-1.png'),
(20, 7, 'https://i.postimg.cc/pX5bLnR4/vnn-2.png'),
(21, 7, 'https://i.postimg.cc/kGBr828V/vnn-3.png'),
(22, 7, 'https://i.postimg.cc/MH4CYzb9/vnn-4.png'),
(23, 7, 'https://i.postimg.cc/B6h9XT89/vnn-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `project_id`, `url`, `title`) VALUES
(1, 2, 'https://github.com/elleyahgoh/3D-Shapes-Blending', 'GitHub'),
(2, 3, 'https://image-retrieve.000webhostapp.com/', 'Live Demo'),
(3, 3, 'https://github.com/elleyahgoh/Image-Retrieve', 'GitHub'),
(4, 4, 'https://github.com/elleyahgoh/Ramp-Ball-Away', 'GitHub'),
(5, 5, 'https://web.archive.org/web/20200612233609/https:/biq.cloud/', 'Live Demo'),
(6, 7, 'https://akhbarharian.com/', 'Akhbar Harian'),
(7, 7, 'https://marketsanctum.com/', 'Market Sanctum'),
(8, 7, 'https://marketfold.com/', 'Market Fold'),
(9, 7, 'https://emporiumpost.com/', 'Emporium Post'),
(10, 7, 'https://digitalpressnetwork.com/', 'Digital Press Network'),
(11, 7, 'https://indepthscience.com/', 'In-Depth Science'),
(12, 6, 'https://elleyah-portfolio.000webhostapp.com/', 'Live Demo'),
(13, 6, 'https://github.com/elleyahgoh/Elleyah-s-Portfolio', 'GitHub');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `featuring` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `company_work` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `featuring`, `description`, `company_work`) VALUES
(2, '3D Shapes Blending: A development', 'OpenGL, C++', '<p>A program that performs simple 3D shapes blending by retrieving two 3D models segmented into components from end user input, allowing the user to choose which component is to be swapped, making calculations to perform the right transformation required before adjusting the selected components with one another to obtain a newly crafted model.</p>\r\n\r\n<p>The project seeks to inspire designers and 3D modellers with new model design ideas, encouraging them to continue their line of work by following the models provided by the program.</p>', 0),
(3, 'Image Retrieve: Web Image Scraping', 'PHP, REST API (main), HTML, CSS, Bootstrap (side)', '<p>Image Retrieve aims to retrieve data from the designated source, and is specially designed to follow and understand the website\'s HTML script in order to find the images located within the page. It applies the use of <a href=\'https://simplehtmldom.sourceforge.io/\'>Simple HTML Dom</a>, which assists with the tracking of HTML patterns used to find the page\'s images.</p>', 1),
(4, 'Ramp Ball Away!: A simple project featuring Unity3D', 'Unity3D, C#', '<p>Ramp Ball Away! is a simple Android mobile game where the player takes control of a ball, moving it around using buttons found on-screen: either move left or right through the arrows or jump with the center button. The ball must then be made to dodge incoming obstacles, where colliding into them results in a game over.</p>\r\n\r\n<p>Highscores are recorded by checking to see if the time achieved by the player is higher than the current records. A maximum amount of five highscores are recorded and ranked.</p>', 0),
(5, 'biq.cloud Homepage (July ver.)', 'CSS, JavaScript, HTML, Bootstrap', '<p>A homepage to a WordPress-based website applying the usage of animated JavaScript features such as sliders used to beautify and enhance the captivity of the website. The homepage is entirely built using CSS, JavaScript and HTML â€“ with Bootstrap to apply the ease of flexibility and responsiveness to the page.</p>', 1),
(6, 'My Portfolio: A demonstration and telling of my skills', 'HTML, CSS, JavaScript, PHP, MySQL', '<p>A look-into behind the coding and programming written to piece together the portfolio foretelling my experience in computer science. It plays mainly to demonstrate my range of skills known, for verification and allowing to others wishing to know more of my profession.</p>', 0),
(7, 'Vertical News Network Subsites', 'HTML, CSS, Bootstrap (main), Angular (side)', '<p>The subsites follow a specific pattern and layout according to each of the codes given. The right colours are chosen by specifically checking onto the power onto the subsite\'s logo. In order to retrieve articles from the database, APIs have been connected to the site, allowing passage from there to the appropriate subsite targeted.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `perc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `perc`) VALUES
(1, 'HTML', 85),
(2, 'Java', 63),
(3, 'C++', 71),
(4, 'CSS', 79),
(5, 'PHP', 54),
(6, 'MySQL', 57);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exposures`
--
ALTER TABLE `exposures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exposures`
--
ALTER TABLE `exposures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `project_relation` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
