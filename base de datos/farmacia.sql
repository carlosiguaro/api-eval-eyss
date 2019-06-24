-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para farmacia
CREATE DATABASE IF NOT EXISTS `farmacia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `farmacia`;

-- Volcando estructura para tabla farmacia.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL,
  `designacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categorias_id_unique` (`id`),
  UNIQUE KEY `categorias_designacion_unique` (`designacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.categorias: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `designacion`, `created_at`, `updated_at`) VALUES
	(15, 'Analgecico', '2019-06-23 22:18:24', '2019-06-23 22:18:24'),
	(24, 'Antibiotico', '2019-06-23 22:18:24', '2019-06-23 22:18:24'),
	(25, 'Antialergico', '2019-06-23 22:18:24', '2019-06-23 22:18:24'),
	(86, 'Diuretico', '2019-06-23 22:18:24', '2019-06-23 22:18:24'),
	(93, 'Vitamina', '2019-06-23 22:18:24', '2019-06-23 22:18:24');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.migrations: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_06_22_122107_create_categorias_table', 1),
	(9, '2019_06_22_122212_create_productos_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.oauth_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.oauth_auth_codes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.oauth_clients: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'tbdxToVSHNQvdeHDIq8JMcTxKoZoiHYTxRdLe5Jy', 'http://localhost', 1, 0, 0, '2019-06-23 22:18:14', '2019-06-23 22:18:14'),
	(2, NULL, 'Laravel Password Grant Client', 'XJLijE5N2oRE44fNU8SWjQX3O7hh1pfTeRVZysPi', 'http://localhost', 0, 1, 0, '2019-06-23 22:18:14', '2019-06-23 22:18:14');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.oauth_personal_access_clients: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-06-23 22:18:14', '2019-06-23 22:18:14');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.oauth_refresh_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productos_id_unique` (`id`),
  UNIQUE KEY `productos_nombre_unique` (`nombre`),
  KEY `productos_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.productos: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `categoria_id`, `descripcion`, `created_at`, `updated_at`) VALUES
	(878, 'Furosemida', 86, 'Et et maiores impedit quis.', '2019-06-23 22:18:24', '2019-06-23 22:18:24'),
	(963, 'Espironolactona', 86, 'Illum et eius repudiandae.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(1008, 'Cetirizina', 25, 'Quasi accusantium dicta quos.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(1394, 'Hidroclorotiazida', 86, 'Vitae nulla ipsum non sed.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(1602, 'Cebion', 93, 'Ab doloribus amet nam.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(1898, 'Amoxicilina', 24, 'In cumque amet esse repellat.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(2679, 'Desloratadina', 25, 'Quae cum at qui voluptatum.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(3936, 'Paracetamol', 15, 'Incidunt tempore fugit et id.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(4454, 'Azitromicina', 24, 'Omnis ex tempore vel.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(4824, 'DOL', 15, 'Esse qui voluptatibus ut.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(4998, 'Levocetirizina', 25, 'In et consectetur tempora.', '2019-06-23 22:18:26', '2019-06-23 22:18:26'),
	(5013, 'Amilorida', 86, 'Fugit nulla saepe nihil qui.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(5712, 'ibuprofeno ', 15, 'Aut sequi et qui.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(6575, 'Fexofenadina', 25, 'Est molestias autem fugit.', '2019-06-23 22:18:26', '2019-06-23 22:18:26'),
	(7098, 'naproxeno', 15, 'Expedita numquam et quam.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(7111, 'Henovic', 93, 'Quia qui unde quam animi.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(7675, 'Cevax', 93, 'Et et enim veritatis eveniet.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(7931, 'Miovit', 93, 'Aut aut dignissimos quo.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(8109, 'Loratadina', 25, 'In alias est harum aliquam.', '2019-06-23 22:18:26', '2019-06-23 22:18:26'),
	(8627, 'Cefadroxilo', 24, 'Error quo quia dolor impedit.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(8808, 'Penicilina', 24, 'Sequi repellat iste numquam.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(9808, 'Cefalexina', 24, 'Commodi dolorum dolore dolor.', '2019-06-23 22:18:25', '2019-06-23 22:18:25'),
	(9850, 'Plexamin', 93, 'Aut vel eligendi ullam.', '2019-06-23 22:18:25', '2019-06-23 22:18:25');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla farmacia.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla farmacia.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
