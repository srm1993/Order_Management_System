-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 03:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assesment`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `userDetails` ()   BEGIN
select * from user_master;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `country`) VALUES
(1, '3', 'Australia'),
(2, '3', 'Australia'),
(3, '3', 'Australia'),
(4, '3', 'Australia'),
(5, '3', 'Australia'),
(6, '3', 'Australia'),
(7, '3', 'Australia'),
(8, '3', 'Australia'),
(9, '3', 'Australia'),
(10, '3', 'Australia'),
(11, '3', 'Australia'),
(12, '3', 'Australia'),
(13, '3', 'Australia'),
(14, '3', 'Australia'),
(15, '3', 'Australia'),
(16, '3', 'Australia'),
(17, '3', 'Australia'),
(18, '3', 'Australia'),
(19, '3', 'Australia'),
(20, '3', 'Australia'),
(21, '3', 'Australia'),
(22, '3', 'Australia'),
(23, '3', 'Australia'),
(24, '3', 'Australia'),
(25, '3', 'Australia'),
(26, '3', 'Australia'),
(27, '3', 'Australia'),
(28, '3', 'Australia'),
(29, '3', 'Australia'),
(30, '3', 'Australia'),
(31, '3', 'Australia'),
(32, '3', 'Australia'),
(33, '3', 'Australia'),
(34, '3', 'Australia'),
(35, '3', 'Australia'),
(36, '3', 'Australia'),
(37, '3', 'Australia'),
(38, '3', 'Australia'),
(39, '3', 'Australia'),
(40, '3', 'Australia'),
(41, '3', 'Australia'),
(42, '3', 'Australia'),
(43, '3', 'Australia'),
(44, '3', 'Australia'),
(45, '3', 'Australia'),
(46, '3', 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `admission_details`
--

CREATE TABLE `admission_details` (
  `slno` int(11) NOT NULL,
  `applicant_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `tenth_mark` varchar(50) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission_details`
--

INSERT INTO `admission_details` (`slno`, `applicant_name`, `email`, `phone_no`, `tenth_mark`, `college_id`) VALUES
(1, 'Soumya', 'lit.soumyamahalik@gmail.com', '1234', '12%', 1),
(2, 'hgfd', 'se@gmail.com', '987654321', '78%', 2);

-- --------------------------------------------------------

--
-- Table structure for table `college_master`
--

CREATE TABLE `college_master` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(50) NOT NULL,
  `fees` bigint(20) NOT NULL,
  `total_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_master`
--

INSERT INTO `college_master` (`college_id`, `college_name`, `fees`, `total_seats`) VALUES
(1, 'cvraman', 20000, 19),
(2, 'ITER', 30000, 24);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`cid`, `name`) VALUES
(1, 'India'),
(2, 'Pakistan'),
(3, 'China');

-- --------------------------------------------------------

--
-- Table structure for table `curl_login`
--

CREATE TABLE `curl_login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curl_login`
--

INSERT INTO `curl_login` (`id`, `name`, `contact`, `email`, `password`) VALUES
(1, 'soumya', '9777565670', 'soumyaranjan23456@gmail.com', 'kadali@90'),
(2, 'raja', '98765432', 'User@User.com', 'kadali@90');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `did` int(11) NOT NULL,
  `Dept` varchar(100) NOT NULL,
  `slno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`did`, `Dept`, `slno`) VALUES
(1, 'HR', 1),
(2, 'MSME', 2),
(3, 'Finance', 3),
(4, 'Home', 4);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_28_140540_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `orderid` int(11) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orderqty` bigint(20) NOT NULL,
  `ordervalue` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`orderid`, `productid`, `orderdate`, `orderqty`, `ordervalue`) VALUES
(57, 1, '2023-05-22 21:43:40', 5, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `amount`, `status`, `stock`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Phone', 'VIVO-V15Pro', 30000.00, 1, 30, NULL, '2023-04-28 09:20:11', '2023-04-28 09:20:11'),
(2, 'Laptop', 'HP', 30000.00, 1, 30, NULL, '2023-05-08 09:35:39', '2023-05-08 09:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `productid` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `unitprice` bigint(20) NOT NULL,
  `productqty` bigint(20) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`productid`, `name`, `unitprice`, `productqty`, `Date`) VALUES
(1, 'Mobile Phone', 15000, 10, '2023-05-23 03:13:40'),
(2, 'Laptop', 25000, 10, '2022-10-25 07:26:56'),
(3, 'Head Phone', 900, 9, '2022-10-25 07:26:56'),
(5, 'Power Bank', 1200, 8, '2022-10-25 07:26:56'),
(6, 'Desktop', 35000, 50, '2022-10-27 13:47:07'),
(7, 'Tab', 15000, 15, '2022-10-25 10:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `cname` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `subject` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `lname`, `cname`, `email`, `phone`, `subject`, `status`) VALUES
('soumyaranjan', 'mahalik', 'hitech', 'lit@gmail.com', 9777565670, 'Mathematics', 'on'),
('soumyaranjan', 'mahalik', 'hitech', 'lit@gmail.com', 9777565670, 'Mathematics', 'on'),
('soumyaranjan', 'mahalik', 'hitech', 'lit@gmail.com', 9777565670, 'Mathematics', 'on'),
('raja', 'rani', 'etech', 'hjre@gmail.com', 9667255672, 'Science', 'on'),
('raja', 'rani', 'etech', 'hjre@gmail.com', 9667255672, 'Science', 'on'),
('raja', 'rani', 'tech', 'john.biswal.167@gmail.com', 9777565670, 'English', 'on'),
('raja', 'mahalik', 'rama', 'jhdJUd@gmail.com', 997655, 'English', 'on'),
('soumyaranjan', 'mahalik', 'tech', 'lit@gmail.com', 9777565670, 'English', 'on'),
('soumyaranjan', 'mahalik', 'tech', 'lit@gmail.com', 9777565670, 'English', 'on'),
('rajesh', 'kumar', 'royal', '0987@gmail.com', 987654321, 'Mathematics', 'on'),
('rajesh', 'prusty', 'royal', 'jhdjd@gmail.com', 997655, 'English', 'on'),
('rajesh', 'kumar', 'royal', '0987@gmail.com', 987654321, 'Mathematics', 'on'),
('raja', 'mahalik', 'rama', 'jhdJUd@gmail.com', 997655, 'English', 'on'),
('oshnohuo', 'ndiygioiyg', 'hxgs8doudh', 'bxgDBdgo', 987654321, 'Science', 'Yes'),
('u', 'h', 'j', 'k', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `username`, `email`, `mobile`, `password`) VALUES
(2, 'Soumya', 'soumyaranjan23456@gmail.com', '9777565670', 'Soumya@123'),
(4, 'Akash', 'akashkumar191981@gmail.com', '9693643420', 'Akash@123'),
(5, 'Jasmine', 'jkausar157@gmail.com', '9437832775', 'Jasmine@123');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `userid` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roll_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`userid`, `user_name`, `password`, `roll_name`) VALUES
(1, 'suman', 'suman', 'user'),
(2, 'aman', 'aman', 'Admin'),
(6, 'soumya', 'soumya', 'User'),
(7, 'User', 'User', 'User'),
(13, 'Soumyaranjan', '1', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_details`
--
ALTER TABLE `admission_details`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `college_master`
--
ALTER TABLE `college_master`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `curl_login`
--
ALTER TABLE `curl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `ok` (`productid`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `admission_details`
--
ALTER TABLE `admission_details`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `college_master`
--
ALTER TABLE `college_master`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curl_login`
--
ALTER TABLE `curl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `productid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
