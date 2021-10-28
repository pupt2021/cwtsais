-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2021 at 04:19 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u623987209_cwtsais_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(10) UNSIGNED NOT NULL,
  `event` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `speaker` varchar(50) NOT NULL,
  `announcement_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `enroll_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `timein` time NOT NULL,
  `timeout` time DEFAULT NULL,
  `user_id` int(20) NOT NULL,
  `status` char(20) NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `enroll_id`, `date`, `timein`, `timeout`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(89, 86, '2021-10-28', '00:00:00', NULL, 0, 'absent', '2021-10-28 22:08:11', NULL, NULL),
(90, 87, '2021-10-28', '00:00:00', NULL, 0, 'absent', '2021-10-28 22:10:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `course` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DICT', 'Diploma in Communication Technology', 'a', '2021-06-04 03:06:50', '2021-06-21 10:36:50', NULL),
(2, 'BSIT', 'Bachelor\'s of Science Information Technology', 'a', '2021-06-09 22:28:48', '2021-06-09 22:29:17', '2021-06-21 11:37:53'),
(3, 'DOMT', 'Diploma in Office Management Technology', 'a', '2021-06-23 00:31:22', NULL, NULL),
(4, 'ME', 'Mechanical Engineering', 'a', '2021-06-23 00:37:00', '2021-06-23 00:54:43', NULL),
(5, 'BSED-ENG', 'Bachelor of Secondary Education Major in English', 'a', '2021-09-23 12:33:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `schyear_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `stud_num` varchar(50) NOT NULL,
  `required_hrs` varchar(20) NOT NULL,
  `accumulated_hrs` varchar(10) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `subject_id`, `schyear_id`, `student_id`, `stud_num`, `required_hrs`, `accumulated_hrs`, `professor_id`, `day`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(79, 0, 1, 110, '2015-00327-TG-0', '', '', 0, '', '00:00:00', '00:00:00', 'g', '2021-09-24 13:27:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 0, 1, 111, '1111-11111-TG-1', '', '', 0, '', '00:00:00', '00:00:00', 'g', '2021-09-24 13:27:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 1, 1, 112, '2018-00190-TG-0', '3', '', 26, 'Tuesday', '07:30:00', '10:30:00', 'i', '2021-09-24 13:53:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 1, 1, 125, '2018-00353-TG-0', '3', '', 26, 'Monday', '10:30:00', '13:30:00', 'i', '2021-10-28 21:57:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 1, 1, 126, '2018-00379-TG-0', '3', '', 26, 'Tuesday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:02:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 1, 1, 127, '2018-00322-TG-0', '3', '', 26, 'Wednesday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:04:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 1, 1, 128, '2018-00293-TG-0', '3', '', 26, 'Tuesday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:06:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 1, 1, 129, '2018-00315-TG-0', '3', '', 26, 'Thursday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:08:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 1, 1, 130, '2018-00487-TG-0', '3', '', 26, 'Thursday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:10:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 1, 1, 131, '2018-00523-TG-0', '3', '', 26, 'Friday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:12:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 1, 1, 132, '2018-00299-TG-0', '3', '', 26, 'Monday', '10:30:00', '13:30:00', 'i', '2021-10-28 22:13:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 1, 1, 133, '2018-00349-TG-0', '3', '', 26, 'Monday', '10:30:00', '13:30:00', 'i', '2021-10-29 00:03:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 1, 1, 134, '2018-00330-TG-0', '3', '', 26, 'Tuesday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:04:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 1, 1, 135, '2018-00328-TG-0', '3', '', 26, 'Wednesday', '10:30:00', '13:30:00', 'i', '2021-10-29 00:05:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 1, 1, 136, '2018-00372-TG-0', '3', '', 26, 'Thursday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:06:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 1, 1, 137, '2018-00305-TG-0', '3', '', 26, 'Friday', '10:30:00', '13:30:00', 'i', '2021-10-29 00:07:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 1, 1, 138, '2018-00513-TG-0', '3', '', 26, 'Tuesday', '10:30:00', '13:30:00', 'i', '2021-10-29 00:08:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 1, 1, 139, '2018-00366-TG-0', '3', '', 26, 'Wednesday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:09:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 1, 1, 149, '2018-00239-TG-0', '3', '', 26, 'Wednesday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:14:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 1, 1, 148, '2018-00253-TG-0', '3', '', 26, 'Thursday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:16:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 1, 1, 147, '2018-00274-TG-0', '3', '', 26, 'Friday', '10:30:00', '13:30:00', 'i', '2021-10-29 00:17:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 1, 1, 146, '2018-00245-TG-0', '3', '', 26, 'Monday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 1, 1, 145, '2018-00304-TG-0', '3', '', 26, 'Tuesday', '13:30:00', '16:30:00', 'i', '2021-10-29 00:18:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(255) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '20191121174600', 'App\\Database\\Migrations\\CreateRole', 'default', 'App', 1622076232, 1),
(2, '20191121175800', 'App\\Database\\Migrations\\CreateUsers', 'default', 'App', 1622076232, 1),
(3, '20191130211700', 'App\\Database\\Migrations\\CreatePermissions', 'default', 'App', 1622076232, 1),
(4, '20191201134000', 'App\\Database\\Migrations\\CreateModules', 'default', 'App', 1622076232, 1),
(5, '20210107150700', 'App\\Database\\Migrations\\CreatePenalty', 'default', 'App', 1622076232, 1),
(6, '20210107150800', 'App\\Database\\Migrations\\CreatePenaltyType', 'default', 'App', 1622076232, 1),
(7, '20210107151000', 'App\\Database\\Migrations\\CreateAttendance', 'default', 'App', 1622076232, 1),
(8, '20210107151000', 'App\\Database\\Migrations\\CreateCurrent', 'default', 'App', 1622076232, 1),
(9, '20210107151100', 'App\\Database\\Migrations\\CreateStudentTime', 'default', 'App', 1622076232, 1),
(10, '20210107151200', 'App\\Database\\Migrations\\CreateAnnouncement', 'default', 'App', 1622076232, 1),
(11, '20210107151300', 'App\\Database\\Migrations\\CreateSchYear', 'default', 'App', 1622076232, 1),
(12, '20210107151400', 'App\\Database\\Migrations\\CreateCourses', 'default', 'App', 1622076232, 1),
(13, '20210322041700', 'App\\Database\\Migrations\\CreateStudents', 'default', 'App', 1622076232, 1),
(14, '20210322041701', 'App\\Database\\Migrations\\CreateSubjects', 'default', 'App', 1622076232, 1),
(15, '20210512201701', 'App\\Database\\Migrations\\CreateGenders', 'default', 'App', 1622076232, 1),
(16, '20210512201701', 'App\\Database\\Migrations\\CreatePenalties', 'default', 'App', 1622076232, 1),
(17, '20210512201701', 'App\\Database\\Migrations\\CreateSections', 'default', 'App', 1622076232, 1),
(18, '20210512201701', 'App\\Database\\Migrations\\CreateYears', 'default', 'App', 1622076232, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(250) NOT NULL,
  `module_description` text NOT NULL,
  `module_icon` text NOT NULL,
  `order` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_description`, `module_icon`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user management', 'user management', '<i class=\"fas fa-users-cog\"></i>', 1, 'a', '2021-05-26 19:43:56', NULL, NULL),
(2, 'penalty management', 'penalty management', '<i class=\"fas fa-users-slash\"></i>', 2, 'a', '2021-05-26 19:43:56', NULL, NULL),
(3, 'table management', 'table management', '<i class=\"fas fa-users-cog\"></i>', 3, 'a', '2021-05-26 19:43:56', NULL, NULL),
(4, 'announcement', 'announcement', '<i class=\"fas fa-users-cog\"></i>', 4, 'a', '2021-05-26 19:43:56', NULL, NULL),
(5, 'student management', 'student management', '<i class=\"fas fa-chalkboard-teacher\"></i>', 5, 'a', '2021-05-26 19:43:56', NULL, NULL),
(6, 'attendance management', 'attendance management', '<i class=\"fas fa-users-cog\"></i>', 6, 'a', '2021-05-26 19:43:56', NULL, NULL),
(7, 'maintenances', 'maintenances', '<i class=\"fas fa-tools\"></i>', 7, 'a', '2021-05-26 19:43:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` int(10) UNSIGNED NOT NULL,
  `penalty` varchar(50) NOT NULL,
  `hours` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penalties`
--

INSERT INTO `penalties` (`id`, `penalty`, `hours`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 'Absent', '5', 'a', '2021-06-21 22:14:38', NULL, '2021-06-21 22:28:06'),
(2, 'Absent (Seminar)', '20', 'a', '2021-06-23 00:51:57', NULL, '2021-08-26 19:57:39'),
(3, 'Doing Nothing', '1', 'a', '2021-09-23 12:34:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `id` int(10) UNSIGNED NOT NULL,
  `enrollment_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `hours` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `other_reason` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_on_class` varchar(250) NOT NULL,
  `function_name` varchar(50) NOT NULL,
  `function_description` text NOT NULL,
  `link_icon` text DEFAULT NULL,
  `slugs` varchar(50) NOT NULL,
  `page_title` varchar(50) NOT NULL,
  `module_id` int(11) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `func_action` varchar(50) DEFAULT NULL,
  `allowed_roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '[1]' CHECK (json_valid(`allowed_roles`)),
  `order` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `func_type` int(1) NOT NULL DEFAULT 3,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name_on_class`, `function_name`, `function_description`, `link_icon`, `slugs`, `page_title`, `module_id`, `table_name`, `func_action`, `allowed_roles`, `order`, `status`, `func_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'enroll_student', 'Enroll Student', 'enroll student', '', 'enroll-student', 'enroll_student', 5, 'enroll', 'add', '[1]', 43, 'a', 3, '2021-05-26 19:43:55', '2021-09-28 00:01:11', NULL),
(2, 'index', 'enrolled student list', 'list of enroll student', '<i class=\"fas fa-file-invoice\"></i>', 'list-enroll-student', 'list of enroll student', 5, 'enroll', 'link', '[1,2,4]', 44, 'a', 1, '2021-05-26 19:43:55', '2021-09-28 00:01:11', NULL),
(3, 'delete_enroll_student', 'delete enroll student', 'delete enroll student', '', 'delete-enroll-student', 'delete enroll student', 5, 'enroll', 'delete', '[1]', 45, 'a', 3, '2021-05-26 19:43:55', '2021-09-28 00:01:11', NULL),
(5, 'show_user', 'show user details', 'show user details', '', 'show-user', 'user details', 1, 'users', 'show', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(6, 'add_user', 'create user account', 'create user account', '', 'add-user', 'create a user account', 1, 'users', 'add', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(7, 'index', 'users list', 'list of users', '<i class=\"fas fa-user-friends\"></i>', 'list-user', 'list of users', 1, 'users', 'link', '[1]', 4, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(8, 'edit_user', 'edit user account', 'edit user account', '', 'edit-user', 'edit user account', 1, 'users', 'edit', '[1]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(9, 'delete_user', 'delete user account', 'delete user account', '', 'delete-user', 'delete user account', 1, 'users', 'delete', '[1]', 6, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(10, 'show_role_details', 'show role details', 'show role detials', '', 'show-role-details', 'role details', 1, 'roles', 'show', '[1]', 7, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(11, 'add_role', 'create role', 'create role', '', 'add-role', 'create role', 1, 'roles', 'add', '[1]', 8, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(12, 'index', 'roles list', 'list of roles', '<i class=\"fas fa-user-tag\"></i>', 'list-role', 'list of roles', 1, 'roles', 'link', '[1]', 9, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(13, 'edit_role', 'edit role', 'edit role', '', 'edit-role', 'edit role', 1, 'roles', 'edit', '[1]', 10, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(14, 'delete_role', 'delete role', 'delete role', '', 'delete-role', 'delete role', 1, 'roles', 'delete', '[1]', 11, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(15, 'index', 'roles permissions', 'roles permissions', '<i class=\"fas fa-universal-access\"></i>', 'role-permissions', 'roles permissions', 1, 'permissions', 'link', '[1]', 12, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(16, 'edit_role_permissions', 'edit roles permissions', 'edit roles permissions', '', 'edit-role-permissions', 'edit role perission', 1, 'permissions', 'link', '[1]', 13, 'a', 4, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(17, 'add_penalty', 'create penalty', 'create penalty', '', 'add-penalty', 'create a penalty', 2, 'penalty', 'add', '[1,4]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(18, 'index', 'penalty list', 'list of penalty', '<i class=\"fas fa-exclamation-circle\"></i>', 'list-penalty', 'list of penalty', 2, 'penalty', 'link', '[1,4]', 2, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(19, 'edit_penalty', 'edit penalty', 'edit penalty', '', 'edit-penalty', 'edit penalty', 2, 'penalty', 'edit', '[1,4]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(20, 'delete_penalty', 'delete penalty', 'delete penalty', '', 'delete-penalty', 'delete penalty', 2, 'penalty', 'delete', '[1,4]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(21, 'index', 'course', 'list of course', '<i class=\"fas fa-book-reader\"></i>', 'list-course', 'list of course', 7, 'course', 'link', '[1]', 1, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(22, 'add_course', 'create course', 'create course', '', 'add-course', 'creating a course', 3, 'course', 'add', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(23, 'show_course', 'show course details', 'show course details', '<i class=\"far fa-circle\"></i>', 'show-course', 'course details', 3, 'course', 'show', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(24, 'edit_course', 'edit course', 'edit course', '', 'edit-course', 'edit course', 3, 'course', 'edit', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(25, 'delete_course', 'delete course', 'delete course', '', 'delete-course', 'delete course', 3, 'course', 'delete', '[1]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(26, 'index', 'school year', 'list of schyear', '<i class=\"fas fa-calendar-alt\"></i>', 'list-schyear', 'list of schyear', 7, 'schyear', 'link', '[1]', 6, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(27, 'add_schyear', 'creating schyear', 'creating schyear', '', 'add-schyear', 'creating a schyear', 3, 'schyear', 'add', '[1]', 7, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(28, 'show_schyear', 'show schyear details', 'show schyear details', '', 'show-schyear', 'schyear details', 3, 'schyear', 'show', '[1]', 8, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(29, 'edit_schyear', 'edit schyear', 'edit schyear', '', 'edit-schyear', 'edit schyear', 3, 'schyear', 'edit', '[1]', 9, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(30, 'delete_schyear', 'delete schyear', 'delete schyear', '', 'delete-schyear', 'delete schyear', 3, 'schyear', 'delete', '[1]', 10, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(31, 'index', 'subject list', 'list of subject', '<i class=\"far fa-circle\"></i>', 'list-subject', 'list of subject', 3, 'subject', 'link', '[1]', 11, 'a', 0, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(32, 'add_subject', 'creating subject', 'creating subject', '', 'add-subject', 'creating a subject', 3, 'subject', 'add', '[1]', 12, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(33, 'show_subject', 'show subject details', 'show subject details', '', 'show-subject', 'subject details', 3, 'subject', 'show', '[1]', 13, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(34, 'edit_subject', 'edit subject', 'edit subject', '', 'edit-subject', 'edit subject', 3, 'subject', 'edit', '[1]', 14, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(35, 'delete_subject', 'delete subject', 'delete subject', '', 'delete-subject', 'delete subject', 3, 'subject', 'delete', '[1]', 15, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(36, 'show_student', 'show student details', 'show student details', '', 'show-student', 'student details', 5, 'student', 'show', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(37, 'add_student', 'create student', 'create student', '', 'add-student', 'create a student', 5, 'student', 'add', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(38, 'index', 'students list', 'list of student', '<i class=\"fas fa-users\"></i>', 'list-student', 'list of student', 5, 'student', 'link', '[1,2,4]', 3, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(39, 'edit_student', 'edit student', 'edit student', '', 'edit-student', 'edit student', 5, 'student', 'edit', '[1,2,4]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(40, 'delete_student', 'delete student', 'delete student', '', 'delete-student', 'delete student', 5, 'student', 'delete', '[1,2,4]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(41, 'show_attendance', 'show attendance details', 'show attendance details', '', 'show-attendance', 'attendance details', 6, 'attendance', 'show', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(42, 'add_attendance', 'create attendance', 'create attendance', '', 'add-attendance', 'create a attendance', 6, 'attendance', 'add', '[1]', 2, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(43, 'index', 'list of attendance', 'list of attendance', '<i class=\"far fa-circle\"></i>', 'list-attendance', 'list of attendance', 6, 'attendance', 'link', '[1]', 3, 'a', 0, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(44, 'edit_attendance', 'edit attendance', 'edit attendance', '', 'edit-attendance', 'edit attendance', 6, 'attendance', 'edit', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(45, 'delete_attendance', 'delete attendance', 'delete attendance', '', 'delete-attendance', 'delete attendance', 6, 'attendance', 'delete', '[1]', 5, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(46, 'verify_attendance', 'verify attendance', 'verify attendance', '', 'verify-attendance', 'verify attendance', 6, 'attendance', 'verify', '[1,2,3,4]', 6, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(47, 'attendance', 'attendance', 'attendance', '', 'attendance', 'attendance', 6, 'attendance', 'attendance', '[1,2,3,4]', 7, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(48, 'timeout', 'timeout', 'timeout', '', 'timeout', 'timeout', 6, 'attendance', 'timeout', '[1,2,3,4]', 8, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(49, 'add_penalty', 'add penalty', 'add penalty', '', 'add-penalty', 'penalty', 7, 'penalties', 'add', '[1]', 1, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(50, 'index', 'penalty', 'penalty', '<i class=\"fas fa-exclamation-triangle\"></i>', 'list-penalty', 'penalty', 7, 'penalties', 'link', '[1]', 2, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(51, 'edit_penalty', 'edit penalty', 'edit penalty', '', 'edit-penalty', 'edit penalty', 7, 'penalties', 'edit', '[1]', 3, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(52, 'delete_penalty', 'delete penalty', 'delete penalty', '', 'delete-penalty', 'delete penalty', 7, 'penalties', 'delete', '[1]', 4, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(61, 'index', 'year & section', 'year & section', '<i class=\"fas fa-address-card\"></i>', 'year-and-section', 'year & section', 7, 'years', 'link', '[1]', 13, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(62, 'edit_year', 'edit year', 'edit year', '', 'edit-year', 'edit year', 7, 'years', 'edit', '[2]', 14, 'd', 3, '2021-05-26 19:43:56', '2021-06-22 06:03:47', NULL),
(63, 'delete_year', 'delete year', 'delete year', '', 'delete-year', 'delete year', 7, 'years', 'delete', '[1]', 15, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(64, 'add_year', 'add year', 'add year', '', 'add-year', 'year', 7, 'years_and_sections', 'add', '[1]', 16, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(65, 'index', 'subject', 'subject', '<i class=\"fas fa-book\"></i>', 'list-subject', 'subject', 7, 'subjects', 'link', '[1]', 17, 'a', 1, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(66, 'edit_subject', 'edit subject', 'edit subject', '', 'edit-subject', 'edit subject', 7, 'subjects', 'edit', '[1]', 18, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(67, 'delete_subject', 'delete subject', 'delete subject', '', 'delete-subject', 'delete subject', 7, 'subjects', 'delete', '[1]', 19, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(68, 'add_subject', 'add subject', 'add subject', '', 'add-subject', 'subject', 7, 'subjects', 'add', '[1]', 20, 'a', 3, '2021-05-26 19:43:56', '2021-09-28 00:01:11', NULL),
(69, 'profile Student', 'profile Student', 'student profile', '<i class=\"far fa-circle\"></i>', 'profile Student', 'student profile', 5, 'student/profileStudent', 'link', '[3]', 6, 'a', 1, '2021-06-06 18:35:02', '2021-09-28 00:01:11', NULL),
(70, 'enroll student', 'enroll', 'enroll student', '<i class=\"far fa-circle\"></i>', 'enroll student', 'enroll student', 5, 'enroll/enrollStudent', 'link', '[3]', 7, 'a', 1, '2021-06-13 16:29:23', '2021-09-28 00:01:11', NULL),
(71, 'list of graduates', 'graduates list', 'list of graduates', '<i class=\"fas fa-user-graduate\"></i>', 'list-graduates', 'list of graduates', 5, 'graduates', 'link', '[1,4]', 46, 'a', 1, '2021-06-22 19:11:47', '2021-09-28 00:01:11', NULL),
(72, 'event_announcement', 'Event Announcement', 'Event Announcement', '<i class=\"fas fa-bullhorn\"></i>', 'event-announcement', 'Event Announcement', 7, 'announcement', '1', '[1,4]', 6, 'a', 1, '2021-08-12 18:48:25', '2021-09-28 00:01:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `function_id` int(20) NOT NULL,
  `description` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `function_id`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Administrator', 38, 'Super Administrator', 'a', '2021-05-26 19:43:55', '2021-09-23 12:29:34', NULL),
(2, 'Student Assistant', 38, 'Student Assistant', 'a', '2021-05-26 19:43:55', '2021-08-26 20:00:45', NULL),
(3, 'Student', 69, 'for Student', 'a', '2021-06-03 03:44:02', '2021-06-04 06:23:51', NULL),
(4, 'Professor', 2, 'Professor', 'a', '2021-07-03 10:45:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schyear`
--

CREATE TABLE `schyear` (
  `id` int(10) UNSIGNED NOT NULL,
  `schyear` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schyear`
--

INSERT INTO `schyear` (`id`, `schyear`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A.Y 2020-2021', 'a', '2021-06-13 08:51:06', '2021-06-23 00:37:58', '2021-08-20 09:22:47'),
(2, 'A.Y 2021-2022', 'a', '2021-06-23 00:38:17', '2021-08-26 19:57:07', NULL),
(3, 'A.Y 2022-2023', 'a', '2021-08-20 09:22:57', '2021-08-20 09:23:08', NULL),
(4, 'A.Y 2023-2024', 'a', '2021-08-20 09:23:19', '2021-08-20 09:23:26', NULL),
(5, 'A.Y 2011-2012', 'a', '2021-08-20 09:23:33', NULL, NULL),
(6, 'A.Y 2012-2013', 'a', '2021-08-20 09:23:42', NULL, NULL),
(7, 'A.Y 2013-2014', 'a', '2021-08-20 09:23:49', '2021-08-20 09:23:55', NULL),
(8, 'A.Y 2014-2015', 'a', '2021-08-20 09:24:02', NULL, NULL),
(9, 'A.Y 2015-2016', 'a', '2021-08-20 09:24:15', NULL, NULL),
(10, 'A.Y 2016-2017', 'a', '2021-08-20 09:24:22', NULL, NULL),
(11, 'A.Y 2017-2018', 'a', '2021-08-20 09:24:30', NULL, NULL),
(12, 'A.Y 2024-2025', 'a', '2021-09-23 12:33:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `course_id`, `year_id`, `section`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 1, 1, 1, 'a', '2021-07-25 22:41:14', NULL, NULL),
(2, 1, 1, 2, 'a', '2021-07-25 22:41:15', NULL, NULL),
(3, 1, 1, 3, 'a', '2021-07-25 22:41:15', NULL, NULL),
(4, 1, 1, 4, 'a', '2021-07-25 22:41:15', NULL, NULL),
(5, 1, 1, 5, 'a', '2021-07-25 22:41:15', NULL, NULL),
(21, 4, 3, 1, 'a', '2021-09-23 12:34:30', NULL, NULL),
(22, 4, 3, 2, 'a', '2021-09-23 12:34:30', NULL, NULL),
(23, 5, 4, 1, 'a', '2021-09-23 12:34:40', NULL, NULL),
(24, 5, 4, 2, 'a', '2021-09-23 12:34:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `stud_num` varchar(50) DEFAULT NULL,
  `serial_num` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `age` int(2) NOT NULL,
  `address` varchar(250) NOT NULL,
  `course_id` int(20) NOT NULL,
  `year_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `schyear_id` int(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_contactnum` int(13) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `stud_num`, `serial_num`, `user_id`, `lastname`, `firstname`, `middlename`, `gender`, `contact_no`, `birthdate`, `age`, `address`, `course_id`, `year_id`, `section_id`, `schyear_id`, `section`, `guardian_name`, `guardian_contactnum`, `email`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(110, '2015-00327-TG-0', '123', 0, 'clem', 'josh kyle', 'a', '1', '3412312312', '2010-07-02', 32, 'Taguig', 2, 0, 0, 0, '', NULL, NULL, '', 'a', '2021-09-24 13:27:00', NULL, NULL),
(111, '1111-11111-TG-1', '455', 0, 'clemente', 'dffa', 'a', '1', '988379237', '2005-03-03', 34, 'Taguig', 1, 0, 0, 0, '', NULL, NULL, '', 'a', '2021-09-24 13:27:00', '2021-10-03 16:45:25', '2021-10-03 16:45:15'),
(112, '2018-00190-TG-0', '', 38, 'Patrick', 'Suki', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'libonali@mailinator.com', 'a', '2021-09-24 13:53:04', NULL, NULL),
(113, '2018-00345-TG-0', '', 39, 'Pollescas', 'Jillian', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'jillianpollescas@gmail.com', 'a', '2021-10-04 00:16:43', NULL, NULL),
(114, '2018-00354-TG-0', '', 40, 'ragpala', 'grace', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'akosigrace@gmail.com', 'a', '2021-10-08 01:32:27', NULL, NULL),
(115, '2018-00231-TG-0', '', 41, 'Apura', 'Ed Mhar', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'mhar.apura@gmail.com', 'a', '2021-10-28 21:41:58', NULL, NULL),
(116, '2018-00341-TG-0', '', 42, 'Balatong', 'Jayson', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'j.balatong1999@gmail.com', 'a', '2021-10-28 21:42:46', NULL, NULL),
(117, '2018-00525-TG-0', '', 43, 'Bangga', 'Elvin Christian', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'ecbangga@gmail.com', 'a', '2021-10-28 21:43:23', NULL, NULL),
(118, '2018-00484-TG-0', '', 44, 'Burton', 'Lailynette', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'llynttburton08@gmail.com', 'a', '2021-10-28 21:43:50', NULL, NULL),
(119, '2018-00343-TG-0', '', 45, 'Cabanela', 'Charmie', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'cabanelacharmie24@gmail.com', 'a', '2021-10-28 21:45:32', NULL, NULL),
(120, '2018-00256-TG-0', '', 46, 'Capalaran', 'Joshua', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'joshuacapalaran27@gmail.com', 'a', '2021-10-28 21:46:00', NULL, NULL),
(121, '2018-00220-TG-0', '', 47, 'Cariaso', 'Quiel Jeremiah', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'quieljeremiahcariaso04@gmail.com', 'a', '2021-10-28 21:46:34', NULL, NULL),
(122, '2018-00342-TG-0', '', 48, 'Cortes', 'Ken Zedric', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'kzcortes27@gmail.com', 'a', '2021-10-28 21:47:10', NULL, NULL),
(123, '2018-00361-TG-0', '', 49, 'Dacanay', 'John Russel', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'johnrusseldacanay@gmail.com', 'a', '2021-10-28 21:47:48', NULL, NULL),
(124, '2018-00368-TG-0', '', 50, 'DelaCruz', 'Edmon', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'rhingmakz21@gmail.com', 'a', '2021-10-28 21:48:34', NULL, NULL),
(125, '2018-00353-TG-0', '', 51, 'Espuerta', 'Erjohn ', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'erjohn13@gmail.com', 'a', '2021-10-28 21:55:58', NULL, NULL),
(126, '2018-00379-TG-0', '', 52, 'Fernandez', 'Froilan ', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'froilanfernandez08@gmail.com', 'a', '2021-10-28 22:00:27', NULL, NULL),
(127, '2018-00322-TG-0', '', 53, 'Gabito', 'Raymond', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'gabitoraymond358@gmail.com', 'a', '2021-10-28 22:03:40', NULL, NULL),
(128, '2018-00293-TG-0', '', 54, 'Jalandoon', 'Jerome', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'jerome.jalandoon@gmail.com', 'a', '2021-10-28 22:06:08', NULL, NULL),
(129, '2018-00315-TG-0', '', 55, 'Lapitan', 'Crisologo', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'choilapitan47@gmail.com', 'a', '2021-10-28 22:07:42', NULL, NULL),
(130, '2018-00487-TG-0', '', 56, 'Laude', 'Van Joakhim', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'khimlaude@gmail.com', 'a', '2021-10-28 22:09:52', NULL, NULL),
(131, '2018-00523-TG-0', '', 57, 'Lazaro', 'Christian ', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'lazarochan03@gmail.com', 'a', '2021-10-28 22:11:37', NULL, NULL),
(132, '2018-00299-TG-0', '', 58, 'Limba', 'David', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'davidlimba19@gmail.com', 'a', '2021-10-28 22:13:01', NULL, NULL),
(133, '2018-00349-TG-0', '', 59, 'Lumabi', 'Zairanih', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'zklumabi@gmail.com', 'a', '2021-10-28 23:13:09', NULL, NULL),
(134, '2018-00330-TG-0', '', 60, 'Maglente', 'Nerissa', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'nerissamaglente2@gmail.com', 'a', '2021-10-28 23:15:17', NULL, NULL),
(135, '2018-00328-TG-0', '', 61, 'Manalo', 'Jamrei', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'jamreimanalo@gmail.com', 'a', '2021-10-28 23:16:43', NULL, NULL),
(136, '2018-00372-TG-0', '', 62, 'Manuel', 'Marcus Kim', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'marcusmanuel.pupt@gmail.com', 'a', '2021-10-28 23:18:04', NULL, NULL),
(137, '2018-00305-TG-0', '', 63, 'Manuel', 'Meriel Necole', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'mnmerielmanuel@gmail.com', 'a', '2021-10-28 23:21:32', NULL, NULL),
(138, '2018-00513-TG-0', '', 64, 'Navaja', 'Jonh Carlo', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'jcnavaja28@gmail.com', 'a', '2021-10-28 23:24:35', NULL, NULL),
(139, '2018-00366-TG-0', '', 65, 'Pascubillo', 'Lessa Anne', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'lezzaanne@gmail.com', 'a', '2021-10-28 23:25:21', NULL, NULL),
(140, '2018-00355-TG-0', '', 66, 'SaAn', 'Shailyn Joyce', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'shailynjoycesaan@gmail.com', 'a', '2021-10-28 23:34:04', NULL, NULL),
(141, '2018-00338-TG-0', '', 67, 'Samar', 'Jamie', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'jamiesamar18@gmail.com', 'a', '2021-10-28 23:34:57', NULL, NULL),
(142, '2018-00263-TG-0', '', 68, 'Seroje', 'Aldrin', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'serojealdrin@gmail.com', 'a', '2021-10-28 23:37:12', NULL, NULL),
(143, '2018-00313-TG-0', '', 69, 'Sescar', 'John Timothy', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'tmbrccl@gmail.com', 'a', '2021-10-28 23:40:31', NULL, NULL),
(144, '2018-00370-TG-0', '', 70, 'SollanoJr', 'Carlito', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'csollanojr@gmail.com', 'a', '2021-10-28 23:41:45', NULL, NULL),
(145, '2018-00304-TG-0', '', 71, 'Tradio', 'Bernadette', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'bernatrads4@gmail.com', 'a', '2021-10-28 23:42:46', NULL, NULL),
(146, '2018-00245-TG-0', '', 72, 'Traquena', 'Irish', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'virginiatraquena@gmail.com', 'a', '2021-10-28 23:43:50', NULL, NULL),
(147, '2018-00274-TG-0', '', 73, 'Ualat', 'Carl Jon', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'cjualat@gmail.com', 'a', '2021-10-28 23:45:10', NULL, NULL),
(148, '2018-00253-TG-0', '', 74, 'Villanueva', 'Alyssa Joanna', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'alyvillanueva14@gmail.com', 'a', '2021-10-28 23:45:52', NULL, NULL),
(149, '2018-00239-TG-0', '', 75, 'Villegas', 'John Harvey', '', '', NULL, '0000-00-00', 0, '', 0, 0, 0, 0, '', NULL, NULL, 'harveyjohn1926@gmail.com', 'a', '2021-10-28 23:47:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `required_hrs` int(3) NOT NULL DEFAULT 80,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `subject`, `required_hrs`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 'NSTP1', 'NSTP1', 3, 'a', '2021-05-26 19:43:55', '2021-08-23 14:05:28', NULL),
(2, 'NSTP2', 'NSTP2', 3, 'a', '2021-05-26 19:43:55', '2021-08-24 20:40:45', '2021-06-21 11:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `status` char(1) NOT NULL DEFAULT 'a',
  `birthdate` date NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role_id`, `status`, `birthdate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'Marcus', 'Leunam', 'superadmin@gmail.com', '$2y$10$DmKxmqx6XKArKr3kYP7sfuSxbqRmLpUcf3r4HSGEmfglWzYctKrAe', 1, 'a', '0000-00-00', '2021-05-26 19:43:55', '2021-10-03 16:40:17', NULL),
(2, 'macoy123', 'Macoy', 'Manuel', 'marcuzkim29@gmail.com', '$2y$10$5pU3uOsKLII6DhZ8Ecw9MeCIG5CxyzHnPJgl8bgieEX56GX9OsqCi', 2, 'a', '0000-00-00', '2021-05-26 19:43:55', '2021-09-27 23:59:39', NULL),
(3, 'DocNelson', 'Nelson', 'Angeles', 'noslenangeles@gmail.com', '$2y$10$PIq1xBmcXUj783ZmeM/8Q.ms56WviV1CLjWplpG/oF4qdeKbQ4iGq', 1, 'a', '0000-00-00', '2021-05-26 19:43:55', '2021-08-20 10:37:58', NULL),
(26, 'docnelson1', 'Nelson', 'Angeles', 'professor.test@gmail.com', '$2y$10$1jdpxNBJcYCrn4L5KurNne5Q7htZPMvywryB.kpCV99L1XPXDZ2Om', 4, 'a', '1989-01-03', '2021-07-03 10:47:23', '2021-09-23 12:46:59', NULL),
(38, '2018-00190-TG-0', 'Suki', 'Patrick', 'libonali@mailinator.com', '$2y$10$r2rQtN2p7vvDNxBbP7Hg7um7LKynrse3wgyLNp3SCiQCzOxTeboJW', 3, 'a', '0000-00-00', '2021-09-24 13:53:04', NULL, NULL),
(39, '2018-00345-TG-0', 'Jillian', 'Pollescas', 'jillianpollescas@gmail.com', '$2y$10$FJ3SoLg5uW0TKsssCzeHa.6vWWCqaH3GqkqMXN6LrMGaCnL/57ONu', 3, 'a', '0000-00-00', '2021-10-04 00:16:43', NULL, NULL),
(40, '2018-00354-TG-0', 'grace', 'ragpala', 'akosigrace@gmail.com', '$2y$10$c3f1onuwZQyF73vtkQ2Y3uX3lae20O..VHa/xBSxzuFHkRXkPkEvG', 3, 'a', '0000-00-00', '2021-10-08 01:32:27', NULL, NULL),
(41, '2018-00231-TG-0', 'Ed Mhar', 'Apura', 'mhar.apura@gmail.com', '$2y$10$CmVJP1n6Y1hqUBm0tRplneODTl.6.3ALDKLNIJHeMu72lRWWSrAqi', 3, 'a', '0000-00-00', '2021-10-28 21:41:58', NULL, NULL),
(42, '2018-00341-TG-0', 'Jayson', 'Balatong', 'j.balatong1999@gmail.com', '$2y$10$ngjO7W/rpkgfJxk0fKFEdeoBCvTdPLW4yw/2SrOUNKly4V4RBauJy', 3, 'a', '0000-00-00', '2021-10-28 21:42:46', NULL, NULL),
(43, '2018-00525-TG-0', 'Elvin Christian', 'Bangga', 'ecbangga@gmail.com', '$2y$10$gawilM4p.82prKFY6eR./uatv2eBHUzcMB5fAB9kVsXbItnr9Np8u', 3, 'a', '0000-00-00', '2021-10-28 21:43:23', NULL, NULL),
(44, '2018-00484-TG-0', 'Lailynette', 'Burton', 'llynttburton08@gmail.com', '$2y$10$.IXK8AU2ex1QkCrlJRov2.rK/jeyWU5UXHzefwPW0oJzvvlimCzQC', 3, 'a', '0000-00-00', '2021-10-28 21:43:50', NULL, NULL),
(45, '2018-00343-TG-0', 'Charmie', 'Cabanela', 'cabanelacharmie24@gmail.com', '$2y$10$iWU4zf/AaaTO51/6VSqaBu00VajjqUdmeT6SLKGnqJO23ZiQS81z2', 3, 'a', '0000-00-00', '2021-10-28 21:45:32', NULL, NULL),
(46, '2018-00256-TG-0', 'Joshua', 'Capalaran', 'joshuacapalaran27@gmail.com', '$2y$10$1c7DHHckga2GXiPEMcYjSOZ5amzV5BmibOzutsUnuxszuvPDLx1wu', 3, 'a', '0000-00-00', '2021-10-28 21:46:00', NULL, NULL),
(47, '2018-00220-TG-0', 'Quiel Jeremiah', 'Cariaso', 'quieljeremiahcariaso04@gmail.com', '$2y$10$A2xMozrqfWs.eA3ILPAGM.f5yPMGpM0Hv6yvcp5vuOJocHdG1iHoS', 3, 'a', '0000-00-00', '2021-10-28 21:46:34', NULL, NULL),
(48, '2018-00342-TG-0', 'Ken Zedric', 'Cortes', 'kzcortes27@gmail.com', '$2y$10$deuudgyvzbPb2rzJIlSTLOnefsZomBVYRPxzmAfiz3AfzUZFTvISC', 3, 'a', '0000-00-00', '2021-10-28 21:47:10', NULL, NULL),
(49, '2018-00361-TG-0', 'John Russel', 'Dacanay', 'johnrusseldacanay@gmail.com', '$2y$10$1xIkF1GzLhGSCDtjOps1l.7eBkmoS9rDMmgSxIrhKQQHd73fHlQEa', 3, 'a', '0000-00-00', '2021-10-28 21:47:48', NULL, NULL),
(50, '2018-00368-TG-0', 'Edmon', 'DelaCruz', 'rhingmakz21@gmail.com', '$2y$10$uzFtAweltj9GjlBXwd7gpeggBxX2vUbx93TwenI8zAteQyyjcDhhe', 3, 'a', '0000-00-00', '2021-10-28 21:48:33', NULL, NULL),
(51, '2018-00353-TG-0', 'Erjohn ', 'Espuerta', 'erjohn13@gmail.com', '$2y$10$EsV0RTcwkRcCloRQ9HEtgOxIxp.iS0cDZ2aop7NKPJt77EbYWjjfy', 3, 'a', '0000-00-00', '2021-10-28 21:55:58', NULL, NULL),
(52, '2018-00379-TG-0', 'Froilan ', 'Fernandez', 'froilanfernandez08@gmail.com', '$2y$10$jbgmTAqKtfinmUUBA8XSqe7.JCz7/JYDJU/ZmZJfgVCF1YpXmCpK6', 3, 'a', '0000-00-00', '2021-10-28 22:00:27', NULL, NULL),
(53, '2018-00322-TG-0', 'Raymond', 'Gabito', 'gabitoraymond358@gmail.com', '$2y$10$JMk3IaoS7Gk/pjSjZT40Ou6OIpOhuA6Fnbz1ZFL923pyExfaeOn1W', 3, 'a', '0000-00-00', '2021-10-28 22:03:39', NULL, NULL),
(54, '2018-00293-TG-0', 'Jerome', 'Jalandoon', 'jerome.jalandoon@gmail.com', '$2y$10$stC46vceTAi1EQV5b.gIHuvc/SwsfXk.JTR1YiO2CnpjtHCXCp4Pi', 3, 'a', '0000-00-00', '2021-10-28 22:06:08', NULL, NULL),
(55, '2018-00315-TG-0', 'Crisologo', 'Lapitan', 'choilapitan47@gmail.com', '$2y$10$INQneZmZ.e3CIxZTdZ9sIu65NDhVbkKhXZU3PM7s8AMCbiUKs7GTm', 3, 'a', '0000-00-00', '2021-10-28 22:07:42', NULL, NULL),
(56, '2018-00487-TG-0', 'Van Joakhim', 'Laude', 'khimlaude@gmail.com', '$2y$10$2N6bmT5AtEhuWSQQp.agsO4eXlqxQ0ISMVP7nBGuXAH1Cp1UUsSea', 3, 'a', '0000-00-00', '2021-10-28 22:09:52', NULL, NULL),
(57, '2018-00523-TG-0', 'Christian ', 'Lazaro', 'lazarochan03@gmail.com', '$2y$10$dC8YnP2kRwa.5sMa1NzoiOGoiSVu0QldD4Rl4t9HEIAL7a7GLZmC.', 3, 'a', '0000-00-00', '2021-10-28 22:11:37', NULL, NULL),
(58, '2018-00299-TG-0', 'David', 'Limba', 'davidlimba19@gmail.com', '$2y$10$M7cZZ6gAN9hicdXf2MZTNeeP0gvQg0JloGOnvDG9aigmrNE24vY3m', 3, 'a', '0000-00-00', '2021-10-28 22:13:01', NULL, NULL),
(59, '2018-00349-TG-0', 'Zairanih', 'Lumabi', 'zklumabi@gmail.com', '$2y$10$XxvBHlKztAz9sManblH2.enWiEO3FQD9tpGRXx0sU1VGeHptmJNNm', 3, 'a', '0000-00-00', '2021-10-28 23:13:09', NULL, NULL),
(60, '2018-00330-TG-0', 'Nerissa', 'Maglente', 'nerissamaglente2@gmail.com', '$2y$10$w7vXZyQeHpQUsSMGxwpIuuilNNJNMezhTD.v5xnmfIBKhDbGm3MuK', 3, 'a', '0000-00-00', '2021-10-28 23:15:17', NULL, NULL),
(61, '2018-00328-TG-0', 'Jamrei', 'Manalo', 'jamreimanalo@gmail.com', '$2y$10$asx1F9Aq3U5hixuAqrJpD.HmELuhRjDAbwzmJ6rIh2amABGCGhlMu', 3, 'a', '0000-00-00', '2021-10-28 23:16:43', NULL, NULL),
(62, '2018-00372-TG-0', 'Marcus Kim', 'Manuel', 'marcusmanuel.pupt@gmail.com', '$2y$10$exmrUqNL6mVDJGRnVYslDuucmlkQT72XBpOt3boHyNxjEmUnzFHT6', 3, 'a', '0000-00-00', '2021-10-28 23:18:04', NULL, NULL),
(63, '2018-00305-TG-0', 'Meriel Necole', 'Manuel', 'mnmerielmanuel@gmail.com', '$2y$10$VX1SPDHOA90WMu33Rg98DOYmPwB0CygbJ6ojtnMro.3/R33IifZLu', 3, 'a', '0000-00-00', '2021-10-28 23:21:32', NULL, NULL),
(64, '2018-00513-TG-0', 'Jonh Carlo', 'Navaja', 'jcnavaja28@gmail.com', '$2y$10$r4MYSbj0M4txzk4qYwxBXek/3hTOmTHi69EN3lhJk1AGdntaJzr86', 3, 'a', '0000-00-00', '2021-10-28 23:24:35', NULL, NULL),
(65, '2018-00366-TG-0', 'Lessa Anne', 'Pascubillo', 'lezzaanne@gmail.com', '$2y$10$AGEB6ivvaUc9oGdZsLSxcOt8ZYVuJvERlXQWe40F8bvsVdJse8fju', 3, 'a', '0000-00-00', '2021-10-28 23:25:21', NULL, NULL),
(66, '2018-00355-TG-0', 'Shailyn Joyce', 'SaAn', 'shailynjoycesaan@gmail.com', '$2y$10$ZP9rpFJ3NSO9e/S.tYtR/e.OQ5Gwfbd1MAkjHoWDqC94dwaW1wjR6', 3, 'a', '0000-00-00', '2021-10-28 23:34:04', NULL, NULL),
(67, '2018-00338-TG-0', 'Jamie', 'Samar', 'jamiesamar18@gmail.com', '$2y$10$dCSrPIOFLPnXDuUjqEmvKehcLYi6qo/0dBqgbCehSrYEVlQzvD0ma', 3, 'a', '0000-00-00', '2021-10-28 23:34:57', NULL, NULL),
(68, '2018-00263-TG-0', 'Aldrin', 'Seroje', 'serojealdrin@gmail.com', '$2y$10$3rPRHl7boTLA46XkBwgjtuvKyMaHUpAytbVIF9/ZJGDCxOxDkTMPe', 3, 'a', '0000-00-00', '2021-10-28 23:37:12', NULL, NULL),
(69, '2018-00313-TG-0', 'John Timothy', 'Sescar', 'tmbrccl@gmail.com', '$2y$10$JnlNelTkFvLy3vA4A57P4.2rfJ9mVbzUSeNXj7hZuL15De/F0AHuO', 3, 'a', '0000-00-00', '2021-10-28 23:40:31', NULL, NULL),
(70, '2018-00370-TG-0', 'Carlito', 'SollanoJr', 'csollanojr@gmail.com', '$2y$10$P2H8FySUOi9ZRCKfmHv9YeJuJPdpUr8K0CDK4zcyC5hXjIkBJKzVC', 3, 'a', '0000-00-00', '2021-10-28 23:41:45', NULL, NULL),
(71, '2018-00304-TG-0', 'Bernadette', 'Tradio', 'bernatrads4@gmail.com', '$2y$10$xqnqtmXfB43935Wyt2Y4ueyGxNJ5KhqgRwPZ/WHndkj9MBoEf3QMq', 3, 'a', '0000-00-00', '2021-10-28 23:42:46', NULL, NULL),
(72, '2018-00245-TG-0', 'Irish', 'Traquena', 'virginiatraquena@gmail.com', '$2y$10$SwWswL/kwPBbk2m2Da4m8em70a1YaK4/pGizsL.rJj1nStkKPeRBC', 3, 'a', '0000-00-00', '2021-10-28 23:43:50', NULL, NULL),
(73, '2018-00274-TG-0', 'Carl Jon', 'Ualat', 'cjualat@gmail.com', '$2y$10$.sEQWNz.AIUlk9BwJ6Vj1e9lmDeUjUFsbB0Qtso.9ZzKeErz6wzVu', 3, 'a', '0000-00-00', '2021-10-28 23:45:10', NULL, NULL),
(74, '2018-00253-TG-0', 'Alyssa Joanna', 'Villanueva', 'alyvillanueva14@gmail.com', '$2y$10$2MtMO6QLmG3SRCn7rhhgNOtASn02BuhsRMIEn.BBojUhg2gVE0B4e', 3, 'a', '0000-00-00', '2021-10-28 23:45:51', NULL, NULL),
(75, '2018-00239-TG-0', 'John Harvey', 'Villegas', 'harveyjohn1926@gmail.com', '$2y$10$5gz4WvevLqHYksimsYGdD.b43KRMOnECBQeJECIWfB3Nlw9kvZ87K', 3, 'a', '0000-00-00', '2021-10-28 23:47:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_date` datetime NOT NULL COMMENT 'Date of creation',
  `updated_date` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_date` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `course_id`, `year`, `status`, `created_date`, `updated_date`, `deleted_date`) VALUES
(1, 1, '1', 'a', '2021-07-25 22:45:38', NULL, NULL),
(3, 4, '1', 'a', '2021-09-23 12:34:30', NULL, NULL),
(4, 5, '1', 'a', '2021-09-23 12:34:40', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schyear`
--
ALTER TABLE `schyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_id` (`course_id`,`year_id`,`section`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schyear`
--
ALTER TABLE `schyear`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
