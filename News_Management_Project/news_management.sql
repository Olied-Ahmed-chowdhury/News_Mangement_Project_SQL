-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2025 at 07:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `body`, `created_at`, `user_id`, `username`) VALUES
(1, 'Tech Conference 2025', 'A major tech conference took place today...', '2025-11-20 17:14:26', 1, 'Anderson Cooper'),
(2, 'AI Breakthrough Achieved', 'Researchers discovered a new AI model...', '2025-11-20 17:14:26', 1, 'Anderson Cooper'),
(3, 'New Smartphone Released', 'A leading company launched their latest device...', '2025-11-20 17:14:26', 1, 'Anderson Cooper'),
(4, 'Global Summit on Climate', 'World leaders met to discuss climate issues...', '2025-11-20 17:14:26', 2, 'Christiane Amanpour'),
(5, 'International Peace Talks', 'Historic peace negotiations concluded today...', '2025-11-20 17:14:26', 2, 'Christiane Amanpour'),
(6, 'Refugee Crisis Updates', 'Millions displaced in ongoing conflict...', '2025-11-20 17:14:26', 2, 'Christiane Amanpour'),
(7, 'Sports Championship Highlights', 'A thrilling final match concluded...', '2025-11-20 17:14:26', 3, 'David Muir'),
(8, 'Local Team Wins Trophy', 'The local football team claimed victory...', '2025-11-20 17:14:26', 3, 'David Muir'),
(9, 'Player Breaks Record', 'A new world record was set today...', '2025-11-20 17:14:26', 3, 'David Muir'),
(10, 'New Movie Announced', 'A big-budget movie was announced...', '2025-11-20 17:14:26', 4, 'Maggie Haberman'),
(11, 'Celebrity Interview', 'A popular actor shared thoughts...', '2025-11-20 17:14:26', 4, 'Maggie Haberman'),
(12, 'Award Show Results', 'The annual awards ceremony concluded...', '2025-11-20 17:14:26', 4, 'Maggie Haberman'),
(13, 'Government Policies Updated', 'New policies affecting citizens were introduced...', '2025-11-20 17:14:26', 5, 'Barkha Dutt'),
(14, 'Election Results Declared', 'The latest election results are out...', '2025-11-20 17:14:26', 5, 'Barkha Dutt'),
(15, 'Local Development Plans', 'City council announced infrastructure projects...', '2025-11-20 17:14:26', 5, 'Barkha Dutt'),
(16, 'Economic Forecast 2025', 'Experts analyzed the upcoming economic trends...', '2025-11-20 17:14:26', 6, 'Fareed Zakaria'),
(17, 'International Trade Agreements', 'New trade deals signed today...', '2025-11-20 17:14:26', 6, 'Fareed Zakaria'),
(18, 'Global Stock Market Insights', 'Financial markets experienced fluctuations...', '2025-11-20 17:14:26', 6, 'Fareed Zakaria'),
(19, 'Press Freedom Report', 'Report shows challenges for journalists worldwide...', '2025-11-20 17:14:26', 7, 'Maria Ressa'),
(20, 'Digital Media Trends', 'Online news platforms growing rapidly...', '2025-11-20 17:14:26', 7, 'Maria Ressa'),
(21, 'Investigative Story Published', 'Deep investigation reveals hidden facts...', '2025-11-20 17:14:26', 7, 'Maria Ressa'),
(22, 'White House Updates', 'Breaking news from the White House today...', '2025-11-20 17:14:26', 8, 'Bob Woodward'),
(23, 'Political Scandal Exposed', 'Investigative report uncovers political scandal...', '2025-11-20 17:14:26', 8, 'Bob Woodward'),
(24, 'New Legislation Passed', 'Congress passes major new law...', '2025-11-20 17:14:26', 8, 'Bob Woodward'),
(25, 'Human Rights Report', 'Report details human rights issues in country...', '2025-11-20 17:14:26', 9, 'Rana Ayyub'),
(26, 'Community Empowerment Initiatives', 'Programs to empower communities launched...', '2025-11-20 17:14:26', 9, 'Rana Ayyub'),
(27, 'Legal Reforms Announced', 'Government introduces new legal reforms...', '2025-11-20 17:14:26', 9, 'Rana Ayyub'),
(28, 'Media Industry Update', 'Latest trends in media industry analyzed...', '2025-11-20 17:14:26', 10, 'Ben Smith'),
(29, 'Editorial Controversy', 'Debate over editorial decisions heats up...', '2025-11-20 17:14:26', 10, 'Ben Smith'),
(30, 'Journalism Awards Announced', 'Top awards for journalism revealed...', '2025-11-20 17:14:26', 10, 'Ben Smith');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `age`, `contact_number`, `channel`, `created_at`) VALUES
(1, 'Anderson Cooper', 'acooper@cnn.com', 55, '01711111111', 'CNN', '2025-11-20 17:14:26'),
(2, 'Christiane Amanpour', 'camanpour@cnn.com', 65, '01722222222', 'CNN', '2025-11-20 17:14:26'),
(3, 'David Muir', 'dmuir@abcnews.com', 49, '01733333333', 'ABC News', '2025-11-20 17:14:26'),
(4, 'Maggie Haberman', 'mhaberman@nyt.com', 38, '01744444444', 'The New York Times', '2025-11-20 17:14:26'),
(5, 'Barkha Dutt', 'bdutt@ndtv.com', 50, '01755555555', 'NDTV', '2025-11-20 17:14:26'),
(6, 'Fareed Zakaria', 'fzakaria@cnn.com', 60, '01766666666', 'CNN', '2025-11-20 17:14:26'),
(7, 'Maria Ressa', 'mressa@rappler.com', 57, '01777777777', 'Rappler', '2025-11-20 17:14:26'),
(8, 'Bob Woodward', 'bwoodward@washpost.com', 79, '01788888888', 'The Washington Post', '2025-11-20 17:14:26'),
(9, 'Rana Ayyub', 'rayyub@indianexpress.com', 46, '01799999999', 'Indian Express', '2025-11-20 17:14:26'),
(10, 'Ben Smith', 'bsmith@nyt.com', 45, '01800000000', 'The New York Times', '2025-11-20 17:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
