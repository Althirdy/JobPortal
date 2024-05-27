-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 02:36 AM
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
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `employment_type`
--

CREATE TABLE `employment_type` (
  `id` int(11) NOT NULL,
  `employment` varchar(20) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_type`
--

INSERT INTO `employment_type` (`id`, `employment`, `added_at`) VALUES
(1, 'FULL TIME', '2024-05-22 06:59:12'),
(2, 'PART TIME', '2024-05-22 06:59:12'),
(3, 'FREELANCE', '2024-05-22 06:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `experience_level`
--

CREATE TABLE `experience_level` (
  `id` int(11) NOT NULL,
  `experience` varchar(30) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience_level`
--

INSERT INTO `experience_level` (`id`, `experience`, `added_at`) VALUES
(1, 'JUNIOR LEVEL', '2024-05-21 23:01:34'),
(2, 'MID LEVEL', '2024-05-21 23:01:34'),
(3, 'SENIOR LEVEL', '2024-05-21 23:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `employment_type` varchar(20) NOT NULL,
  `experience_level` varchar(30) NOT NULL,
  `required_work_experience` varchar(30) NOT NULL,
  `education_level` varchar(40) NOT NULL,
  `rate_per_hour` double NOT NULL,
  `work_arrangement` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `skill_preferred` mediumblob NOT NULL,
  `job_description` longblob NOT NULL,
  `job_status_id` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `job_title`, `employment_type`, `experience_level`, `required_work_experience`, `education_level`, `rate_per_hour`, `work_arrangement`, `location`, `skill_preferred`, `job_description`, `job_status_id`, `added_at`, `updated_at`) VALUES
(1, 3, 'SENIOR WEB DEVELOPER', 'FULL TIME', 'JUNIOR LEVEL', '8 MONTHS', 'NO EDUCATIONAL REQUIRED', 2500, 'ON SITE', 'BGC, MAKATI CITY', 0x4e6f6465204a732c205265616374204a732c204d7973716c, 0x496e207468697320726f6c652c20796f75276c6c20776f726b20696e206f6e65206f66206f75722049424d20436f6e73756c74696e6720436c69656e7420496e6e6f766174696f6e2043656e74657273202844656c69766572792043656e74657273292c2077686572652077652064656c69766572206465657020746563686e6963616c20616e6420696e6475737472792065787065727469736520746f206120776964652072616e6765206f66207075626c696320616e64207072697661746520736563746f7220636c69656e74732061726f756e642074686520776f726c642e204f75722064656c69766572792063656e74657273206f66666572206f757220636c69656e7473206c6f63616c6c7920626173656420736b696c6c7320616e6420746563686e6963616c2065787065727469736520746f20647269766520696e6e6f766174696f6e20616e642061646f7074696f6e206f66206e657720746563686e6f6c6f67792e, 4, '2024-05-21 23:49:38', '2024-05-21 23:49:38'),
(2, 3, 'JUNIOR WEB DEVELOPER', 'PART TIME', 'SENIOR LEVEL', 'ATLEAST 1 YEAR', 'COLLEGE GRADUATE', 2500.23, 'ON SITE', 'QUEZON CITY', 0x4e6f6465204a732c205265616374204a732c, 0x696e207468697320726f6c652c20796f75276c6c20776f726b20696e206f6e65206f66206f75722049424d20436f6e73756c74696e6720436c69656e7420496e6e6f766174696f6e2043656e74657273202844656c69766572792043656e74657273292c2077686572652077652064656c69766572206465657020746563686e6963616c20616e6420696e6475737472792065787065727469736520746f206120776964652072616e6765206f66207075626c696320616e64207072697661746520736563746f7220636c69656e74732061726f756e642074686520776f726c642e204f75722064656c69766572792063656e74657273206f66666572206f757220636c69656e7473206c6f63616c6c7920626173656420736b696c6c7320616e6420746563686e6963616c2065787065727469736520746f20647269766520696e6e6f766174696f6e20616e642061646f7074696f6e206f66206e657720746563686e6f6c6f67792e, 1, '2024-05-21 23:55:08', '2024-05-21 23:55:08'),
(3, 3, 'APP DEVELOPER', 'PART TIME', 'MID LEVEL', '1-2 YEARS', 'COLLEGE GRADUATE', 3000.25, 'WORK FROM HOME', 'MAKATI CITY', 0x4e6f6465204a730d0a4d7973716c0d0a4323, 0x49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e, 1, '2024-05-22 00:15:50', '2024-05-22 00:15:50'),
(4, 3, 'NODEJS DEVELOPER', 'FREELANCE', 'SENIOR LEVEL', '5 YEARS', 'COLLEGE GRADUATE', 4000, 'HYBRID', 'PARANAQUE CITY', 0x4c6f72656d, 0x4c6f72656d20313233, 1, '2024-05-22 00:21:27', '2024-05-22 00:21:27'),
(5, 4, 'SR. ANDROID DEVELOPER', 'FULL TIME', 'MID LEVEL', 'ALTEAST 5 YEARS', 'COLLEGE GRADUATE', 5000, 'ON SITE', 'PARANAQUE CITY', 0x74657374, 0x74657374, 1, '2024-05-22 02:02:56', '2024-05-22 02:02:56'),
(6, 4, 'JR. WEB DEVELOPER', 'FULL TIME', 'SENIOR LEVEL', '5 YEARS', 'COLLEGE GRADUATE BS COMPUTER SCIENCE OR ', 5000, 'ON SITE', 'MAKATI CITY, BGC', 0x74657374, 0x74657374, 1, '2024-05-22 02:06:39', '2024-05-22 02:06:39'),
(7, 4, 'SOFTWARE ENGINEER', 'PART TIME', 'SENIOR LEVEL', '10 YEARS OF EXPERIENCE', 'COLLEGE GRADUATE', 5000, 'WORK FROM HOME', 'MAKATI CITY', 0x2a204e6f6465204a73200d0a2a4d7973716c0d0a2a52656163740d0a, 0x4c6f72656d20496d7073756d203132336173206173646120617364647177652061736420717765206173206471776471776420617364207a78642061736420, 1, '2024-05-22 11:29:05', '2024-05-22 11:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `id` int(11) NOT NULL,
  `file_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_application`
--

INSERT INTO `job_application` (`id`, `file_name`, `user_id`, `company_id`, `job_id`, `remarks`, `added_at`) VALUES
(6, '6e9e54cb-e952-4f35-87da-4488a8b9447e.pdf', 2, 3, 1, '', '2024-05-22 11:20:29'),
(7, '89670851-f841-4723-a959-532af818ddf6.pdf', 2, 3, 2, 'Test Apply', '2024-05-22 11:25:44'),
(8, 'f539170b-e187-4f52-9e3c-85f7db7adae7.pdf', 5, 3, 1, 'Hi Sir I am Han', '2024-05-23 08:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `job_status`
--

CREATE TABLE `job_status` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_status`
--

INSERT INTO `job_status` (`id`, `status`, `added_at`) VALUES
(1, 'ON GOING', '2024-05-21 23:07:27'),
(2, 'CLOSED', '2024-05-21 23:07:27'),
(3, 'FILLED', '2024-05-21 23:07:27'),
(4, 'ON HOLD', '2024-05-21 23:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `save_jobs`
--

CREATE TABLE `save_jobs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jobs_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `save_jobs`
--

INSERT INTO `save_jobs` (`id`, `user_id`, `jobs_id`, `is_deleted`, `added_at`) VALUES
(1, 2, 1, 1, '2024-05-22 01:07:16'),
(7, 2, 2, 1, '2024-05-22 01:23:52'),
(12, 2, 3, 1, '2024-05-22 01:40:14'),
(13, 2, 1, 1, '2024-05-22 01:58:19'),
(14, 2, 1, 1, '2024-05-22 02:06:59'),
(15, 2, 1, 1, '2024-05-22 02:08:04'),
(16, 2, 1, 1, '2024-05-22 02:08:35'),
(17, 2, 1, 1, '2024-05-22 02:09:22'),
(18, 2, 1, 1, '2024-05-22 02:09:58'),
(19, 2, 1, 1, '2024-05-22 02:12:01'),
(20, 2, 3, 1, '2024-05-22 02:12:11'),
(21, 2, 4, 1, '2024-05-22 02:15:00'),
(22, 2, 1, 1, '2024-05-22 02:21:02'),
(23, 2, 1, 1, '2024-05-22 02:21:18'),
(24, 2, 1, 1, '2024-05-22 02:21:36'),
(25, 2, 2, 1, '2024-05-22 02:27:48'),
(26, 2, 2, 1, '2024-05-22 02:36:12'),
(27, 2, 2, 1, '2024-05-22 02:36:58'),
(28, 2, 1, 1, '2024-05-22 02:39:30'),
(29, 2, 2, 0, '2024-05-22 02:45:49'),
(30, 2, 3, 1, '2024-05-22 02:45:53'),
(31, 2, 1, 1, '2024-05-22 06:32:46'),
(32, 2, 1, 1, '2024-05-22 06:35:25'),
(33, 2, 7, 1, '2024-05-22 11:29:23'),
(34, 5, 1, 0, '2024-05-23 08:10:41'),
(35, 2, 3, 0, '2024-05-23 10:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(75) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `user_type` int(11) NOT NULL COMMENT ' 1 = APPLICANT || 2 = EMPLOYEER',
  `password` text NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `contact_no`, `address`, `user_type`, `password`, `added_at`) VALUES
(2, 'ALFREDO SANGER', 'ALTHIRDYSANGER@GMAIL.COM', '09301420649', 'PH8 B PKG 4 LOT 37 BAGONG SILANG CALOOCAN CITY', 1, '5f4dcc3b5aa765d61d8327deb882cf99', '2024-05-21 14:04:37'),
(3, 'WATSON INC.', 'WATSON@GMAIL.COM', '09301402502', 'BRGY 176 BAGONG SILANG CALOOCAN CITY', 2, '5f4dcc3b5aa765d61d8327deb882cf99', '2024-05-21 14:24:57'),
(4, 'VIGIL INCORPORATION', 'VIGIL@GMAIL.COM', '09301420649', 'PARANAQUE CITY', 2, '5f4dcc3b5aa765d61d8327deb882cf99', '2024-05-22 02:01:58'),
(5, 'HANNS GRANADOZO', 'HAN@GMAIL.COM', '09301420649', 'SPORTS COMPLEX CAMARIN SM', 1, '5f4dcc3b5aa765d61d8327deb882cf99', '2024-05-23 08:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `work_arrangement`
--

CREATE TABLE `work_arrangement` (
  `id` int(11) NOT NULL,
  `work` varchar(30) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_arrangement`
--

INSERT INTO `work_arrangement` (`id`, `work`, `added_at`) VALUES
(1, 'WORK FROM HOME', '2024-05-21 23:01:58'),
(2, 'ON SITE', '2024-05-21 23:01:58'),
(3, 'HYBRID', '2024-05-21 23:01:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employment_type`
--
ALTER TABLE `employment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_level`
--
ALTER TABLE `experience_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `employment_type_id` (`employment_type`),
  ADD KEY `exp_id` (`experience_level`),
  ADD KEY `status_id` (`job_status_id`),
  ADD KEY `work_arrangement_id` (`work_arrangement`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_status`
--
ALTER TABLE `job_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_jobs`
--
ALTER TABLE `save_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `jobs_id` (`jobs_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_arrangement`
--
ALTER TABLE `work_arrangement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employment_type`
--
ALTER TABLE `employment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experience_level`
--
ALTER TABLE `experience_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_status`
--
ALTER TABLE `job_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `save_jobs`
--
ALTER TABLE `save_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work_arrangement`
--
ALTER TABLE `work_arrangement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `company_id` FOREIGN KEY (`company_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `status_id` FOREIGN KEY (`job_status_id`) REFERENCES `job_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `save_jobs`
--
ALTER TABLE `save_jobs`
  ADD CONSTRAINT `jobs_id` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
