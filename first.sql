-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 04:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 2, 'Virginie Schamberger', 'https://via.placeholder.com/640x480.png/0011ee?text=eveniet', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(2, 3, 'Nyah Dare', 'https://via.placeholder.com/640x480.png/007733?text=esse', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(3, 4, 'Jackson Kozey', 'https://via.placeholder.com/640x480.png/000000?text=officia', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(4, 5, 'Dr. Arnoldo Parker V', 'https://via.placeholder.com/640x480.png/000099?text=sint', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(5, 6, 'Mrs. Zoey Bernhard', 'https://via.placeholder.com/640x480.png/0099ee?text=et', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(6, 7, 'Verna Schmitt', 'https://via.placeholder.com/640x480.png/00bbbb?text=deleniti', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(7, 8, 'Christelle Blanda', 'https://via.placeholder.com/640x480.png/009900?text=et', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(8, 9, 'Yoshiko Reichel Jr.', 'https://via.placeholder.com/640x480.png/009922?text=quia', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(9, 10, 'Miller Spencer Jr.', 'https://via.placeholder.com/640x480.png/0099ff?text=fugit', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(10, 11, 'Bennie Weber II', 'https://via.placeholder.com/640x480.png/0011dd?text=recusandae', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(11, 12, 'Mireille Bruen', 'https://via.placeholder.com/640x480.png/0000aa?text=autem', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(12, 13, 'Evalyn Bradtke', 'https://via.placeholder.com/640x480.png/002200?text=saepe', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(13, 14, 'Prof. Priscilla Durgan', 'https://via.placeholder.com/640x480.png/00bb88?text=sed', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(14, 15, 'Elmore O\'Conner', 'https://via.placeholder.com/640x480.png/008888?text=odio', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(15, 16, 'Prof. Hershel Waelchi', 'https://via.placeholder.com/640x480.png/009900?text=aliquid', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(16, 17, 'Dr. Garnet Franecki Jr.', 'https://via.placeholder.com/640x480.png/0077cc?text=voluptatem', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(17, 18, 'Edna Harvey', 'https://via.placeholder.com/640x480.png/008888?text=expedita', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(18, 19, 'Laila Yost V', 'https://via.placeholder.com/640x480.png/00aa55?text=et', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(19, 20, 'Eliane Buckridge', 'https://via.placeholder.com/640x480.png/001144?text=enim', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(20, 21, 'Carley Thiel', 'https://via.placeholder.com/640x480.png/0022bb?text=sunt', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(21, 22, 'Rosa Jacobson', 'https://via.placeholder.com/640x480.png/002244?text=facilis', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(22, 23, 'Armani Cole', 'https://via.placeholder.com/640x480.png/00eeaa?text=voluptatibus', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(23, 24, 'Lauryn Davis', 'https://via.placeholder.com/640x480.png/005566?text=ratione', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(24, 25, 'Dr. Ross Swaniawski Sr.', 'https://via.placeholder.com/640x480.png/00eedd?text=occaecati', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(25, 26, 'Ms. Lavonne Mohr', 'https://via.placeholder.com/640x480.png/0022dd?text=enim', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(26, 27, 'Athena Berge', 'https://via.placeholder.com/640x480.png/0088aa?text=unde', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(27, 28, 'Prof. Juvenal Armstrong', 'https://via.placeholder.com/640x480.png/005577?text=voluptatibus', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(28, 29, 'Ismael Schulist', 'https://via.placeholder.com/640x480.png/0044ee?text=aut', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(29, 30, 'Ms. Leonor Rowe II', 'https://via.placeholder.com/640x480.png/001199?text=et', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(30, 31, 'Forest Reynolds', 'https://via.placeholder.com/640x480.png/009944?text=numquam', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(31, 32, 'Lorine Strosin', 'https://via.placeholder.com/640x480.png/006611?text=ab', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(32, 33, 'Mr. Jesse Robel', 'https://via.placeholder.com/640x480.png/00ee44?text=rerum', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(33, 34, 'Wilson Corkery', 'https://via.placeholder.com/640x480.png/00ee55?text=enim', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(34, 35, 'Lenora Mueller', 'https://via.placeholder.com/640x480.png/00dd66?text=quod', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(35, 36, 'Carissa Dickens', 'https://via.placeholder.com/640x480.png/00bb11?text=qui', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(36, 37, 'Prof. Pearl Mosciski MD', 'https://via.placeholder.com/640x480.png/003333?text=voluptate', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(37, 38, 'Dorothea Herzog Sr.', 'https://via.placeholder.com/640x480.png/00aa99?text=atque', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(38, 39, 'Alysa Kessler', 'https://via.placeholder.com/640x480.png/0000aa?text=laboriosam', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(39, 40, 'Joshua Osinski', 'https://via.placeholder.com/640x480.png/0011bb?text=mollitia', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(40, 41, 'Prof. Hillard Powlowski I', 'https://via.placeholder.com/640x480.png/00ee00?text=in', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(41, 47, 'Flutter', 'logos/1KIFzmguvjLZeaS0fV1XxqeqSGjCTV1Hbhhz5nYx.jpg', '2025-02-18 15:32:38', '2025-02-18 15:32:38'),
(42, 48, 'Flutter Developer', 'logos/UxYYqNXIhSIcZfLoT8Uoj3qNltzj089lZiv4GwXT.png', '2025-02-18 17:25:49', '2025-02-18 17:25:49'),
(43, 49, 'Flutter Developer', 'logos/czlw1owDWRcl1R9Pb7ALYuhGlYEQVYXjwHZfbib2.png', '2025-02-18 17:28:07', '2025-02-18 17:28:07'),
(44, 51, 'Flutter Developer', 'logos/uByUbO9ogTZlsteHnm1LLxpjpLOOvuoxEFYLl4X1.jpg', '2025-02-18 18:03:09', '2025-02-18 18:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL DEFAULT 'Full Time',
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `employee_id`, `created_at`, `updated_at`, `title`, `url`, `salary`, `location`, `schedule`, `featured`) VALUES
(1, 1, '2025-02-18 11:06:27', '2025-02-18 11:06:27', 'Etcher', 'http://www.stoltenberg.info/et-eaque-enim-labore-odio-quas.html', '10,000 USD', 'ha_GH', 'Full Time', 0),
(2, 2, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Logging Equipment Operator', 'http://www.kunde.com/dolorem-totam-in-ipsum', '5,000 USD', 'en_MT', 'Part Time', 1),
(3, 3, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Tool Set-Up Operator', 'http://www.moore.com/repudiandae-tempora-deleniti-beatae-sit.html', '40,000 USD', 'es_DO', 'Full Time', 0),
(4, 4, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Personnel Recruiter', 'http://huels.com/omnis-incidunt-doloribus-ratione-dolores.html', '10,000 USD', 'lt_LT', 'Part Time', 1),
(5, 5, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'TSA', 'http://raynor.com/sed-sint-labore-ipsum-animi', '100,000  USD', 'fa_AF', 'Full Time', 0),
(6, 6, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Recreation and Fitness Studies Teacher', 'http://www.sipes.net/qui-ipsa-ipsum-doloremque-fuga-et-illo.html', '250,000 USD', 'sl_SI', 'Part Time', 1),
(7, 7, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Motor Vehicle Operator', 'https://murphy.com/in-dolore-quo-cupiditate.html', '30,000 USD', 'en_AU', 'Full Time', 0),
(8, 8, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Grinding Machine Operator', 'http://kihn.com/voluptas-velit-maxime-libero-blanditiis-inventore', '20,000 USD', 'zh_MO', 'Part Time', 1),
(9, 9, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Travel Agent', 'http://www.upton.com/animi-aperiam-nemo-delectus-expedita-sint', '50,000 USD', 'haw_US', 'Full Time', 0),
(10, 10, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Physician Assistant', 'http://olson.info/', '20,000 USD', 'ms_MY', 'Part Time', 1),
(11, 11, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Audio-Visual Collections Specialist', 'https://www.schimmel.com/cupiditate-eius-impedit-repellendus-reprehenderit-molestiae-quasi', '50,000 USD', 'so_KE', 'Full Time', 0),
(12, 12, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Motor Vehicle Operator', 'http://www.crona.net/', '50,000 USD', 'de_AT', 'Part Time', 1),
(13, 13, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Art Teacher', 'http://vonrueden.com/maxime-nihil-est-a.html', '100,000  USD', 'tr_TR', 'Full Time', 0),
(14, 14, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Astronomer', 'http://www.oconnell.com/optio-iusto-architecto-facilis-iste-amet-quia', '40,000 USD', 'my_MM', 'Part Time', 1),
(15, 15, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Psychiatrist', 'http://www.jacobson.com/illum-itaque-esse-sunt-natus-voluptatem-optio-error-a', '40,000 USD', 'eu_ES', 'Full Time', 0),
(16, 16, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Production Manager', 'http://runte.com/et-impedit-quo-facere-laborum-aspernatur', '40,000 USD', 'te_IN', 'Part Time', 1),
(17, 17, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Paste-Up Worker', 'http://www.pouros.com/quo-nihil-et-molestiae-ut-voluptatem-delectus-ea', '5,000 USD', 'ar_YE', 'Full Time', 0),
(18, 18, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Personal Home Care Aide', 'https://www.murray.com/deserunt-voluptatem-aut-commodi-ipsum-asperiores', '20,000 USD', 'sr_ME', 'Part Time', 1),
(19, 19, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Pressure Vessel Inspector', 'http://www.monahan.com/', '5,000 USD', 'fr_LU', 'Full Time', 0),
(20, 20, '2025-02-18 11:06:28', '2025-02-18 11:06:28', 'Lay-Out Worker', 'http://lakin.com/nesciunt-dignissimos-deserunt-ut-est-fugiat', '250,000 USD', 'yo_NG', 'Part Time', 1),
(21, 44, '2025-02-18 22:27:49', '2025-02-18 22:27:49', 'SEO', 'https://laracast.com/work', '2,000,000', 'china', 'Full Time', 1),
(22, 44, '2025-02-20 20:28:50', '2025-02-20 20:28:50', 'Football Player', 'https://laracast.com/work', '6,000,000', 'CHELESE', 'Part Time', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_tag`
--

CREATE TABLE `job_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_tag`
--

INSERT INTO `job_tag` (`id`, `job_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 3, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 5, 1, NULL, NULL),
(14, 5, 2, NULL, NULL),
(15, 5, 3, NULL, NULL),
(16, 6, 1, NULL, NULL),
(17, 6, 2, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 7, 1, NULL, NULL),
(20, 7, 2, NULL, NULL),
(21, 7, 3, NULL, NULL),
(22, 8, 1, NULL, NULL),
(23, 8, 2, NULL, NULL),
(24, 8, 3, NULL, NULL),
(25, 9, 1, NULL, NULL),
(26, 9, 2, NULL, NULL),
(27, 9, 3, NULL, NULL),
(28, 10, 1, NULL, NULL),
(29, 10, 2, NULL, NULL),
(30, 10, 3, NULL, NULL),
(31, 11, 1, NULL, NULL),
(32, 11, 2, NULL, NULL),
(33, 11, 3, NULL, NULL),
(34, 12, 1, NULL, NULL),
(35, 12, 2, NULL, NULL),
(36, 12, 3, NULL, NULL),
(37, 13, 1, NULL, NULL),
(38, 13, 2, NULL, NULL),
(39, 13, 3, NULL, NULL),
(40, 14, 1, NULL, NULL),
(41, 14, 2, NULL, NULL),
(42, 14, 3, NULL, NULL),
(43, 15, 1, NULL, NULL),
(44, 15, 2, NULL, NULL),
(45, 15, 3, NULL, NULL),
(46, 16, 1, NULL, NULL),
(47, 16, 2, NULL, NULL),
(48, 16, 3, NULL, NULL),
(49, 17, 1, NULL, NULL),
(50, 17, 2, NULL, NULL),
(51, 17, 3, NULL, NULL),
(52, 18, 1, NULL, NULL),
(53, 18, 2, NULL, NULL),
(54, 18, 3, NULL, NULL),
(55, 19, 1, NULL, NULL),
(56, 19, 2, NULL, NULL),
(57, 19, 3, NULL, NULL),
(58, 20, 1, NULL, NULL),
(59, 20, 2, NULL, NULL),
(60, 20, 3, NULL, NULL),
(61, 21, 4, NULL, NULL),
(62, 21, 5, NULL, NULL),
(63, 21, 6, NULL, NULL),
(64, 22, 7, NULL, NULL);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_queued_jobs_table', 1),
(4, '2025_02_14_011257_create_jobs_table', 1),
(5, '2025_02_14_011310_create_employees_table', 1),
(6, '2025_02_14_011335_create_tags_table', 1),
(7, '2025_02_14_024449_create_job_tag_table', 1);

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
-- Table structure for table `queued_failed_jobs`
--

CREATE TABLE `queued_failed_jobs` (
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
-- Table structure for table `queued_jobs`
--

CREATE TABLE `queued_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queued_job_batches`
--

CREATE TABLE `queued_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FGd6jvhVdtuFCWQn2quGdIRszkS1IQymo4TwVWLC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGM2MXh3VnBBUU5RTXFaSXRVV3Bhb0NXcGVjUkR3MDVsS0hlQU1LWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fX0=', 1742295804),
('H6KnhWNyrydSisCJFERWqvO32WvLZH89r1SzDCkM', 51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0UyMzYybndzQjFTM3JndTh2QWFMd2o1MFlKd1pQb3RJdlhmazI4ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zZWFyY2g/cT1mb290YmFsbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjUxO30=', 1740099327),
('P7u5hUwwHbHWKodGACFBEXm6TI58B7WMN8i9DEPR', 51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic0QyYkJTNExiTHRqQnBNZjZ5c1FTZFg2WXBSUm40ZGJudkp2TTMwUiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTE7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741732028);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'program', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(2, 'construct', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(3, 'medical', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(4, 'Entering', '2025-02-18 22:27:49', '2025-02-18 22:27:49'),
(5, 'Config', '2025-02-18 22:27:49', '2025-02-18 22:27:49'),
(6, 'check', '2025-02-18 22:27:49', '2025-02-18 22:27:49'),
(7, 'Sport', '2025-02-20 20:28:50', '2025-02-20 20:28:50');

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
(1, 'Test User', 'test@example.com', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'HO7zzQ1l9W', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(2, 'Lauren Conn', 'presley84@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '9sBGwu8Jwz', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(3, 'Travis Gleichner', 'kilback.angie@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'khuWTiATwt', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(4, 'Beau Marks', 'jacklyn44@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'IJBuBvtDQk', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(5, 'Miss Jacquelyn Wuckert', 'juliana.hand@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '6AqNNTpCAQ', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(6, 'Jamey Hamill', 'runte.alexandro@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'mjHArAkrsw', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(7, 'Herminia Treutel', 'nkuhlman@example.com', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'AbySFXQO3I', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(8, 'Ms. Duane Cremin DDS', 'morar.oren@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '6fjwBSg7kT', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(9, 'Oran Dietrich', 'ibrown@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'kOgSarqJ9v', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(10, 'Christiana Dietrich', 'jeremie.fadel@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'NrZivPw7nP', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(11, 'Mertie Cole', 'leonel44@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'hI2QOu3I8G', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(12, 'Ambrose Lehner', 'gennaro62@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'InrgoS4p4m', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(13, 'Jamar Reichel', 'omoore@example.com', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'ir3kVU9r5o', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(14, 'Dorothea Hills I', 'rebecca70@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '9iKwGUczdv', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(15, 'Rachel Morar DDS', 'deckow.candelario@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '1mN5mhcaP6', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(16, 'Lempi Braun', 'yokeefe@example.com', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'EwWjEB3fBS', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(17, 'Ms. Edyth Quigley I', 'vhane@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'XfljvDGOd7', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(18, 'Arnulfo Rogahn', 'lyric.boyer@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'aXXmmJ2TWn', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(19, 'Jada Kerluke', 'victoria48@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'oTOAeOwyzt', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(20, 'Lazaro Pagac', 'coralie.oberbrunner@example.org', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '7ROQHG35Hk', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(21, 'Prof. Asia Kuvalis DVM', 'ubogisich@example.net', '2025-02-18 11:06:27', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'Z96w0BCvfo', '2025-02-18 11:06:27', '2025-02-18 11:06:27'),
(22, 'Ubaldo Hayes', 'benton89@example.net', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'h3emcv4Rgg', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(23, 'Murray Barrows', 'considine.kyra@example.net', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'jjGiuvs3AK', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(24, 'Mrs. Amalia Graham MD', 'christiansen.lydia@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'vMBsgVsHud', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(25, 'Ruthie Schneider', 'ekutch@example.org', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'MbnjazBPiU', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(26, 'Christophe Kunze', 'garland36@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '8HnhTK3Kio', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(27, 'Prof. Adelbert Grady PhD', 'labadie.gladys@example.org', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'YRCD9YcDRA', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(28, 'Sigurd Hackett', 'goldner.palma@example.net', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '8T4VvO0RyN', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(29, 'Dr. Jude O\'Kon Jr.', 'dannie.pfeffer@example.net', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'Bt0USX0nzZ', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(30, 'Angeline Lebsack', 'idella.abshire@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'H0BXaLNJXv', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(31, 'Dr. Queenie Leuschke', 'rlemke@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '8hDlO95YJw', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(32, 'Ms. Jaqueline Schiller IV', 'dgrant@example.org', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'RQ0l4RqzwG', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(33, 'Cortney Kihn', 'lukas.thiel@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'PMgtN6SgOn', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(34, 'Dr. Alphonso Herzog', 'hgibson@example.org', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'xSbjTMDEB3', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(35, 'Celestine Balistreri', 'tillman.remington@example.org', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'idSCEoKz16', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(36, 'Tyler Schneider', 'franco.reichert@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'XsPNfCqVPY', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(37, 'Prof. Lavinia Powlowski MD', 'ciara42@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', '6rTTbofTA2', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(38, 'Niko Stroman', 'qwiegand@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'nndUIysHBU', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(39, 'Prof. Dejon Conroy Sr.', 'loma.spencer@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'Qq6hYogpDK', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(40, 'Alessandra Connelly', 'jwhite@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'aSB9f09nYG', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(41, 'Kurtis Schaden', 'xleffler@example.com', '2025-02-18 11:06:28', '$2y$12$iHtfWpeB1YfsvBxRJdtq4uHdZYIj2U.97zHto16gi/LSMJsY6ZPoO', 'GwlMx528Nd', '2025-02-18 11:06:28', '2025-02-18 11:06:28'),
(51, 'amro', 'amro@gmail.com', NULL, '$2y$12$RfzInjOSMlFAlF9Il1cgoe0QNdXtkxaO2G81dN0v.XdqX..FvcjEi', 'Dt5NSSbEeh6eR58TbCCtNA6YKGLeECAZJAYtJdLrb2G3O7M8km6o45AVkPch', '2025-02-18 18:03:09', '2025-02-18 18:03:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_tag_job_id_foreign` (`job_id`),
  ADD KEY `job_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `queued_failed_jobs`
--
ALTER TABLE `queued_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `queued_failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queued_jobs_queue_index` (`queue`);

--
-- Indexes for table `queued_job_batches`
--
ALTER TABLE `queued_job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `job_tag`
--
ALTER TABLE `job_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `queued_failed_jobs`
--
ALTER TABLE `queued_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD CONSTRAINT `job_tag_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
