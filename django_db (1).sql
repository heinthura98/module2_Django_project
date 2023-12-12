-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 04:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(4, 'Assistance leader'),
(2, 'Intern'),
(1, 'Junior'),
(3, 'Senior'),
(5, 'Team Leader');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(8, 1, 28),
(1, 1, 32),
(2, 1, 36),
(3, 1, 40),
(4, 1, 44),
(5, 1, 48),
(6, 1, 52),
(7, 1, 56),
(18, 3, 17),
(20, 3, 20),
(23, 3, 25),
(24, 3, 28),
(25, 3, 29),
(9, 3, 32),
(10, 3, 33),
(11, 3, 36),
(12, 3, 37),
(13, 3, 40),
(14, 3, 41),
(15, 3, 44),
(16, 3, 45),
(17, 3, 48),
(19, 3, 49),
(21, 3, 52),
(22, 3, 56),
(39, 4, 26),
(40, 4, 28),
(41, 4, 30),
(26, 4, 32),
(27, 4, 34),
(28, 4, 36),
(29, 4, 38),
(30, 4, 40),
(31, 4, 42),
(32, 4, 44),
(33, 4, 46),
(34, 4, 48),
(35, 4, 50),
(36, 4, 52),
(37, 4, 54),
(38, 4, 56),
(55, 5, 27),
(56, 5, 28),
(57, 5, 31),
(42, 5, 32),
(43, 5, 35),
(44, 5, 36),
(45, 5, 39),
(46, 5, 40),
(47, 5, 43),
(48, 5, 44),
(49, 5, 47),
(50, 5, 48),
(51, 5, 51),
(52, 5, 52),
(53, 5, 55),
(54, 5, 56);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add employee model', 7, 'add_employeemodel'),
(26, 'Can change employee model', 7, 'change_employeemodel'),
(27, 'Can delete employee model', 7, 'delete_employeemodel'),
(28, 'Can view employee model', 7, 'view_employeemodel'),
(29, 'Can add contract model', 8, 'add_contractmodel'),
(30, 'Can change contract model', 8, 'change_contractmodel'),
(31, 'Can delete contract model', 8, 'delete_contractmodel'),
(32, 'Can view contract model', 8, 'view_contractmodel'),
(33, 'Can add job model', 9, 'add_jobmodel'),
(34, 'Can change job model', 9, 'change_jobmodel'),
(35, 'Can delete job model', 9, 'delete_jobmodel'),
(36, 'Can view job model', 9, 'view_jobmodel'),
(37, 'Can add department model', 10, 'add_departmentmodel'),
(38, 'Can change department model', 10, 'change_departmentmodel'),
(39, 'Can delete department model', 10, 'delete_departmentmodel'),
(40, 'Can view department model', 10, 'view_departmentmodel'),
(41, 'Can add resume model', 11, 'add_resumemodel'),
(42, 'Can change resume model', 11, 'change_resumemodel'),
(43, 'Can delete resume model', 11, 'delete_resumemodel'),
(44, 'Can view resume model', 11, 'view_resumemodel'),
(45, 'Can add expense model', 12, 'add_expensemodel'),
(46, 'Can change expense model', 12, 'change_expensemodel'),
(47, 'Can delete expense model', 12, 'delete_expensemodel'),
(48, 'Can view expense model', 12, 'view_expensemodel'),
(49, 'Can add payroll model', 13, 'add_payrollmodel'),
(50, 'Can change payroll model', 13, 'change_payrollmodel'),
(51, 'Can delete payroll model', 13, 'delete_payrollmodel'),
(52, 'Can view payroll model', 13, 'view_payrollmodel'),
(53, 'Can add attendance model', 14, 'add_attendancemodel'),
(54, 'Can change attendance model', 14, 'change_attendancemodel'),
(55, 'Can delete attendance model', 14, 'delete_attendancemodel'),
(56, 'Can view attendance model', 14, 'view_attendancemodel'),
(57, 'Can add attendance tag model', 15, 'add_attendancetagmodel'),
(58, 'Can change attendance tag model', 15, 'change_attendancetagmodel'),
(59, 'Can delete attendance tag model', 15, 'delete_attendancetagmodel'),
(60, 'Can view attendance tag model', 15, 'view_attendancetagmodel'),
(61, 'Can add contract tag model', 16, 'add_contracttagmodel'),
(62, 'Can change contract tag model', 16, 'change_contracttagmodel'),
(63, 'Can delete contract tag model', 16, 'delete_contracttagmodel'),
(64, 'Can view contract tag model', 16, 'view_contracttagmodel'),
(65, 'Can add employee tag model', 17, 'add_employeetagmodel'),
(66, 'Can change employee tag model', 17, 'change_employeetagmodel'),
(67, 'Can delete employee tag model', 17, 'delete_employeetagmodel'),
(68, 'Can view employee tag model', 17, 'view_employeetagmodel'),
(69, 'Can add expense tag model', 18, 'add_expensetagmodel'),
(70, 'Can change expense tag model', 18, 'change_expensetagmodel'),
(71, 'Can delete expense tag model', 18, 'delete_expensetagmodel'),
(72, 'Can view expense tag model', 18, 'view_expensetagmodel'),
(73, 'Can add job tag model', 19, 'add_jobtagmodel'),
(74, 'Can change job tag model', 19, 'change_jobtagmodel'),
(75, 'Can delete job tag model', 19, 'delete_jobtagmodel'),
(76, 'Can view job tag model', 19, 'view_jobtagmodel'),
(77, 'Can add payroll tag model', 20, 'add_payrolltagmodel'),
(78, 'Can change payroll tag model', 20, 'change_payrolltagmodel'),
(79, 'Can delete payroll tag model', 20, 'delete_payrolltagmodel'),
(80, 'Can view payroll tag model', 20, 'view_payrolltagmodel'),
(81, 'Can add resume tag model', 21, 'add_resumetagmodel'),
(82, 'Can change resume tag model', 21, 'change_resumetagmodel'),
(83, 'Can delete resume tag model', 21, 'delete_resumetagmodel'),
(84, 'Can view resume tag model', 21, 'view_resumetagmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$QtxQCYqggekt$TKYmzuw/UuHUkXdpFDKT9J/w7V383P2Ziapf25Egt7c=', '2023-12-11 15:08:31.939264', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-11-01 01:58:47.813482'),
(2, 'pbkdf2_sha256$150000$3dfeDq1AuJL4$8vw7n3gqM5WpzSsDCIEdVNfwbXJcF2wWbV/JAUVzOJo=', NULL, 0, 'normaluser', '', '', '', 0, 1, '2023-11-05 12:09:14.000000'),
(3, 'pbkdf2_sha256$150000$ZquxfoVkMxzQ$yfBYpvMU6qsqlLkKk9COqdjl2XOq4n26C0IfxHJs2uk=', NULL, 0, 'heinthura98@gmail.com', '', '', 'sothine2011@gmail.com', 0, 1, '2023-11-07 05:28:55.018671'),
(4, 'pbkdf2_sha256$150000$scze5g2x8MV8$WxLAkJapZjEJqS/B3G2Md5EWNT9fMJyW8/9b2x3texU=', NULL, 0, 'heinthura_98998', '', '', 'sothine2011@gmail.com', 0, 1, '2023-11-07 05:35:38.172326'),
(5, 'pbkdf2_sha256$150000$ZZfPDciSd5QR$N1TYF0id9uTlQE5U9NajVuOLHkMLFV3qEiiyvJeUl4U=', '2023-11-07 05:46:53.145854', 0, 'Karina242', '', '', 'sothine2011@gmail.com', 0, 1, '2023-11-07 05:46:40.135498');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-01 02:33:06.710882', '1', 'Junior Assist:', 1, '[{\"added\": {}}]', 19, 1),
(2, '2023-11-01 02:33:14.903458', '2', 'Senior Assist:', 1, '[{\"added\": {}}]', 19, 1),
(3, '2023-11-01 02:42:24.605587', '1', 'Part Time', 1, '[{\"added\": {}}]', 17, 1),
(4, '2023-11-01 02:42:30.014134', '2', 'Full Time', 1, '[{\"added\": {}}]', 17, 1),
(5, '2023-11-01 02:42:34.408264', '3', 'Freelancer', 1, '[{\"added\": {}}]', 17, 1),
(6, '2023-11-01 03:46:26.717283', '1', 'Full-time', 1, '[{\"added\": {}}]', 16, 1),
(7, '2023-11-01 03:46:31.989681', '2', 'Internship', 1, '[{\"added\": {}}]', 16, 1),
(8, '2023-11-01 03:46:38.462828', '3', 'Freelance', 1, '[{\"added\": {}}]', 16, 1),
(9, '2023-11-01 04:59:02.200236', '3', 'Freelance contract', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 16, 1),
(10, '2023-11-01 04:59:06.805036', '2', 'Internship contract', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 16, 1),
(11, '2023-11-01 04:59:11.764128', '1', 'Full-time contract', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 16, 1),
(12, '2023-11-01 06:56:00.908062', '2', 'Senior', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 19, 1),
(13, '2023-11-01 06:56:04.173533', '1', 'Junior', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 19, 1),
(14, '2023-11-02 02:50:45.190119', '1', 'Full-Time Employee', 1, '[{\"added\": {}}]', 21, 1),
(15, '2023-11-02 02:50:56.998456', '2', 'Intern', 1, '[{\"added\": {}}]', 21, 1),
(16, '2023-11-02 02:51:05.291153', '3', 'Freelancer', 1, '[{\"added\": {}}]', 21, 1),
(17, '2023-11-02 03:11:59.771203', '1', 'Travelling', 1, '[{\"added\": {}}]', 18, 1),
(18, '2023-11-02 03:12:05.050650', '2', 'Training', 1, '[{\"added\": {}}]', 18, 1),
(19, '2023-11-02 03:12:21.141755', '3', 'Recruting', 1, '[{\"added\": {}}]', 18, 1),
(20, '2023-11-02 03:12:30.491336', '3', 'Recruiting', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 18, 1),
(21, '2023-11-02 03:43:34.687270', '1', 'Employee Benefits', 1, '[{\"added\": {}}]', 20, 1),
(22, '2023-11-02 03:43:53.147538', '2', 'Retirement Contrib:', 1, '[{\"added\": {}}]', 20, 1),
(23, '2023-11-02 03:44:13.840695', '3', 'Compensation Benefit', 1, '[{\"added\": {}}]', 20, 1),
(24, '2023-11-02 04:15:22.574812', '1', 'Regular', 1, '[{\"added\": {}}]', 15, 1),
(25, '2023-11-02 04:15:33.731588', '2', 'Half-day', 1, '[{\"added\": {}}]', 15, 1),
(26, '2023-11-02 04:15:38.849889', '3', 'Overtime', 1, '[{\"added\": {}}]', 15, 1),
(27, '2023-11-02 04:15:46.263370', '4', 'Other', 1, '[{\"added\": {}}]', 15, 1),
(28, '2023-11-03 10:58:02.067956', '1', 'Regular working hour', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 15, 1),
(29, '2023-11-05 11:04:39.411322', '3', 'Intern', 1, '[{\"added\": {}}]', 19, 1),
(30, '2023-11-05 11:04:45.583309', '4', 'Chief', 1, '[{\"added\": {}}]', 19, 1),
(31, '2023-11-05 11:05:03.190240', '5', 'M.D', 1, '[{\"added\": {}}]', 19, 1),
(32, '2023-11-05 12:09:14.910675', '2', 'normaluser', 1, '[{\"added\": {}}]', 4, 1),
(33, '2023-11-05 12:10:15.760860', '2', 'normaluser', 2, '[]', 4, 1),
(34, '2023-11-06 04:27:58.950656', '1', 'Intern', 1, '[{\"added\": {}}]', 3, 1),
(35, '2023-11-06 04:30:23.664141', '1', 'Junior', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 3, 1),
(36, '2023-11-06 04:30:36.558334', '2', 'Intern', 1, '[{\"added\": {}}]', 3, 1),
(37, '2023-11-06 04:35:37.014909', '3', 'Senior', 1, '[{\"added\": {}}]', 3, 1),
(38, '2023-11-06 04:36:51.582656', '4', 'Assistance leader', 1, '[{\"added\": {}}]', 3, 1),
(39, '2023-11-06 04:37:48.209867', '5', 'Team Leader', 1, '[{\"added\": {}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'hr_attendance', 'attendancemodel'),
(8, 'hr_contracts', 'contractmodel'),
(10, 'hr_departments', 'departmentmodel'),
(7, 'hr_employees', 'employeemodel'),
(12, 'hr_expense', 'expensemodel'),
(9, 'hr_jobs', 'jobmodel'),
(13, 'hr_payroll', 'payrollmodel'),
(11, 'hr_recruitments', 'resumemodel'),
(15, 'hr_tags', 'attendancetagmodel'),
(16, 'hr_tags', 'contracttagmodel'),
(17, 'hr_tags', 'employeetagmodel'),
(18, 'hr_tags', 'expensetagmodel'),
(19, 'hr_tags', 'jobtagmodel'),
(20, 'hr_tags', 'payrolltagmodel'),
(21, 'hr_tags', 'resumetagmodel'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-26 01:42:02.016638'),
(2, 'auth', '0001_initial', '2023-10-26 01:42:02.128512'),
(3, 'admin', '0001_initial', '2023-10-26 01:42:02.394101'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-26 01:42:02.454829'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-26 01:42:02.469207'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-26 01:42:02.532576'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-26 01:42:02.564236'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-26 01:42:02.580532'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-26 01:42:02.590621'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-26 01:42:02.622058'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-26 01:42:02.626053'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-26 01:42:02.635543'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-26 01:42:02.651642'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-26 01:42:02.671519'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-26 01:42:02.693779'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-26 01:42:02.708657'),
(17, 'hr_contracts', '0001_initial', '2023-10-26 01:42:02.733179'),
(18, 'hr_departments', '0001_initial', '2023-10-26 01:42:02.757955'),
(19, 'hr_employees', '0001_initial', '2023-10-26 01:42:02.789431'),
(20, 'hr_jobs', '0001_initial', '2023-10-26 01:42:02.814504'),
(21, 'sessions', '0001_initial', '2023-10-26 01:42:02.835806'),
(22, 'hr_recruitments', '0001_initial', '2023-10-30 02:11:31.866274'),
(23, 'hr_expense', '0001_initial', '2023-10-30 03:11:22.732673'),
(24, 'hr_expense', '0002_auto_20231030_1003', '2023-10-30 03:33:30.728338'),
(25, 'hr_expense', '0003_remove_expensemodel_employee', '2023-10-30 03:59:57.648118'),
(26, 'hr_payroll', '0001_initial', '2023-10-30 04:22:53.739541'),
(27, 'hr_attendance', '0001_initial', '2023-10-30 05:12:30.087096'),
(28, 'hr_tags', '0001_initial', '2023-11-01 02:18:31.691618'),
(29, 'hr_jobs', '0002_jobmodel_department', '2023-11-01 02:23:11.660967'),
(30, 'hr_jobs', '0003_jobmodel_tags', '2023-11-01 02:31:06.463407'),
(31, 'hr_employees', '0002_auto_20231101_0911', '2023-11-01 02:41:18.997004'),
(32, 'hr_contracts', '0002_auto_20231101_1040', '2023-11-01 04:11:02.513320'),
(33, 'hr_recruitments', '0002_auto_20231101_1043', '2023-11-01 04:13:48.227558'),
(34, 'hr_expense', '0004_auto_20231101_1048', '2023-11-01 04:18:29.592787'),
(35, 'hr_payroll', '0002_auto_20231101_1056', '2023-11-01 04:26:26.127569'),
(36, 'hr_attendance', '0002_auto_20231101_1058', '2023-11-01 04:28:27.019201');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('34hp6xxmya1214lluuh1o4qrj34oh28d', 'Y2Q3ZjM3ZTAwYjQ0ZWVjMWMwZmYwYmRjOWUzM2RkZTIxZTY4ZWJiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGMyNDM0MjY0YzFjN2JmNDMyY2YxMWQyZTFlMmFkYTYxM2U0YjM2In0=', '2023-12-25 15:08:31.947197'),
('y4n6l4ro7polo271hz9t6o85aw57s248', 'Y2Q3ZjM3ZTAwYjQ0ZWVjMWMwZmYwYmRjOWUzM2RkZTIxZTY4ZWJiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGMyNDM0MjY0YzFjN2JmNDMyY2YxMWQyZTFlMmFkYTYxM2U0YjM2In0=', '2023-11-15 02:01:32.545089');

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendance_attendancemodel`
--

CREATE TABLE `hr_attendance_attendancemodel` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `clock_in` time(6) NOT NULL,
  `clock_out` time(6) NOT NULL,
  `hours_worked` decimal(5,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `note` longtext NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_attendance_attendancemodel`
--

INSERT INTO `hr_attendance_attendancemodel` (`id`, `date`, `clock_in`, `clock_out`, `hours_worked`, `status`, `note`, `is_approved`, `employee_id`) VALUES
(4, '2023-11-15', '21:47:00.000000', '17:47:00.000000', 8.00, 'Good', 'Good', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hr_attendance_attendancemodel_tags`
--

CREATE TABLE `hr_attendance_attendancemodel_tags` (
  `id` int(11) NOT NULL,
  `attendancemodel_id` int(11) NOT NULL,
  `attendancetagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_attendance_attendancemodel_tags`
--

INSERT INTO `hr_attendance_attendancemodel_tags` (`id`, `attendancemodel_id`, `attendancetagmodel_id`) VALUES
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_contracts_contractmodel`
--

CREATE TABLE `hr_contracts_contractmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `note` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_contracts_contractmodel`
--

INSERT INTO `hr_contracts_contractmodel` (`id`, `name`, `rank`, `start_date`, `end_date`, `note`, `status`, `is_active`, `create_date`, `attachment`, `employee_id`) VALUES
(17, 'Hein\'s contract', 2, '2023-11-05', '2025-11-05', 'Good', 'draft', 1, '2023-11-05 11:45:00.000000', 'pen-and-contract_LLeh04G.jpg', 5),
(18, 'Mon\'s contract', 4, '2023-11-23', '2025-11-23', 'Good', 'Confirm', 1, '2023-11-23 03:23:00.000000', 'Screenshot_7.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hr_contracts_contractmodel_tags`
--

CREATE TABLE `hr_contracts_contractmodel_tags` (
  `id` int(11) NOT NULL,
  `contractmodel_id` int(11) NOT NULL,
  `contracttagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_contracts_contractmodel_tags`
--

INSERT INTO `hr_contracts_contractmodel_tags` (`id`, `contractmodel_id`, `contracttagmodel_id`) VALUES
(14, 17, 3),
(13, 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hr_departments_departmentmodel`
--

CREATE TABLE `hr_departments_departmentmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sequence` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `total_employees` varchar(20) NOT NULL,
  `note` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `attachment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_departments_departmentmodel`
--

INSERT INTO `hr_departments_departmentmodel` (`id`, `name`, `sequence`, `meeting_date`, `total_employees`, `note`, `status`, `is_active`, `create_date`, `attachment`) VALUES
(2, 'IT Department', 5, '2023-11-01', '14', 'Good', 'draft', 1, '2023-11-01 02:04:00.000000', 'it_department.jpg'),
(3, 'HR Dept.', 2, '2023-11-01', '5', 'Good', 'draft', 1, '2023-11-01 02:06:00.000000', 'hr_dept.jpg'),
(4, 'Sales & Marketing', 5, '2023-11-01', '10', 'Good', 'draft', 1, '2023-11-01 02:08:00.000000', 'Sales-Marketing.jpg'),
(5, 'Finances', 5, '2023-11-01', '10', 'Good', 'open', 1, '2023-11-01 02:09:00.000000', 'accountant.jpg'),
(6, 'Customer Service', 5, '2023-11-01', '10', 'Good', 'draft', 1, '2023-11-01 02:11:00.000000', 'customer-support.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees_employeemodel`
--

CREATE TABLE `hr_employees_employeemodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `is_married` tinyint(1) NOT NULL,
  `joining_date` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_employees_employeemodel`
--

INSERT INTO `hr_employees_employeemodel` (`id`, `name`, `age`, `birthday`, `address`, `email`, `gender`, `is_married`, `joining_date`, `image`, `job_id`) VALUES
(4, 'Mon Mon', 6543, '1998-11-09', 'Yangon', 'sothine2011@gmail.com', 'male', 1, '2023-11-03 13:07:00.000000', 'cv_CdmYxoQ.jpg', 13),
(5, 'Hein Thura Tun', 23, '2023-11-15', 'Yangon', 'sothine2011@gmail.com', 'male', 1, '2023-11-14 17:54:00.000000', 'vuu_mR18IWR.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `hr_employees_employeemodel_tags`
--

CREATE TABLE `hr_employees_employeemodel_tags` (
  `id` int(11) NOT NULL,
  `employeemodel_id` int(11) NOT NULL,
  `employeetagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_employees_employeemodel_tags`
--

INSERT INTO `hr_employees_employeemodel_tags` (`id`, `employeemodel_id`, `employeetagmodel_id`) VALUES
(12, 4, 1),
(14, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hr_expense_expensemodel`
--

CREATE TABLE `hr_expense_expensemodel` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `value` varchar(16) NOT NULL,
  `date` date NOT NULL,
  `cash_out` tinyint(1) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `receipt_number` varchar(20) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_expense_expensemodel`
--

INSERT INTO `hr_expense_expensemodel` (`id`, `title`, `value`, `date`, `cash_out`, `category`, `description`, `receipt_number`, `employee_id`) VALUES
(8, 'Hein\'s exp', '60000', '2023-11-05', 1, 'optional', 'Paid out', '2345', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hr_expense_expensemodel_tags`
--

CREATE TABLE `hr_expense_expensemodel_tags` (
  `id` int(11) NOT NULL,
  `expensemodel_id` int(11) NOT NULL,
  `expensetagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_expense_expensemodel_tags`
--

INSERT INTO `hr_expense_expensemodel_tags` (`id`, `expensemodel_id`, `expensetagmodel_id`) VALUES
(7, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_jobs_jobmodel`
--

CREATE TABLE `hr_jobs_jobmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sequence` int(11) NOT NULL,
  `open_date` date NOT NULL,
  `expected_salary` varchar(20) NOT NULL,
  `note` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_jobs_jobmodel`
--

INSERT INTO `hr_jobs_jobmodel` (`id`, `name`, `sequence`, `open_date`, `expected_salary`, `note`, `status`, `is_active`, `create_date`, `attachment`, `department_id`) VALUES
(9, 'Accountants', 3, '2023-11-01', '400000', 'Good', 'draft', 1, '2023-11-01 03:16:00.000000', 'accountant_VzWOcYQ.jpg', 5),
(10, 'Customer Service', 3, '2023-11-01', '200000', 'Good', 'draft', 1, '2023-11-01 03:17:00.000000', 'customer-support_FobUP9k.jpg', 6),
(11, 'App Developers', 4, '2023-11-01', '700000', 'we are hiring !', 'open', 1, '2023-11-01 06:22:00.000000', 'it_department_if7ks8N.jpg', 2),
(13, 'UI/UX Designer', 2, '2023-11-02', '500000', 'Permanent worker', 'draft', 1, '2023-11-02 05:20:00.000000', 'it_department_gzxJnIc.jpg', 2),
(14, 'IT Module', 2, '2023-11-03', '500000', 'Good', 'draft', 1, '2023-11-03 08:55:00.000000', '', 2),
(15, 'Web Designer', 1, '2023-11-05', '200000', 'Permanent worker', 'draft', 1, '2023-11-05 11:05:00.000000', 'it_department_Y2GdrOP.jpg', 2),
(16, 'Officer', 1, '2023-11-05', '20,000,000', 'Permanent worker', 'open', 1, '2023-11-05 11:07:00.000000', 'hr_dept_Widl2gs.jpg', 3),
(17, 'General Director', 1, '2023-11-05', '30,000,000', 'Permanent', 'confirm', 1, '2023-11-05 11:07:00.000000', 'hr_dept_AxyWrHr.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hr_jobs_jobmodel_tags`
--

CREATE TABLE `hr_jobs_jobmodel_tags` (
  `id` int(11) NOT NULL,
  `jobmodel_id` int(11) NOT NULL,
  `jobtagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_jobs_jobmodel_tags`
--

INSERT INTO `hr_jobs_jobmodel_tags` (`id`, `jobmodel_id`, `jobtagmodel_id`) VALUES
(4, 9, 1),
(5, 10, 1),
(6, 11, 2),
(9, 13, 2),
(10, 14, 1),
(11, 15, 3),
(12, 16, 4),
(13, 17, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hr_payroll_payrollmodel`
--

CREATE TABLE `hr_payroll_payrollmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `salary` double NOT NULL,
  `ot_rate` int(11) NOT NULL,
  `allowance` int(11) NOT NULL,
  `deduction` int(11) NOT NULL,
  `tax` double NOT NULL,
  `bonus` double NOT NULL,
  `insurance` varchar(10) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_payroll_payrollmodel`
--

INSERT INTO `hr_payroll_payrollmodel` (`id`, `name`, `salary`, `ot_rate`, `allowance`, `deduction`, `tax`, `bonus`, `insurance`, `employee_id`) VALUES
(6, 'Hein\'s payroll', 500000, 70000, 25000, 0, 0, 0, 'other', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hr_payroll_payrollmodel_tags`
--

CREATE TABLE `hr_payroll_payrollmodel_tags` (
  `id` int(11) NOT NULL,
  `payrollmodel_id` int(11) NOT NULL,
  `payrolltagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_payroll_payrollmodel_tags`
--

INSERT INTO `hr_payroll_payrollmodel_tags` (`id`, `payrollmodel_id`, `payrolltagmodel_id`) VALUES
(4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_recruitments_resumemodel`
--

CREATE TABLE `hr_recruitments_resumemodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sequence` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `note` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_recruitments_resumemodel`
--

INSERT INTO `hr_recruitments_resumemodel` (`id`, `name`, `sequence`, `appointment_date`, `note`, `status`, `is_active`, `create_date`, `attachment`, `employee_id`) VALUES
(4, 'For Mon Mon', 2, '2023-11-03', 'Permanent', 'draft', 1, '2023-11-03 09:48:00.000000', 'cv_x2K4HN0.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hr_recruitments_resumemodel_tags`
--

CREATE TABLE `hr_recruitments_resumemodel_tags` (
  `id` int(11) NOT NULL,
  `resumemodel_id` int(11) NOT NULL,
  `resumetagmodel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_recruitments_resumemodel_tags`
--

INSERT INTO `hr_recruitments_resumemodel_tags` (`id`, `resumemodel_id`, `resumetagmodel_id`) VALUES
(5, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_attendancetagmodel`
--

CREATE TABLE `hr_tags_attendancetagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_attendancetagmodel`
--

INSERT INTO `hr_tags_attendancetagmodel` (`id`, `name`) VALUES
(1, 'Regular working hour'),
(2, 'Half-day'),
(3, 'Overtime'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_contracttagmodel`
--

CREATE TABLE `hr_tags_contracttagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_contracttagmodel`
--

INSERT INTO `hr_tags_contracttagmodel` (`id`, `name`) VALUES
(1, 'Full-time contract'),
(2, 'Internship contract'),
(3, 'Freelance contract');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_employeetagmodel`
--

CREATE TABLE `hr_tags_employeetagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_employeetagmodel`
--

INSERT INTO `hr_tags_employeetagmodel` (`id`, `name`) VALUES
(1, 'Part Time'),
(2, 'Full Time'),
(3, 'Freelancer');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_expensetagmodel`
--

CREATE TABLE `hr_tags_expensetagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_expensetagmodel`
--

INSERT INTO `hr_tags_expensetagmodel` (`id`, `name`) VALUES
(1, 'Travelling'),
(2, 'Training'),
(3, 'Recruiting');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_jobtagmodel`
--

CREATE TABLE `hr_tags_jobtagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_jobtagmodel`
--

INSERT INTO `hr_tags_jobtagmodel` (`id`, `name`) VALUES
(1, 'Junior'),
(2, 'Senior'),
(3, 'Intern'),
(4, 'Chief'),
(5, 'M.D');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_payrolltagmodel`
--

CREATE TABLE `hr_tags_payrolltagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_payrolltagmodel`
--

INSERT INTO `hr_tags_payrolltagmodel` (`id`, `name`) VALUES
(1, 'Employee Benefits'),
(2, 'Retirement Contrib:'),
(3, 'Compensation Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tags_resumetagmodel`
--

CREATE TABLE `hr_tags_resumetagmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_tags_resumetagmodel`
--

INSERT INTO `hr_tags_resumetagmodel` (`id`, `name`) VALUES
(1, 'Full-Time Employee'),
(2, 'Intern'),
(3, 'Freelancer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `hr_attendance_attendancemodel`
--
ALTER TABLE `hr_attendance_attendancemodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_attendance_attend_employee_id_d2ab140d_fk_hr_employ` (`employee_id`);

--
-- Indexes for table `hr_attendance_attendancemodel_tags`
--
ALTER TABLE `hr_attendance_attendancemodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_attendance_attendance_attendancemodel_id_atten_5e7ccbcf_uniq` (`attendancemodel_id`,`attendancetagmodel_id`),
  ADD KEY `hr_attendance_attend_attendancetagmodel_i_2c7a00b0_fk_hr_tags_a` (`attendancetagmodel_id`);

--
-- Indexes for table `hr_contracts_contractmodel`
--
ALTER TABLE `hr_contracts_contractmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_contracts_contrac_employee_id_4d158874_fk_hr_employ` (`employee_id`);

--
-- Indexes for table `hr_contracts_contractmodel_tags`
--
ALTER TABLE `hr_contracts_contractmodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_contracts_contractmod_contractmodel_id_contrac_1b15c8af_uniq` (`contractmodel_id`,`contracttagmodel_id`),
  ADD KEY `hr_contracts_contrac_contracttagmodel_id_ce805036_fk_hr_tags_c` (`contracttagmodel_id`);

--
-- Indexes for table `hr_departments_departmentmodel`
--
ALTER TABLE `hr_departments_departmentmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_employees_employeemodel`
--
ALTER TABLE `hr_employees_employeemodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_employees_employe_job_id_21d5f4dd_fk_hr_jobs_j` (`job_id`);

--
-- Indexes for table `hr_employees_employeemodel_tags`
--
ALTER TABLE `hr_employees_employeemodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_employees_employeemod_employeemodel_id_employe_d1a0b3b2_uniq` (`employeemodel_id`,`employeetagmodel_id`),
  ADD KEY `hr_employees_employe_employeetagmodel_id_7a194511_fk_hr_tags_e` (`employeetagmodel_id`);

--
-- Indexes for table `hr_expense_expensemodel`
--
ALTER TABLE `hr_expense_expensemodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_expense_expensemo_employee_id_3564ab33_fk_hr_employ` (`employee_id`);

--
-- Indexes for table `hr_expense_expensemodel_tags`
--
ALTER TABLE `hr_expense_expensemodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_expense_expensemodel__expensemodel_id_expenset_79a152a7_uniq` (`expensemodel_id`,`expensetagmodel_id`),
  ADD KEY `hr_expense_expensemo_expensetagmodel_id_571c89af_fk_hr_tags_e` (`expensetagmodel_id`);

--
-- Indexes for table `hr_jobs_jobmodel`
--
ALTER TABLE `hr_jobs_jobmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_jobs_jobmodel_department_id_cac3ead6_fk_hr_depart` (`department_id`);

--
-- Indexes for table `hr_jobs_jobmodel_tags`
--
ALTER TABLE `hr_jobs_jobmodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_jobs_jobmodel_tags_jobmodel_id_jobtagmodel_id_ff8e3541_uniq` (`jobmodel_id`,`jobtagmodel_id`),
  ADD KEY `hr_jobs_jobmodel_tag_jobtagmodel_id_4b42092e_fk_hr_tags_j` (`jobtagmodel_id`);

--
-- Indexes for table `hr_payroll_payrollmodel`
--
ALTER TABLE `hr_payroll_payrollmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_payroll_payrollmo_employee_id_730a9f06_fk_hr_employ` (`employee_id`);

--
-- Indexes for table `hr_payroll_payrollmodel_tags`
--
ALTER TABLE `hr_payroll_payrollmodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_payroll_payrollmodel__payrollmodel_id_payrollt_1bd686ce_uniq` (`payrollmodel_id`,`payrolltagmodel_id`),
  ADD KEY `hr_payroll_payrollmo_payrolltagmodel_id_98e98c0a_fk_hr_tags_p` (`payrolltagmodel_id`);

--
-- Indexes for table `hr_recruitments_resumemodel`
--
ALTER TABLE `hr_recruitments_resumemodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hr_recruitments_resu_employee_id_7c5620ba_fk_hr_employ` (`employee_id`);

--
-- Indexes for table `hr_recruitments_resumemodel_tags`
--
ALTER TABLE `hr_recruitments_resumemodel_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_recruitments_resumemo_resumemodel_id_resumetag_a0f556bd_uniq` (`resumemodel_id`,`resumetagmodel_id`),
  ADD KEY `hr_recruitments_resu_resumetagmodel_id_9aa835bb_fk_hr_tags_r` (`resumetagmodel_id`);

--
-- Indexes for table `hr_tags_attendancetagmodel`
--
ALTER TABLE `hr_tags_attendancetagmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_tags_contracttagmodel`
--
ALTER TABLE `hr_tags_contracttagmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_tags_employeetagmodel`
--
ALTER TABLE `hr_tags_employeetagmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_tags_expensetagmodel`
--
ALTER TABLE `hr_tags_expensetagmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_tags_jobtagmodel`
--
ALTER TABLE `hr_tags_jobtagmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_tags_payrolltagmodel`
--
ALTER TABLE `hr_tags_payrolltagmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_tags_resumetagmodel`
--
ALTER TABLE `hr_tags_resumetagmodel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `hr_attendance_attendancemodel`
--
ALTER TABLE `hr_attendance_attendancemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hr_attendance_attendancemodel_tags`
--
ALTER TABLE `hr_attendance_attendancemodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hr_contracts_contractmodel`
--
ALTER TABLE `hr_contracts_contractmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hr_contracts_contractmodel_tags`
--
ALTER TABLE `hr_contracts_contractmodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hr_departments_departmentmodel`
--
ALTER TABLE `hr_departments_departmentmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hr_employees_employeemodel`
--
ALTER TABLE `hr_employees_employeemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hr_employees_employeemodel_tags`
--
ALTER TABLE `hr_employees_employeemodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hr_expense_expensemodel`
--
ALTER TABLE `hr_expense_expensemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hr_expense_expensemodel_tags`
--
ALTER TABLE `hr_expense_expensemodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hr_jobs_jobmodel`
--
ALTER TABLE `hr_jobs_jobmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hr_jobs_jobmodel_tags`
--
ALTER TABLE `hr_jobs_jobmodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hr_payroll_payrollmodel`
--
ALTER TABLE `hr_payroll_payrollmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hr_payroll_payrollmodel_tags`
--
ALTER TABLE `hr_payroll_payrollmodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hr_recruitments_resumemodel`
--
ALTER TABLE `hr_recruitments_resumemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hr_recruitments_resumemodel_tags`
--
ALTER TABLE `hr_recruitments_resumemodel_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hr_tags_attendancetagmodel`
--
ALTER TABLE `hr_tags_attendancetagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hr_tags_contracttagmodel`
--
ALTER TABLE `hr_tags_contracttagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hr_tags_employeetagmodel`
--
ALTER TABLE `hr_tags_employeetagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hr_tags_expensetagmodel`
--
ALTER TABLE `hr_tags_expensetagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hr_tags_jobtagmodel`
--
ALTER TABLE `hr_tags_jobtagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hr_tags_payrolltagmodel`
--
ALTER TABLE `hr_tags_payrolltagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hr_tags_resumetagmodel`
--
ALTER TABLE `hr_tags_resumetagmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hr_attendance_attendancemodel`
--
ALTER TABLE `hr_attendance_attendancemodel`
  ADD CONSTRAINT `hr_attendance_attend_employee_id_d2ab140d_fk_hr_employ` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees_employeemodel` (`id`);

--
-- Constraints for table `hr_attendance_attendancemodel_tags`
--
ALTER TABLE `hr_attendance_attendancemodel_tags`
  ADD CONSTRAINT `hr_attendance_attend_attendancemodel_id_6912ef17_fk_hr_attend` FOREIGN KEY (`attendancemodel_id`) REFERENCES `hr_attendance_attendancemodel` (`id`),
  ADD CONSTRAINT `hr_attendance_attend_attendancetagmodel_i_2c7a00b0_fk_hr_tags_a` FOREIGN KEY (`attendancetagmodel_id`) REFERENCES `hr_tags_attendancetagmodel` (`id`);

--
-- Constraints for table `hr_contracts_contractmodel`
--
ALTER TABLE `hr_contracts_contractmodel`
  ADD CONSTRAINT `hr_contracts_contrac_employee_id_4d158874_fk_hr_employ` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees_employeemodel` (`id`);

--
-- Constraints for table `hr_contracts_contractmodel_tags`
--
ALTER TABLE `hr_contracts_contractmodel_tags`
  ADD CONSTRAINT `hr_contracts_contrac_contractmodel_id_66f2432d_fk_hr_contra` FOREIGN KEY (`contractmodel_id`) REFERENCES `hr_contracts_contractmodel` (`id`),
  ADD CONSTRAINT `hr_contracts_contrac_contracttagmodel_id_ce805036_fk_hr_tags_c` FOREIGN KEY (`contracttagmodel_id`) REFERENCES `hr_tags_contracttagmodel` (`id`);

--
-- Constraints for table `hr_employees_employeemodel`
--
ALTER TABLE `hr_employees_employeemodel`
  ADD CONSTRAINT `hr_employees_employe_job_id_21d5f4dd_fk_hr_jobs_j` FOREIGN KEY (`job_id`) REFERENCES `hr_jobs_jobmodel` (`id`);

--
-- Constraints for table `hr_employees_employeemodel_tags`
--
ALTER TABLE `hr_employees_employeemodel_tags`
  ADD CONSTRAINT `hr_employees_employe_employeemodel_id_ba21c737_fk_hr_employ` FOREIGN KEY (`employeemodel_id`) REFERENCES `hr_employees_employeemodel` (`id`),
  ADD CONSTRAINT `hr_employees_employe_employeetagmodel_id_7a194511_fk_hr_tags_e` FOREIGN KEY (`employeetagmodel_id`) REFERENCES `hr_tags_employeetagmodel` (`id`);

--
-- Constraints for table `hr_expense_expensemodel`
--
ALTER TABLE `hr_expense_expensemodel`
  ADD CONSTRAINT `hr_expense_expensemo_employee_id_3564ab33_fk_hr_employ` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees_employeemodel` (`id`);

--
-- Constraints for table `hr_expense_expensemodel_tags`
--
ALTER TABLE `hr_expense_expensemodel_tags`
  ADD CONSTRAINT `hr_expense_expensemo_expensemodel_id_eba2cf62_fk_hr_expens` FOREIGN KEY (`expensemodel_id`) REFERENCES `hr_expense_expensemodel` (`id`),
  ADD CONSTRAINT `hr_expense_expensemo_expensetagmodel_id_571c89af_fk_hr_tags_e` FOREIGN KEY (`expensetagmodel_id`) REFERENCES `hr_tags_expensetagmodel` (`id`);

--
-- Constraints for table `hr_jobs_jobmodel`
--
ALTER TABLE `hr_jobs_jobmodel`
  ADD CONSTRAINT `hr_jobs_jobmodel_department_id_cac3ead6_fk_hr_depart` FOREIGN KEY (`department_id`) REFERENCES `hr_departments_departmentmodel` (`id`);

--
-- Constraints for table `hr_jobs_jobmodel_tags`
--
ALTER TABLE `hr_jobs_jobmodel_tags`
  ADD CONSTRAINT `hr_jobs_jobmodel_tag_jobmodel_id_d91bee4f_fk_hr_jobs_j` FOREIGN KEY (`jobmodel_id`) REFERENCES `hr_jobs_jobmodel` (`id`),
  ADD CONSTRAINT `hr_jobs_jobmodel_tag_jobtagmodel_id_4b42092e_fk_hr_tags_j` FOREIGN KEY (`jobtagmodel_id`) REFERENCES `hr_tags_jobtagmodel` (`id`);

--
-- Constraints for table `hr_payroll_payrollmodel`
--
ALTER TABLE `hr_payroll_payrollmodel`
  ADD CONSTRAINT `hr_payroll_payrollmo_employee_id_730a9f06_fk_hr_employ` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees_employeemodel` (`id`);

--
-- Constraints for table `hr_payroll_payrollmodel_tags`
--
ALTER TABLE `hr_payroll_payrollmodel_tags`
  ADD CONSTRAINT `hr_payroll_payrollmo_payrollmodel_id_3a74cb40_fk_hr_payrol` FOREIGN KEY (`payrollmodel_id`) REFERENCES `hr_payroll_payrollmodel` (`id`),
  ADD CONSTRAINT `hr_payroll_payrollmo_payrolltagmodel_id_98e98c0a_fk_hr_tags_p` FOREIGN KEY (`payrolltagmodel_id`) REFERENCES `hr_tags_payrolltagmodel` (`id`);

--
-- Constraints for table `hr_recruitments_resumemodel`
--
ALTER TABLE `hr_recruitments_resumemodel`
  ADD CONSTRAINT `hr_recruitments_resu_employee_id_7c5620ba_fk_hr_employ` FOREIGN KEY (`employee_id`) REFERENCES `hr_employees_employeemodel` (`id`);

--
-- Constraints for table `hr_recruitments_resumemodel_tags`
--
ALTER TABLE `hr_recruitments_resumemodel_tags`
  ADD CONSTRAINT `hr_recruitments_resu_resumemodel_id_fbefa5c8_fk_hr_recrui` FOREIGN KEY (`resumemodel_id`) REFERENCES `hr_recruitments_resumemodel` (`id`),
  ADD CONSTRAINT `hr_recruitments_resu_resumetagmodel_id_9aa835bb_fk_hr_tags_r` FOREIGN KEY (`resumetagmodel_id`) REFERENCES `hr_tags_resumetagmodel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
