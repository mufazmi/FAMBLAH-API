-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 02:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `famblah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `bio`, `password`, `image`, `code`, `status`, `timestamp`) VALUES
(189, 'Social Codia', 'SocialCodia', 'socialcodia@gmail.com', 'The Social Codia', '$2y$10$8PjsFd.Tl5Q.ro1EamVWFul.6ldypk8bqYJGmlNs2vmjUZbElOagW', '', '9GTEvN4VoGPLwq2nRaZmDGqHmufazmibsmufazmiSRQyl1OEc0DVIgKUsDQIFG7nK79KZnYkXXUiHOzIGRqdumEw81cfA8vcxw==', 1, '2020-08-10 15:27:50'),
(190, 'Umair Farooqui', 'mufazmi', 'info.mufazmi@gmail.com', 'Nice to meet you.', '$2y$10$P9VwAa30KgFZCgSGT0a9y.WWXeSr0BMTc7fE9WsMf2la1B.aXmsqO', '', 'v00FistXFaqjUj9yp6WndALFaa5KZK1FMHomVPrIEeizMxUM9aV394JY4Ukkmufazmi5ZnsocialcodiaGgqrw7qOYyJavNcp4cWeg==', 1, '2020-08-10 15:27:55'),
(194, 'Umair', 'UmairFarooqui', 'info.umairfarooqui@gmail.com', '', '$2y$10$mj40jM/kQRLg2Y5scscBouzna/e5I2RxyJSeRhbWjdAMm5vhg.h86', '', 'agNfB3Dw5Xmufazmi9zcsexOaPgg==', 1, '2020-08-01 02:12:14'),
(195, 'Sajid Farooqui', 'msfazmi', 'info.msfazmi@gmail.com', 'The is sajid farooqui.. Founder and CEO of WIREMAIN. also working with WIREMAIN as a Electrical Engineer..', '$2y$10$RCpoMZwtK/QXGPfjMHM2GOa9fEO2bIpv9aY/bd2.0jBSIcatEVxzq', '', 'XBXhagAXdEWN1AsocialcodiagfHN5weXBSmufazmixVaEhfvq34MO3i0UAqbDJ8De3D06Tk0qNwoC3GpOgemCCTl18Lm6sG1y2z5w==', 1, '2020-08-10 15:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `feedId` int(50) NOT NULL,
  `userId` int(50) NOT NULL,
  `feedComment` varchar(250) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `feedId`, `userId`, `feedComment`, `timestamp`) VALUES
(1, 5, 173, 'nice pic', '2020-06-18 00:58:01'),
(2, 6, 173, 'wow, awesome post.', '2020-06-18 00:58:01'),
(5, 31, 190, 'demo comment', '2020-06-20 01:15:35'),
(6, 31, 190, 'demo comment', '2020-06-20 01:27:56'),
(10, 31, 190, 'demo comment', '2020-06-20 04:03:18'),
(11, 130, 190, 'demo comment', '2020-07-01 07:52:37'),
(12, 129, 190, 'nice', '2020-07-01 18:02:25'),
(13, 129, 195, 'nice', '2020-07-01 21:31:17'),
(14, 104, 195, 'Awesome Mumbai', '2020-07-01 21:31:38'),
(15, 137, 195, 'n', '2020-07-01 21:35:06'),
(16, 140, 195, 'nice pic of myself', '2020-07-01 21:51:38'),
(17, 130, 190, 'hi', '2020-07-04 09:12:48'),
(18, 56746, 190, 'nice', '2020-07-04 09:21:54'),
(19, 56746, 190, 'nice awesome', '2020-07-04 09:22:01'),
(20, 56746, 190, 'awesome postg', '2020-07-04 09:22:23'),
(21, 130, 190, 'nice', '2020-07-04 09:23:41'),
(22, 130, 190, 'c u in the video today a good day to go to the video today a good day to me and I will be there at the same time I will be there', '2020-07-04 09:24:03'),
(23, 56747, 190, 'thanksfor the video today a good day to me and I will be there at the same time I don\'t have a good day at work today a lot ☹️😔😔😔😔😔', '2020-07-04 09:24:53'),
(24, 56747, 190, 'Awesome posts you have made', '2020-07-04 09:26:10'),
(25, 56747, 190, 'for the video today a good day to', '2020-07-04 09:43:16'),
(26, 56747, 190, 'I\'m going back home to work is that a video or something', '2020-07-04 09:43:28'),
(27, 56747, 190, 'no I will not be there at the same time', '2020-07-04 09:43:41'),
(28, 56747, 190, 'email me back or any credits for the video today a good', '2020-07-04 09:43:57'),
(29, 56749, 190, 'ohho. kya baat hai boss...', '2020-07-05 21:03:04'),
(30, 56749, 190, 'nice', '2020-07-05 21:03:10'),
(31, 56748, 190, 'you have posted it from the web. nice men, you are a great boss', '2020-07-05 21:04:00'),
(32, 56826, 190, 'nice', '2020-08-06 05:26:49'),
(33, 56830, 190, 'nice', '2020-08-06 16:39:38'),
(34, 56829, 200, 'nice', '2020-08-06 18:23:14'),
(35, 56830, 200, 'wise', '2020-08-06 18:23:24'),
(36, 56829, 200, 'nin', '2020-08-06 18:28:15'),
(37, 56831, 190, 'nice', '2020-08-06 18:30:50'),
(38, 56831, 190, 'nice 1', '2020-08-06 18:35:02'),
(39, 56828, 200, 'nice', '2020-08-06 19:43:14'),
(40, 56831, 200, 'nice', '2020-08-06 19:50:43'),
(41, 56831, 190, 'nice', '2020-08-06 19:56:19'),
(42, 56831, 190, 'last comment', '2020-08-06 20:13:15'),
(43, 56831, 189, '33', '2020-08-06 20:18:00'),
(44, 56831, 189, '33', '2020-08-06 20:18:40'),
(45, 56831, 189, '33', '2020-08-06 20:18:53'),
(46, 56831, 189, '33', '2020-08-06 20:21:18'),
(47, 56831, 189, '33', '2020-08-06 20:21:36'),
(48, 56831, 189, '33', '2020-08-06 20:22:04'),
(49, 56831, 189, '33', '2020-08-06 20:22:21'),
(50, 56831, 189, '33', '2020-08-06 20:22:41'),
(51, 56831, 189, '33', '2020-08-06 20:23:40'),
(52, 56831, 189, '33', '2020-08-06 20:26:17'),
(53, 56831, 189, '33', '2020-08-06 20:28:56'),
(54, 56831, 189, '33', '2020-08-06 20:29:14'),
(55, 56831, 189, '33', '2020-08-06 20:30:06'),
(56, 56831, 189, '33', '2020-08-06 20:30:47'),
(57, 56831, 189, '33', '2020-08-06 20:32:32'),
(58, 56831, 189, '33', '2020-08-06 20:33:30'),
(59, 56831, 189, 'umari farooqui', '2020-08-06 20:34:51'),
(60, 56831, 190, 'nice', '2020-08-06 20:40:43'),
(64, 56832, 189, 'The FAECBOOK is developed by Mark Zukerburg, And The FAMBLAH is developed by Umair Farooqui.', '2020-08-06 21:28:02'),
(65, 56834, 189, 'nice', '2020-08-06 21:54:39'),
(66, 56834, 189, 'wish', '2020-08-06 21:54:55'),
(67, 56833, 189, 'nice', '2020-08-06 21:55:36'),
(68, 56839, 190, 'nice', '2020-08-15 06:35:48'),
(69, 56839, 190, 'asf', '2020-08-15 06:41:50'),
(70, 56895, 195, 'nice song', '2020-09-02 02:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments_likes`
--

CREATE TABLE `comments_likes` (
  `commentLikeId` int(11) NOT NULL,
  `commentId` varchar(30) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments_likes`
--

INSERT INTO `comments_likes` (`commentLikeId`, `commentId`, `userId`, `timestamp`) VALUES
(13, '37', '190', '2020-08-06 18:33:20'),
(14, '38', '190', '2020-08-06 18:35:08'),
(15, '38', '200', '2020-08-06 19:39:04'),
(16, '37', '200', '2020-08-06 19:41:02'),
(17, '33', '189', '2020-08-06 19:41:15'),
(18, '38', '189', '2020-08-06 19:42:32'),
(19, '32', '200', '2020-08-06 19:43:22'),
(20, '40', '190', '2020-08-06 19:56:16'),
(21, '41', '190', '2020-08-06 19:56:58'),
(22, '60', '190', '2020-08-06 20:40:47'),
(23, '59', '190', '2020-08-06 20:42:17'),
(24, '58', '190', '2020-08-06 20:42:20'),
(25, '57', '190', '2020-08-06 20:42:21'),
(26, '56', '190', '2020-08-06 20:42:23'),
(27, '63', '190', '2020-08-06 21:24:41'),
(28, '64', '189', '2020-08-06 21:28:55'),
(29, '65', '189', '2020-08-06 21:54:49'),
(30, '66', '189', '2020-08-06 21:54:59'),
(33, '30', '189', '2020-08-07 01:19:47'),
(38, '30', '195', '2020-08-07 01:36:41'),
(40, '70', '195', '2020-09-02 02:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contactUsId` int(11) NOT NULL,
  `userId` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contactUsId`, `userId`, `name`, `email`, `message`, `timestamp`) VALUES
(1, 195, 'Umair Farooqui', 'mufazmi', 'demo', '2020-08-12 14:18:33.930614'),
(2, 195, 'Umair Farooqui', 'mufazmi', 'demo', '2020-08-12 14:18:51.180422'),
(3, 195, 'Umair Farooqui', 'mufazmi', 'demo', '2020-08-12 14:18:53.202145');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `userId` int(20) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` int(60) NOT NULL,
  `feedbackMessage` varchar(1000) NOT NULL,
  `feedbackImage` varchar(200) NOT NULL,
  `feedbackTimestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `feedId` int(11) NOT NULL,
  `userId` int(10) NOT NULL,
  `feedContent` varchar(2000) NOT NULL,
  `feedImage` varchar(100) NOT NULL,
  `feedThumbnail` varchar(200) NOT NULL,
  `feedVideo` varchar(200) NOT NULL,
  `feedType` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`feedId`, `userId`, `feedContent`, `feedImage`, `feedThumbnail`, `feedVideo`, `feedType`, `timestamp`) VALUES
(56867, 189, 'demo content', 'uploads/5f47a4977c45b.jpg', '', '', 'image', '2020-08-27 12:18:31'),
(56868, 189, 'demo content', 'uploads/5f47a60132e22.jpg', '', '', 'image', '2020-08-27 12:24:33'),
(56869, 189, 'demo content', 'uploads/5f47a602e2f43.jpg', '', '', 'image', '2020-08-27 12:24:34'),
(56870, 189, 'demo content', 'uploads/videos/5f47a66b22dc6.mp4', '', '', 'video', '2020-08-27 12:26:19'),
(56871, 189, 'demo content', 'uploads/5f47a6b034e3a.png', '', '', 'image', '2020-08-27 12:27:28'),
(56872, 189, 'demo content', 'uploads/5f47a6b146037.png', '', '', 'image', '2020-08-27 12:27:29'),
(56873, 189, 'demo content', 'uploads/5f47a6b27938d.png', '', '', 'image', '2020-08-27 12:27:30'),
(56874, 189, 'demo content', 'uploads/5f47a6b38ee05.png', '', '', 'image', '2020-08-27 12:27:31'),
(56875, 189, 'demo content', 'uploads/videos/5f47a730ba0ad.mp4', '', '', 'video', '2020-08-27 12:29:36'),
(56876, 189, 'demo content', 'uploads/5f47a7699802e.jpg', '', '', 'image', '2020-08-27 12:30:33'),
(56877, 189, 'Song', 'uploads/videos/5f47a94a1be62.mp4', '', '', 'video', '2020-08-27 12:38:34'),
(56878, 189, 'Song', '', '', '', 'text', '2020-08-31 11:48:42'),
(56879, 189, 'Song', '', '', '', 'video', '2020-08-31 11:49:12'),
(56880, 189, 'Song', '', '', '', 'video', '2020-08-31 11:50:18'),
(56881, 189, 'Songs', '', '', '', 'text', '2020-08-31 11:59:11'),
(56882, 189, 'Songs', '', '', '', 'text', '2020-08-31 12:02:09'),
(56883, 1, '1', '1', '', '', '1', '2020-08-31 12:06:05'),
(56884, 189, 'Songs', '', '', 'uploads/videos/5f4ce8d29dd20.mp4', 'video', '2020-08-31 12:10:58'),
(56885, 189, 'Songs', 'uploads/5f4ce8d87f414.jpg', '', '', 'image', '2020-08-31 12:11:04'),
(56886, 189, 'Songs', 'uploads/5f4ce9e8df5f2.jpg', '', '', 'image', '2020-08-31 12:15:36'),
(56887, 189, 'Songs', 'uploads/5f4ce9ef049b0.jpg', '', '', 'image', '2020-08-31 12:15:43'),
(56888, 189, 'Songs', 'uploads/5f4cea4e39487.jpg', '', '', 'image', '2020-08-31 12:17:18'),
(56889, 189, 'Songs', '', '', 'uploads/videos/5f4cea520d236.mp4', 'video', '2020-08-31 12:17:22'),
(56890, 189, 'Songs', '', '', 'uploads/videos/5f4cea556faab.mp4', 'video', '2020-08-31 12:17:25'),
(56891, 189, 'Songs', '', '', 'uploads/videos/5f4ceac57cdfa.mp4', 'video', '2020-08-31 12:19:17'),
(56892, 189, 'Songs', '', '', 'uploads/videos/5f4d126604cb4.mp4', 'video', '2020-08-31 15:08:22'),
(56893, 189, 'Songs posting after fixing bug directory listening demo', '', '', 'uploads/videos/5f4d148d9c7db.mp4', 'video', '2020-08-31 15:17:33'),
(56894, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', '', '', 'uploads/videos/5f4e741d1c6d1.mp4', 'video', '2020-09-01 16:17:33'),
(56895, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', '', '', 'uploads/videos/5f4e947d3d6b9.mp4', 'video', '2020-09-01 18:35:41'),
(56896, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', '', '', '', 'text', '2020-09-01 18:43:26'),
(56897, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', '', '', '', 'text', '2020-09-01 18:45:33'),
(56898, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', 'uploads/5f4e9720755af.jpg', '', '', 'image', '2020-09-01 18:46:56'),
(56899, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', 'uploads/5f4e974548787.jpg', '', '', 'image', '2020-09-01 18:47:33'),
(56900, 189, '', 'uploads/5f4e984d0bc2c.jpg', '', '', 'image', '2020-09-01 18:51:57'),
(56901, 189, '', '', '', 'uploads/videos/5f4e986edfe9e.mp4', 'video', '2020-09-01 18:52:30'),
(56902, 189, 'Gadi Wala Aaya Ghar Se Kachra Nikaal', '', '', 'uploads/videos/5f4e9875882e6.mp4', 'video', '2020-09-01 18:52:37'),
(56922, 190, 'demo content', '', '', '', 'text', '2020-09-02 03:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `followsId` int(11) NOT NULL,
  `userId` int(20) NOT NULL,
  `toUserId` int(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`followsId`, `userId`, `toUserId`, `timestamp`) VALUES
(94, 1901, 189, '2020-06-30 20:39:31'),
(97, 1905, 189, '2020-06-30 20:41:06'),
(98, 194, 189, '2020-06-30 20:41:19'),
(99, 198, 189, '2020-06-30 20:41:30'),
(121, 190, 194, '2020-06-30 20:59:27'),
(148, 195, 189, '2020-07-01 21:34:44'),
(150, 195, 190, '2020-07-01 21:46:08'),
(151, 190, 195, '2020-07-02 15:16:44'),
(152, 190, 189, '2020-07-02 16:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `friendrequests`
--

CREATE TABLE `friendrequests` (
  `friendRequestId` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `receiverId` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friendrequests`
--

INSERT INTO `friendrequests` (`friendRequestId`, `senderId`, `receiverId`, `timestamp`) VALUES
(74, 189, 194, '2020-08-15 11:59:00'),
(75, 189, 198, '2020-08-15 12:00:23'),
(85, 190, 194, '2020-08-15 12:16:53'),
(99, 200, 194, '2020-08-27 12:45:52'),
(100, 200, 195, '2020-08-27 12:45:53'),
(101, 200, 198, '2020-08-27 12:45:55'),
(103, 190, 198, '2020-09-01 18:11:21'),
(104, 190, 195, '2020-09-04 13:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `friendsId` int(11) NOT NULL,
  `userOne` varchar(50) NOT NULL,
  `userTwo` varchar(50) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friendsId`, `userOne`, `userTwo`, `timestamp`) VALUES
(28, '189', '195', '2020-08-15 11:42:49.944413'),
(29, '190', '189', '2020-08-15 12:06:47.399358'),
(30, '200', '189', '2020-08-16 12:04:43.288611'),
(31, '190', '200', '2020-08-28 07:18:29.171042');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likeId` int(11) NOT NULL,
  `feedId` int(50) NOT NULL,
  `userId` int(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likeId`, `feedId`, `userId`, `timestamp`) VALUES
(185, 107, 189, '2020-06-28 21:45:29'),
(186, 106, 189, '2020-06-28 21:45:37'),
(187, 110, 189, '2020-06-28 21:55:15'),
(188, 109, 189, '2020-06-28 21:55:20'),
(189, 108, 189, '2020-06-28 21:55:23'),
(193, 109, 195, '2020-06-28 22:40:51'),
(195, 111, 195, '2020-06-28 23:18:29'),
(204, 123, 195, '2020-06-28 23:20:12'),
(205, 121, 195, '2020-06-29 00:10:18'),
(206, 122, 195, '2020-06-29 01:15:31'),
(210, 110, 190, '2020-06-29 04:35:51'),
(211, 109, 190, '2020-06-29 04:35:54'),
(212, 108, 190, '2020-06-29 04:35:56'),
(213, 107, 190, '2020-06-29 04:35:59'),
(215, 106, 190, '2020-06-29 04:36:13'),
(216, 104, 189, '2020-06-29 05:06:10'),
(217, 119, 189, '2020-06-29 05:06:12'),
(219, 126, 195, '2020-06-29 22:58:43'),
(220, 125, 195, '2020-06-29 23:03:36'),
(221, 124, 195, '2020-06-29 23:03:41'),
(222, 125, 190, '2020-06-30 05:29:31'),
(225, 131, 190, '2020-06-30 10:37:29'),
(234, 115, 195, '2020-06-30 22:12:48'),
(235, 132, 195, '2020-06-30 22:14:08'),
(236, 135, 195, '2020-06-30 22:16:20'),
(237, 134, 190, '2020-06-30 22:33:23'),
(249, 119, 190, '2020-07-01 17:59:17'),
(257, 103, 190, '2020-07-01 18:21:57'),
(261, 130, 195, '2020-07-01 21:29:55'),
(267, 118, 195, '2020-07-01 21:30:21'),
(268, 129, 195, '2020-07-01 21:30:36'),
(273, 137, 195, '2020-07-01 21:34:18'),
(275, 139, 195, '2020-07-01 21:46:13'),
(276, 140, 195, '2020-07-01 21:51:13'),
(286, 139, 190, '2020-07-02 15:15:54'),
(289, 129, 190, '2020-07-02 15:16:25'),
(306, 130, 190, '2020-07-02 16:41:26'),
(308, 56747, 190, '2020-07-04 09:42:58'),
(313, 56746, 190, '2020-07-04 10:01:46'),
(317, 56745, 190, '2020-07-04 10:01:58'),
(318, 56749, 190, '2020-07-05 21:02:44'),
(319, 56748, 190, '2020-07-05 21:03:31'),
(320, 56757, 190, '2020-07-07 09:15:48'),
(322, 56750, 190, '2020-07-07 09:15:53'),
(323, 56759, 190, '2020-07-07 09:21:04'),
(324, 56758, 190, '2020-07-07 09:21:06'),
(325, 56761, 190, '2020-07-08 21:10:22'),
(326, 56823, 190, '2020-08-02 14:48:06'),
(327, 56824, 189, '2020-08-03 21:44:33'),
(328, 56823, 189, '2020-08-03 21:49:32'),
(331, 56822, 189, '2020-08-03 22:22:14'),
(332, 56824, 190, '2020-08-06 04:51:25'),
(333, 56826, 190, '2020-08-06 04:51:32'),
(334, 56822, 190, '2020-08-06 04:51:36'),
(335, 56821, 190, '2020-08-06 04:51:38'),
(336, 56820, 190, '2020-08-06 04:51:41'),
(337, 56815, 190, '2020-08-06 05:06:27'),
(338, 56812, 189, '2020-08-06 16:19:04'),
(339, 56831, 200, '2020-08-06 19:41:01'),
(340, 56832, 190, '2020-08-06 21:23:15'),
(341, 56832, 189, '2020-08-06 21:25:15'),
(347, 56834, 200, '2020-08-10 06:34:27'),
(348, 56836, 190, '2020-08-10 13:57:37'),
(350, 56839, 190, '2020-08-15 06:41:38'),
(356, 56877, 190, '2020-08-28 10:58:16'),
(360, 56893, 190, '2020-09-01 16:10:17'),
(361, 56895, 195, '2020-09-02 02:57:52'),
(362, 56907, 195, '2020-09-02 03:00:54'),
(363, 56919, 190, '2020-09-02 03:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notificationId` int(11) NOT NULL,
  `senderId` int(30) NOT NULL,
  `receiverId` int(30) NOT NULL,
  `feedId` int(11) NOT NULL,
  `notificationType` int(30) NOT NULL,
  `isSeen` int(30) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notificationId`, `senderId`, `receiverId`, `feedId`, `notificationType`, `isSeen`, `timestamp`) VALUES
(70, 190, 189, 0, 4, 1, '2020-08-15 09:51:54.512997'),
(73, 198, 189, 0, 4, 1, '2020-08-15 09:51:54.512997'),
(74, 198, 190, 0, 4, 1, '2020-08-15 12:01:06.913065'),
(75, 194, 189, 0, 4, 1, '2020-08-15 09:51:54.512997'),
(78, 189, 195, 0, 4, 1, '2020-09-02 02:56:01.163913'),
(89, 189, 194, 0, 2, 0, '2020-08-15 11:59:00.368666'),
(90, 189, 198, 0, 2, 0, '2020-08-15 12:00:23.524629'),
(93, 190, 189, 0, 4, 0, '2020-08-15 12:06:47.577437'),
(101, 190, 194, 0, 2, 0, '2020-08-15 12:16:53.110999'),
(108, 200, 189, 0, 4, 0, '2020-08-16 12:04:43.388641'),
(116, 200, 194, 0, 2, 0, '2020-08-27 12:45:52.540969'),
(117, 200, 195, 0, 2, 1, '2020-09-02 02:56:01.163913'),
(118, 200, 198, 0, 2, 0, '2020-08-27 12:45:55.196080'),
(119, 190, 200, 0, 4, 0, '2020-08-28 07:18:29.237480'),
(125, 190, 189, 56877, 1, 0, '2020-08-28 10:58:19.482699'),
(130, 190, 189, 56893, 1, 0, '2020-09-01 16:10:17.313015'),
(131, 190, 198, 0, 2, 0, '2020-09-01 18:11:21.855276'),
(132, 195, 189, 56895, 1, 0, '2020-09-02 02:57:52.193024'),
(133, 195, 189, 56895, 11, 0, '2020-09-02 02:58:00.148004'),
(134, 195, 190, 56907, 1, 1, '2020-09-02 03:43:40.369180'),
(135, 190, 189, 56919, 1, 0, '2020-09-02 03:51:21.543139'),
(136, 190, 195, 0, 2, 0, '2020-09-04 13:37:14.278469');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `reportId` int(11) NOT NULL,
  `userId` int(30) NOT NULL,
  `feedId` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`reportId`, `userId`, `feedId`, `status`, `timestamp`) VALUES
(1, 189, 56831, 0, '2020-08-06 22:17:24'),
(2, 190, 56834, 0, '2020-08-10 08:04:48'),
(3, 190, 56833, 0, '2020-08-10 08:05:10'),
(4, 190, 56839, 0, '2020-08-15 06:42:10'),
(5, 200, 56797, 0, '2020-08-16 12:06:10'),
(6, 200, 56823, 0, '2020-08-16 12:06:20'),
(7, 190, 56893, 0, '2020-08-31 19:21:22'),
(8, 195, 56913, 0, '2020-09-02 03:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `requestId` int(11) NOT NULL,
  `userId` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`requestId`, `userId`, `name`, `username`, `image`, `status`, `timestamp`) VALUES
(10, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33ddf86a922.png', 0, '0000-00-00 00:00:00'),
(11, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33ddfb87903.png', 0, '0000-00-00 00:00:00'),
(12, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33dee98c062.png', 0, '0000-00-00 00:00:00'),
(13, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33deead087d.png', 0, '0000-00-00 00:00:00'),
(14, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33df2f19e8c.png', 0, '0000-00-00 00:00:00'),
(15, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33df313eb7e.png', 0, '0000-00-00 00:00:00'),
(16, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33df3b06cac.png', 0, '0000-00-00 00:00:00'),
(17, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33df55e8de3.png', 0, '0000-00-00 00:00:00'),
(18, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33df64c2ee3.png', 0, '0000-00-00 00:00:00'),
(19, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e1d7bd39b.png', 0, '0000-00-00 00:00:00'),
(20, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e1d9a6061.png', 0, '0000-00-00 00:00:00'),
(21, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e1ef690a3.png', 0, '0000-00-00 00:00:00'),
(22, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e1f3d1bfd.png', 0, '0000-00-00 00:00:00'),
(23, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e1fb84726.png', 0, '0000-00-00 00:00:00'),
(24, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e20ecfb39.png', 0, '0000-00-00 00:00:00'),
(25, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e26a32e7c.png', 0, '0000-00-00 00:00:00'),
(26, 195, 'Umair Farooqui', 'muadsf', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/5f33e274e234d.png', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `verified` tinyint(3) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `bio`, `password`, `image`, `code`, `status`, `verified`, `timestamp`) VALUES
(189, 'Social Codia', 'socialcodia', 'socialcodia@gmail.com', 'This user is lazy. So they didn\'t written any bio.', '$2y$10$8PjsFd.Tl5Q.ro1EamVWFul.6ldypk8bqYJGmlNs2vmjUZbElOagW', 'uploads/5f48e3b2ebcb4.jpg', '9GTEvN4VoGPLwq2nRaZmDGqHmufazmibsmufazmiSRQyl1OEc0DVIgKUsDQIFG7nK79KZnYkXXUiHOzIGRqdumEw81cfA8vcxw==', 1, 1, '2020-08-28 11:00:02'),
(190, 'Umair Farooqui', 'mufazmi', 'info.mufazmi@gmail.com', 'sdfdsNice to meet you.', '$2y$10$P9VwAa30KgFZCgSGT0a9y.WWXeSr0BMTc7fE9WsMf2la1B.aXmsqO', 'uploads/5f48a9070dbd3.tmp', 'v00FistXFaqjUj9yp6WndALFaa5KZK1FMHomVPrIEeizMxUM9aV394JY4Ukkmufazmi5ZnsocialcodiaGgqrw7qOYyJavNcp4cWeg==', 1, 1, '2020-08-28 06:49:43'),
(191, 'asdf', 'asdf', 'Demo@demo.com', '', '$2y$10$mneRtFsr5EYifh3yWVVqSutwkXwSyovljfz0jHXRHosZsKpRP8fIW', '', '$2y$10$D2JfrsGtTZBW9Hqyli88COVkuCLsocialcodiawLUsq1bb3M3Wp7qi7csLMrejC', 0, 0, '2020-06-28 21:33:49'),
(194, 'Umair', 'UmairFarooqui', 'info.umairfarooqui@gmail.com', '', '$2y$10$mj40jM/kQRLg2Y5scscBouzna/e5I2RxyJSeRhbWjdAMm5vhg.h86', '', 'agNfB3Dw5Xmufazmi9zcsexOaPgg==', 1, 0, '2020-08-01 02:12:14'),
(195, 'Sajid Farooqui', 'msfazmi', 'info.msfazmi@gmail.com', 'This user is lazy. So they didn\'t written any bio.', '$2y$10$RCpoMZwtK/QXGPfjMHM2GOa9fEO2bIpv9aY/bd2.0jBSIcatEVxzq', 'uploads/5f4f0acfb8584.jpg', 'XBXhagAXdEWN1AsocialcodiagfHN5weXBSmufazmixVaEhfvq34MO3i0UAqbDJ8De3D06Tk0qNwoC3GpOgemCCTl18Lm6sG1y2z5w==', 1, 0, '2020-09-02 03:00:31'),
(196, 'Demo', 'demo', 'demo@demo.demo', '', '$2y$10$AERoXCCzccA549sQKjdjCuAPqfuPnYo84.acU4awQ.UL26T2etHcq', '', '$2y$10$8atcW3pWYq2jFO0QC1j5QeHhc9XaAlLU0js5Qsocialcodia47socialcodiauTtgssocialcodiaMyJtJG', 0, 0, '2020-07-09 18:59:56'),
(198, 'Social Tripia', 'SocialTripia', 'socialtripia@gmail.com', '', '$2y$10$LNTzZHl1w4aRREF5CcSAMOBl1yHCK1fqeBey2tGK29dk5d.yFz4JO', '', '$2y$10$W29kAAFXLc8MTGou3iV4degCqLoI9FOWEG2WaXsocialcodiaWAwMX2JqWFHJPW', 1, 0, '2020-07-27 21:01:00'),
(200, 'tejas', 'Tejas', 'hiuumgbphqpkqtwwwa@awdrt.net', 'This user is lazy. So they didn\'t written any bio.', '$2y$10$zy40Ll2VOCUQUv3GoBcw3ev7HOBhJCpwkZMqBpNSURCnCgjtR4hXe', '', '$2y$10$vAB9m0LlaUvVuqvzpfvK3uFUf.ZkbiF2Uaqgzev42fIqGMIyu9K9e', 1, 0, '2020-08-10 08:45:13'),
(203, 'asdfasdf', 'asdasasd', 'info.hindtak@gmail.com', '', '$2y$10$cNE2htoIKlJ/R1FkknAdGOpQ1Ec9sSMMaSMtGnJ9PNHYVhv8xbn2m', '', '$2y$10$dUTvPs3FzoS.Ju6Z2a6bcO4t4anQJ0J852Y.gJOo0cwe6K56QPh86', 0, 0, '2020-08-02 16:30:53'),
(204, 'sdfas', 'asdfas', 'asdf@asdf.asdf', '', '$2y$10$yFv.XJYe6qQ6KYcbtHRjLugcKEe3Ena2N1x1.A7tsEMThMqFj1K3C', '', '$2y$10$6HDe2Sy6tD1HIoXT2fNSEO649W9tUrCEFcH0amJv7QUB46I.lnhXm', 0, 0, '2020-08-09 15:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videosId` int(11) NOT NULL,
  `videoId` varchar(80) NOT NULL,
  `userId` int(50) NOT NULL,
  `videoTitle` varchar(300) NOT NULL,
  `videoDesc` varchar(1000) NOT NULL,
  `videoImage` varchar(200) NOT NULL,
  `videoUrl` varchar(200) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videosId`, `videoId`, `userId`, `videoTitle`, `videoDesc`, `videoImage`, `videoUrl`, `timestamp`) VALUES
(39, '5f06e9dc10d5e', 190, 'Dhvani Bhanushali, Tanishk Bagchi Nikhil D Bhushan Kumar Radhika Rao, Vinay Sapru', 'Dhvani Bhanushali, Tanishk Bagchi Nikhil D Bhushan Kumar Radhika Rao, Vinay Sapru', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f06e9dc10930.png', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f06e9dc10d5e.mp4', '2020-07-09 09:56:44.070537'),
(40, '5f06ea4894375', 190, 'LIKH DIA - MANAN BHARDWAJ - USTAD NUSRAT FATEH ALI KHAN - NEW LYRICS', 'LIKH DIA - MANAN BHARDWAJ - USTAD NUSRAT FATEH ALI KHAN - NEW LYRICS', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f06ea4893e66.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f06ea4894375.mp4', '2020-07-09 09:58:32.608944'),
(42, '5f073cd20a11d', 190, 'Ishq Bhi Kiya Re Maula Full Video Song Jism 2 - Sunny Leone, Randeep Hooda, Arunnoday Singh', 'Ishq Bhi Kiya Re Maula Full Video Song Jism 2 - Sunny Leone, Randeep Hooda, Arunnoday Singh', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f073cd209e62.png', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f073cd20a11d.mp4', '2020-07-09 15:50:42.042057'),
(43, '5f073d252551c', 190, 'Muhabbat Tumse Nafrat Hai (Full Ost Lyrics ) - Rahat Fateh Ali Khan - Sahir Ali Bagga', 'Muhabbat Tumse Nafrat Hai (Full Ost Lyrics ) - Rahat Fateh Ali Khan - Sahir Ali Bagga', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f073d2525108.png', 'http://famblahapi.socialcodia.ml/public/uploads/videos/5f078d65e267b.mp4', '2020-07-09 21:37:16.314936'),
(44, '5f078d65e267b', 190, 'Roya Hai - Manan Bhardwaj - The Project Manan Bhardwaj - Namyoho Studios\n', 'Roya Hai - Manan Bhardwaj - The Project Manan Bhardwaj - Namyoho Studios\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f078d65e23b6.jpg', 'http://famblahapi.socialcodia.ml/public/uploads/videos/5f06ea4894375.mp4', '2020-07-09 21:38:41.524154'),
(45, '5f079088b45cd', 190, 'Aankh Uthi -Manan bhardwaj - Sarthak (recording session){USTAD NFAK}\n\n', 'Aankh Uthi -Manan bhardwaj - Sarthak (recording session){USTAD NFAK}\n\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f079088b42e4.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f079088b45cd.mp4', '2020-07-09 21:47:52.739782'),
(46, '5f0790d54004c', 190, 'Idhar Zindagi Ka Janaza - Manan Bhardwaj - Sarthak - The Project Manan Bhardwaj\r\n\r\n\r\n', 'Idhar Zindagi Ka Janaza - Manan Bhardwaj - Sarthak - The Project Manan Bhardwaj - Full Video - 2019\n\n\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f0790d53fdd9.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f0790d54004c.mp4', '2020-08-27 09:32:33.156043'),
(47, '5f07912337060', 190, 'Bewafa Tera Yun Muskurana - Manan Bhardwaj - Sarthak\r\n\r\n\r\n\r\n', 'Bewafa Tera Yun Muskurana - Manan Bhardwaj - Sarthak - The Project Manan Bhardwaj \"Namyoho Studios\"\n\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f07912336dc3.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f07912337060.mp4', '2020-08-27 09:33:19.441632'),
(48, '5f0791693934f', 190, 'Zinda Rehne Ke Liye | Manan Bhardwaj Feat. Anubha | New Song\r\n\r\n\r\n\r\n\r\n', 'Zinda Rehne Ke Liye | Manan Bhardwaj Feat. Anubha | New Song 2019 | Hindi Romantic Songs 2019\n\n\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f0791693905a.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f0791693934f.mp4', '2020-08-27 09:34:24.898658'),
(49, '5f0791b95ac4f', 190, 'Ye Jo Halka Halka Suroor Hai - Manan Bhardwaj - Ustad Nusrat Fateh Ali Khan\n\n\n\n\n\n', 'Ye Jo Halka Halka Suroor Hai - Manan Bhardwaj - Ustad Nusrat Fateh Ali Khan\n\n\n\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f0791b95a9cb.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f0791b95ac4f.mp4', '2020-07-09 21:52:57.372761'),
(50, '5f0791ef7a71e', 190, 'Wo Tera Kehna KI Main Hun Zindagi Teri - Manan Bhardwaj - Sarthak - ORIGINAL SONG\n \n\n\n\n\n\n', 'Wo Tera Kehna KI Main Hun Zindagi Teri - Manan Bhardwaj - Sarthak - ORIGINAL SONG\n\n\n\n\n', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/thumbnail/5f0791ef7a477.jpg', 'http://socialcodia.net/SocialApiFriendsSystem/public/uploads/videos/5f0791ef7a71e.mp4', '2020-07-09 21:53:51.502551'),
(51, '5f47a9d4b8f99', 189, 'Kyon sharab peena sikha diya.', 'a heart touching song', '', 'http://socialcodia.net/SocialApiFriendsSystemVideo/public/uploads/videos/5f47a9d4b8f99.mp4', '2020-08-27 12:43:26.555789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`commentLikeId`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contactUsId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`feedId`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`followsId`);

--
-- Indexes for table `friendrequests`
--
ALTER TABLE `friendrequests`
  ADD PRIMARY KEY (`friendRequestId`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friendsId`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notificationId`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`reportId`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videosId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `commentLikeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contactUsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `feedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56928;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `followsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `friendrequests`
--
ALTER TABLE `friendrequests`
  MODIFY `friendRequestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `friendsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `reportId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videosId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
