-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 07:14 AM
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
-- Database: `loanmanagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

CREATE TABLE `account_details` (
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `branch_address` text NOT NULL,
  `account_holder_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `Type_of_Account` varchar(50) NOT NULL,
  `account_oprete_since` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `micr_code` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_details`
--

INSERT INTO `account_details` (`account_id`, `loan_id`, `cust_id`, `bank_name`, `branch_address`, `account_holder_name`, `account_number`, `Type_of_Account`, `account_oprete_since`, `ifsc_code`, `micr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Hdfc Bank', '120,hdfcbank,aru,navsari', 'Shivang Thakorbhai Patel', '74125863222', 'Saving', '2010', 'hdfc0135', 'oplo456', '2024-04-12 03:36:07', '2024-04-12 03:36:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countrycode`
--

CREATE TABLE `countrycode` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `state_code` varchar(50) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countrycode`
--

INSERT INTO `countrycode` (`id`, `state_name`, `state_code`, `country_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Andaman and Nicobar Islands', 'AN', 'IN-AN', '2024-04-16 08:33:03', '2024-04-16 08:33:03', NULL),
(2, 'Andhra Pradesh', 'AP', 'IN-AP', '2024-04-16 08:33:15', '2024-04-16 08:33:15', NULL),
(3, 'Arunachal Pradesh', 'AR', 'IN-AR', '2024-04-16 08:33:24', '2024-04-16 08:33:24', NULL),
(4, 'Assam', 'AS', 'IN-AS', '2024-04-16 08:34:01', '2024-04-16 08:34:01', NULL),
(5, 'Bihar', 'BR', 'IN-BR', '2024-04-16 08:34:34', '2024-04-16 08:34:34', NULL),
(6, 'Chandigarh', 'CH', 'IN-CH', '2024-04-16 08:35:07', '2024-04-16 08:35:07', NULL),
(7, 'Chattisgarh', 'CG', 'IN-CG', '2024-04-16 08:35:07', '2024-04-16 08:35:07', NULL),
(8, 'Dadra and Nagar Haveli', 'DN', 'IN-DH*', '2024-04-16 08:36:13', '2024-04-16 08:36:13', NULL),
(9, 'Daman and Diu', 'DD', 'IN-DH*', '2024-04-16 08:36:13', '2024-04-16 08:36:13', NULL),
(10, 'Delhi', 'DL', 'IN-DL', '2024-04-16 08:37:53', '2024-04-16 08:37:53', NULL),
(11, 'Goa', 'GA', 'IN-GA', '2024-04-16 08:37:53', '2024-04-16 08:37:53', NULL),
(12, 'Gujarat', 'GJ', 'IN-GJ', '2024-04-16 08:39:11', '2024-04-16 08:39:11', NULL),
(13, 'Haryana', 'HR', 'IN-HR', '2024-04-16 08:39:11', '2024-04-16 08:39:11', NULL),
(14, 'Himachal Pradesh', 'HP', 'IN-HP', '2024-04-16 08:40:04', '2024-04-16 08:40:04', NULL),
(15, 'Jammu and Kashmir', 'JK', 'IN-JK', '2024-04-16 08:40:04', '2024-04-16 08:40:04', NULL),
(16, 'Jharkhand', 'JH', 'IN-JH', '2024-04-16 08:41:08', '2024-04-16 08:41:08', NULL),
(17, 'Karnataka', 'KA', 'IN-KA', '2024-04-16 08:41:08', '2024-04-16 08:41:08', NULL),
(18, 'Kerala', 'KL', 'IN-KL', '2024-04-16 08:42:07', '2024-04-16 08:42:07', NULL),
(19, 'Ladakh', 'LA', 'IN-LA', '2024-04-16 08:42:07', '2024-04-16 08:42:07', NULL),
(20, 'Lakshadweep', 'LD', 'IN-LD', '2024-04-16 08:43:04', '2024-04-16 08:43:04', NULL),
(21, 'Madhya Pradesh', 'MP', 'IN-MP', '2024-04-16 08:43:04', '2024-04-16 08:43:04', NULL),
(22, 'Maharashtra', 'MH', 'IN-MH', '2024-04-16 08:44:04', '2024-04-16 08:44:04', NULL),
(23, 'Manipur', 'MN', 'IN-MN', '2024-04-16 08:44:04', '2024-04-16 08:44:04', NULL),
(24, 'Meghalaya', 'ML', 'IN-ML', '2024-04-16 08:45:45', '2024-04-16 08:45:45', NULL),
(25, 'Mizoram', 'MZ', 'IN-MZ', '2024-04-16 08:45:45', '2024-04-16 08:45:45', NULL),
(26, 'Nagaland', 'NL', 'IN-NL', '2024-04-16 08:47:05', '2024-04-16 08:47:05', NULL),
(27, 'Odisha', 'OR', 'IN-OD', '2024-04-16 08:47:05', '2024-04-16 08:47:05', NULL),
(28, 'Puducherry', 'PY', 'IN-PY', '2024-04-16 08:48:58', '2024-04-16 08:48:58', NULL),
(29, 'Punjab', 'PB', 'IN-PB', '2024-04-16 08:48:58', '2024-04-16 08:48:58', NULL),
(30, 'Rajasthan', 'RJ', 'IN-RJ', '2024-04-16 08:49:51', '2024-04-16 08:49:51', NULL),
(31, 'Sikkim', 'SK', 'IN-SK', '2024-04-16 08:49:51', '2024-04-16 08:49:51', NULL),
(32, 'Tamil Nadu', 'TN', 'IN-TN', '2024-04-16 08:50:53', '2024-04-16 08:50:53', NULL),
(33, 'Telangana', 'TS', 'IN-TS', '2024-04-16 08:50:53', '2024-04-16 08:50:53', NULL),
(34, 'Tripura', 'TR', 'IN-TR', '2024-04-16 08:51:53', '2024-04-16 08:51:53', NULL),
(35, 'Uttar Pradesh', 'UP', 'IN-UP', '2024-04-16 08:51:53', '2024-04-16 08:51:53', NULL),
(36, 'Uttarakhand', 'UA', 'IN-UK', '2024-04-16 08:53:07', '2024-04-16 08:53:07', NULL),
(37, 'West Bengal', 'WB', 'IN-WB', '2024-04-16 08:53:07', '2024-04-16 08:53:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `co_customer_details`
--

CREATE TABLE `co_customer_details` (
  `co_cust_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL,
  `co_cust_name` text NOT NULL,
  `relation_with_applicant` enum('Partner','Director','Proprietor','Promoter','Karta','Benificiary','Others') NOT NULL,
  `applying_as_co_borrower` enum('Yes','No') NOT NULL,
  `father_or_spouse_name` varchar(50) NOT NULL,
  `shareholding_with_cust_entity` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `Marital_Status` enum('Married','UnMarried') NOT NULL,
  `Citizenship` varchar(20) NOT NULL,
  `Residential_Status` enum('Resident Individual','Non Resident India','Foreign National','Person of Indian Origin') NOT NULL,
  `Occupation_type` enum('Service','Business','Not categorized','Others') NOT NULL,
  `Different_from_Permanent_addess` enum('Yes','No') NOT NULL,
  `Current_Residence_Address` text NOT NULL,
  `Current_Landmark` varchar(100) NOT NULL,
  `Current_City` varchar(100) NOT NULL,
  `Current_District` varchar(100) NOT NULL,
  `Current_State` varchar(100) NOT NULL,
  `Current_pincode` int(11) NOT NULL,
  `Current_State_code` varchar(100) NOT NULL,
  `Current_Country_Code` varchar(100) NOT NULL,
  `Residence_Type` enum('Rented','Owned','Parental','Other') NOT NULL,
  `Current_Residences_years` varchar(50) NOT NULL,
  `Address_as_per_proof` enum('Yes','No') NOT NULL,
  `Permanent_Residence_Address` text NOT NULL,
  `Permanent_Landmark` varchar(100) NOT NULL,
  `Permanent_City` varchar(100) NOT NULL,
  `Permanent_District` varchar(100) NOT NULL,
  `Permanent_State` varchar(100) NOT NULL,
  `Permanent_pincode` int(11) NOT NULL,
  `Permanent_State_code` varchar(100) NOT NULL,
  `Permanent_Country_Code` varchar(100) NOT NULL,
  `co_cust_Mobile_no` varchar(20) NOT NULL,
  `co_cust_email` varchar(50) NOT NULL,
  `co_cust_pannumber` varchar(50) NOT NULL,
  `co_cust_Form_60` enum('Yes','No') NOT NULL,
  `co_cust_adharnumber` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `co_customer_details`
--

INSERT INTO `co_customer_details` (`co_cust_id`, `loan_id`, `cust_id`, `title`, `co_cust_name`, `relation_with_applicant`, `applying_as_co_borrower`, `father_or_spouse_name`, `shareholding_with_cust_entity`, `Date_of_Birth`, `Gender`, `Marital_Status`, `Citizenship`, `Residential_Status`, `Occupation_type`, `Different_from_Permanent_addess`, `Current_Residence_Address`, `Current_Landmark`, `Current_City`, `Current_District`, `Current_State`, `Current_pincode`, `Current_State_code`, `Current_Country_Code`, `Residence_Type`, `Current_Residences_years`, `Address_as_per_proof`, `Permanent_Residence_Address`, `Permanent_Landmark`, `Permanent_City`, `Permanent_District`, `Permanent_State`, `Permanent_pincode`, `Permanent_State_code`, `Permanent_Country_Code`, `co_cust_Mobile_no`, `co_cust_email`, `co_cust_pannumber`, `co_cust_Form_60`, `co_cust_adharnumber`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'mr', 'devu patel', 'Partner', 'Yes', 'thakorbhai', '5', '2024-04-24', 'Male', 'Married', 'indian', 'Resident Individual', 'Service', 'Yes', '104,luhar faliya', 'nera masjid', 'SURAT', 'Valsad', 'GUJARAT', 396001, 'GJ', 'IN', 'Rented', '20', 'Yes', '104 , luhar faluya', 'near masjid', 'SURAT', 'Valsad', 'GUJARAT', 396001, 'GJ', 'IN', '9687758595', 'sp@gmail.com', 'ABGPP6638J', 'No', '7896153625871259', '2024-04-08 05:41:36', '2024-04-08 05:41:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_entity_type` varchar(100) NOT NULL,
  `Date_of_Incorporation` date NOT NULL,
  `Principal_office_address` text NOT NULL,
  `Principal_City` varchar(50) NOT NULL,
  `Principal_District` varchar(50) NOT NULL,
  `Principal_State` varchar(50) NOT NULL,
  `Principal_pincode` varchar(20) NOT NULL,
  `Principal_State_code` varchar(5) NOT NULL,
  `Principal_Country_Code` varchar(5) NOT NULL,
  `Permanent_office_address` text NOT NULL,
  `Permanent_City` varchar(50) NOT NULL,
  `Permanent_District` varchar(50) NOT NULL,
  `Permanent_State` varchar(50) NOT NULL,
  `Permanent_pincode` varchar(20) NOT NULL,
  `Permanent_State_code` varchar(5) NOT NULL,
  `Permanent_Country_Code` varchar(5) NOT NULL,
  `Place_of_incorporation` varchar(100) NOT NULL,
  `cust_Telephone` varchar(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `Type_of_Industry` varchar(40) NOT NULL,
  `Segment` varchar(40) NOT NULL,
  `cust_gst` varchar(20) NOT NULL,
  `cust_pannumber` varchar(40) NOT NULL,
  `Form_60` enum('YES','NO') NOT NULL,
  `Overall_Business_Vintage` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`cust_id`, `loan_id`, `cust_name`, `cust_entity_type`, `Date_of_Incorporation`, `Principal_office_address`, `Principal_City`, `Principal_District`, `Principal_State`, `Principal_pincode`, `Principal_State_code`, `Principal_Country_Code`, `Permanent_office_address`, `Permanent_City`, `Permanent_District`, `Permanent_State`, `Permanent_pincode`, `Permanent_State_code`, `Permanent_Country_Code`, `Place_of_incorporation`, `cust_Telephone`, `cust_email`, `Type_of_Industry`, `Segment`, `cust_gst`, `cust_pannumber`, `Form_60`, `Overall_Business_Vintage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 4, 'shivang patel', 'Others', '2024-04-19', '0, manek bhavan Kailash road Valsad, valsad,gujarat 396001', 'Dhamdachi', 'Valsad', 'Gujarat', '396001', 'GJ', 'IN-GJ', '0, manek bhavan Kailash road Valsad, valsad,gujarat 396001', 'Dhamdachi', 'Valsad', 'Gujarat', '396001', 'GJ', 'IN-GJ', '105, manek bhavan Kailash road Valsad, valsad,gujarat 396001', '9824050660', 'info@ottaboxtechnologies.com', 'Cement', 'Trading', '20', 'ABGPP6638J', 'NO', '6', '2024-04-20 03:08:39', '2024-04-20 03:08:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_reference`
--

CREATE TABLE `customer_reference` (
  `ref_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Relation_with_applicant` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_reference`
--

INSERT INTO `customer_reference` (`ref_id`, `loan_id`, `cust_id`, `Name`, `Address`, `City`, `pincode`, `State`, `Country`, `Phone`, `Mobile`, `Email`, `Relation_with_applicant`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'shivang', 'dambher', 'navsari', 396445, 'gujrat', 'india', '9687758595', '8980153728', 'patelshivang@gmail.com', 'brother', '2024-04-12 06:05:44', '2024-04-12 06:05:44', NULL);

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
-- Table structure for table `form_offices`
--

CREATE TABLE `form_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_application`
--

CREATE TABLE `loan_application` (
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `ckyc_no` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `Prospect_No` varchar(20) NOT NULL,
  `Months` varchar(10) NOT NULL,
  `Loan_Amount` varchar(50) NOT NULL,
  `Purpose` varchar(50) NOT NULL,
  `Application_Type` varchar(100) NOT NULL,
  `Account_Type` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_application`
--

INSERT INTO `loan_application` (`loan_id`, `ckyc_no`, `date`, `customer_id`, `Prospect_No`, `Months`, `Loan_Amount`, `Purpose`, `Application_Type`, `Account_Type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SP260193', '2024-04-15', 1, 'FD0115042024', '36', '2000000.00', 'Working Capital', 'new', 'minor', '2024-04-15 04:48:26', '2024-04-15 04:48:26', NULL),
(2, 'SP100497', '2024-04-20', 2, 'FD0120042024', '24', '50000', 'Working Capital', 'updated', 'normal', '2024-04-20 02:03:38', '2024-04-20 02:03:38', NULL),
(3, 'sj45698', '2024-04-19', 3, 'FD0220042024', '12', '100000', 'Working Capital123', 'new', 'normal', '2024-04-20 02:36:18', '2024-04-20 02:36:18', NULL),
(4, 'SP10049789', '2024-04-25', 4, 'FD0320042024', '10', '10000', 'Working Capital10', 'new', 'normal', '2024-04-20 02:47:37', '2024-04-20 02:47:37', NULL);

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
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2024_03_11_055021_create_permission_tables', 1),
(36, '2024_04_03_063551_create_loan_application_table', 2),
(37, '2024_04_03_070055_create_customer_details_table', 3),
(38, '2024_04_03_074813_create_proprietor_details_table', 4),
(39, '2024_04_03_101730_create_co_customer_details_table', 5),
(40, '2024_04_03_105221_create_partners_details_table', 6),
(41, '2024_04_03_122917_create_account_details_table', 7),
(42, '2024_04_03_123727_create_customer_reference_table', 8),
(43, '2024_04_04_114557_create_form_offices_table', 9),
(44, '2024_04_04_115737_add_column_to_loan_application_table', 9),
(45, '2024_04_04_120002_add_column_to_loan_application_table', 10),
(46, '2024_04_12_085901_add_column_to_account_details_table', 11),
(47, '2024_04_12_090117_add_column_to_account_details_table', 12),
(48, '2024_04_12_111854_create_references_table', 13),
(49, '2024_04_16_082301_create_countrycode_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 7),
(7, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `partners_details`
--

CREATE TABLE `partners_details` (
  `co_partner_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `partners_name` text NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `partners_pannumber` varchar(50) NOT NULL,
  `partners_Residence_Address` text NOT NULL,
  `partners_Mobile_no` varchar(20) NOT NULL,
  `partners_workexp` varchar(20) NOT NULL,
  `shareholding_with_cust_entity` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners_details`
--

INSERT INTO `partners_details` (`co_partner_id`, `loan_id`, `cust_id`, `partners_name`, `Date_of_Birth`, `partners_pannumber`, `partners_Residence_Address`, `partners_Mobile_no`, `partners_workexp`, `shareholding_with_cust_entity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'SHIVANG PATEL', '1970-01-01', 'polo4569po', 'navsari', '9687758595', '2', '5', '2024-04-12 02:44:35', '2024-04-12 02:44:35', NULL);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'User access', 'web', '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(2, 'User edit', 'web', '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(3, 'User create', 'web', '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(4, 'User delete', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(5, 'Role access', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(6, 'Role edit', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(7, 'Role create', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(8, 'Role delete', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(9, 'Permission access', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(10, 'Permission edit', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(11, 'Permission create', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36'),
(12, 'Permission delete', 'web', '2024-03-13 00:37:36', '2024-03-13 00:37:36');

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
-- Table structure for table `proprietor_details`
--

CREATE TABLE `proprietor_details` (
  `proprietor_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL,
  `proprietor_name` text NOT NULL,
  `relation_with_applicant` enum('Partner','Director','Proprietor','Promoter','Karta','Benificiary','Others') NOT NULL,
  `applying_as_co_borrower` enum('Yes','No') NOT NULL,
  `father_or_spouse_name` varchar(50) NOT NULL,
  `shareholding_with_cust_entity` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `Marital_Status` enum('Married','UnMarried') NOT NULL,
  `Citizenship` varchar(20) NOT NULL,
  `Residential_Status` enum('Resident Individual','Non Resident India','Foreign National','Person of Indian Origin') NOT NULL,
  `Occupation_type` enum('Service','Business','Not categorized','Others') NOT NULL,
  `Different_from_Permanent_addess` enum('Yes','No') NOT NULL,
  `Current_Residence_Address` text NOT NULL,
  `Current_Landmark` varchar(100) NOT NULL,
  `Current_City` varchar(100) NOT NULL,
  `Current_District` varchar(100) NOT NULL,
  `Current_State` varchar(100) NOT NULL,
  `Current_pincode` int(11) NOT NULL,
  `Current_State_code` varchar(100) NOT NULL,
  `Current_Country_Code` varchar(100) NOT NULL,
  `Residence_Type` enum('Rented','Owned','Parental','Other') NOT NULL,
  `Current_Residences_years` varchar(50) NOT NULL,
  `Address_as_per_proof` enum('Yes','No') NOT NULL,
  `Permanent_Residence_Address` text NOT NULL,
  `Permanent_Landmark` varchar(100) NOT NULL,
  `Permanent_City` varchar(100) NOT NULL,
  `Permanent_District` varchar(100) NOT NULL,
  `Permanent_State` varchar(100) NOT NULL,
  `Permanent_pincode` int(11) NOT NULL,
  `Permanent_State_code` varchar(100) NOT NULL,
  `Permanent_Country_Code` varchar(100) NOT NULL,
  `proprietor_Mobile_no` varchar(20) NOT NULL,
  `proprietor_email` varchar(50) NOT NULL,
  `proprietor_pannumber` varchar(50) NOT NULL,
  `proprietor_Form_60` enum('Yes','No') NOT NULL,
  `proprietor_adharnumber` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proprietor_details`
--

INSERT INTO `proprietor_details` (`proprietor_id`, `loan_id`, `cust_id`, `title`, `proprietor_name`, `relation_with_applicant`, `applying_as_co_borrower`, `father_or_spouse_name`, `shareholding_with_cust_entity`, `Date_of_Birth`, `Gender`, `Marital_Status`, `Citizenship`, `Residential_Status`, `Occupation_type`, `Different_from_Permanent_addess`, `Current_Residence_Address`, `Current_Landmark`, `Current_City`, `Current_District`, `Current_State`, `Current_pincode`, `Current_State_code`, `Current_Country_Code`, `Residence_Type`, `Current_Residences_years`, `Address_as_per_proof`, `Permanent_Residence_Address`, `Permanent_Landmark`, `Permanent_City`, `Permanent_District`, `Permanent_State`, `Permanent_pincode`, `Permanent_State_code`, `Permanent_Country_Code`, `proprietor_Mobile_no`, `proprietor_email`, `proprietor_pannumber`, `proprietor_Form_60`, `proprietor_adharnumber`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'mr', 'shivnag patel', 'Partner', 'Yes', 'thakorbhai', '5', '2024-04-06', 'Male', 'UnMarried', 'indian', 'Resident Individual', 'Service', 'Yes', '104,luhar faliya', 'nera masjid', 'SURAT', 'Valsad', 'GUJARAT', 396001, 'GJ', 'IN', 'Rented', '20', 'Yes', '104 , luhar faluya', 'near masjid', 'SURAT', 'Valsad', 'GUJARAT', 396001, 'GJ', 'IN', '9687758595', 'patelshivang@gmail.com', 'ABGPP6638J', 'No', '7896153625871259', '2024-04-06 00:27:25', '2024-04-06 00:27:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(2, 'Manager', 'web', '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(3, 'CA', 'web', '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(6, 'Ca456', 'web', '2024-03-13 02:02:59', '2024-03-13 02:02:59'),
(7, 'Myone', 'web', '2024-03-16 00:18:42', '2024-03-16 00:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 7),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(4, 7),
(5, 1),
(5, 2),
(5, 7),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(9, 6),
(10, 1),
(11, 1),
(12, 1),
(12, 6);

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@admin.in', NULL, '$2y$12$RFTGRHf4L0qR7r3IROyz8eEA1Lmj9fguMtJIG3H0CSaofB3s5vrWm', NULL, '2024-03-13 00:37:34', '2024-03-13 00:37:34'),
(3, 'Manager', 'manager@manager.in', NULL, '$2y$12$uzDLGLL4O8TVKAHyWDYV3uviqjjEYiq7HXob8.k/qPTddWnbdSC4W', NULL, '2024-03-13 00:37:34', '2024-03-13 00:37:34'),
(4, 'CA', 'caca@caca.in', NULL, '$2y$12$nnxp6KptTWkAuaCf8dN3F.DCUN/1H0TQh.K6waKkTeJ8io11fAsne', NULL, '2024-03-13 00:37:35', '2024-03-13 00:37:35'),
(9, 'shivang', 'shivang@gmail.com', NULL, '$2y$12$kghQItlZKob5JLg1uvO3yObxV7LoGtwoKpWzdL0X2.nTvzC0sVVp2', NULL, '2024-03-16 00:18:08', '2024-03-16 00:18:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_details`
--
ALTER TABLE `account_details`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `countrycode`
--
ALTER TABLE `countrycode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_customer_details`
--
ALTER TABLE `co_customer_details`
  ADD PRIMARY KEY (`co_cust_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_reference`
--
ALTER TABLE `customer_reference`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `form_offices`
--
ALTER TABLE `form_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_application`
--
ALTER TABLE `loan_application`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `partners_details`
--
ALTER TABLE `partners_details`
  ADD PRIMARY KEY (`co_partner_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `proprietor_details`
--
ALTER TABLE `proprietor_details`
  ADD PRIMARY KEY (`proprietor_id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_details`
--
ALTER TABLE `account_details`
  MODIFY `account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countrycode`
--
ALTER TABLE `countrycode`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `co_customer_details`
--
ALTER TABLE `co_customer_details`
  MODIFY `co_cust_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `cust_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_reference`
--
ALTER TABLE `customer_reference`
  MODIFY `ref_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_offices`
--
ALTER TABLE `form_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_application`
--
ALTER TABLE `loan_application`
  MODIFY `loan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `partners_details`
--
ALTER TABLE `partners_details`
  MODIFY `co_partner_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proprietor_details`
--
ALTER TABLE `proprietor_details`
  MODIFY `proprietor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
