-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-10-2025 a las 03:58:18
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `landingDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `correo` varchar(160) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password_hash`, `fecha_nacimiento`, `fecha_registro`) VALUES
(1, 'Usuario 1', 'usuario1@ejemplo.com', 'be6fded9eba153d774245490f8f4120cebe2a6d3a5467603eca3343de90d6275', '1987-05-28', '2025-10-04 04:52:26'),
(2, 'Usuario 2', 'usuario2@ejemplo.com', '7ab048ba3931ced4c81ddc169a632642b38dbc3701ab5b9e616ad83a0eedbcb1', '1981-11-30', '2025-10-04 04:52:26'),
(3, 'Usuario 3', 'usuario3@ejemplo.com', '4396a959dd6b5e0bb46a1b8328afa4d1ba9420a1a5ce2ce94a92468cf977aae6', '1989-04-06', '2025-10-04 04:52:26'),
(4, 'Usuario 4', 'usuario4@ejemplo.com', '8c37dca73a2d50b337534a6693a96c3c77015aec2a2c8facad45e225f91aed38', '1998-09-01', '2025-10-04 04:52:26'),
(5, 'Usuario 5', 'usuario5@ejemplo.com', 'b4526c6e38770dc68b7fceac04f3f1cf52415eff508482d058e26c6f8669c981', '2001-09-26', '2025-10-04 04:52:26'),
(6, 'Usuario 6', 'usuario6@ejemplo.com', 'c9bfbb12cada9a1a4e1ede3ae6b3003dfca37f6d2b1fd9065fabdd79e5929bc8', '1988-11-14', '2025-10-04 04:52:26'),
(7, 'Usuario 7', 'usuario7@ejemplo.com', '70e3f874804f31f753d570f3ee6372e164ea6c5cd3a8089b0297bb111a0aaeaf', '1981-01-20', '2025-10-04 04:52:26'),
(8, 'Usuario 8', 'usuario8@ejemplo.com', '484666688fc8f814fada615c8f005469892efa45c3cf3e3c1830d46318a23f0b', '1980-07-24', '2025-10-04 04:52:26'),
(9, 'Usuario 9', 'usuario9@ejemplo.com', '6099e7aab141ac44970350ed5dfa10c75f20bdb5fd41c750f3122af2cb47fbca', '2001-07-19', '2025-10-04 04:52:26'),
(10, 'Erick Solis', 'usuario10@ejemplo.com', '0740a6aab0b7a2fa4b52abfde7b75d15963c73e41624a74c1a31596316142f6c', '1998-06-06', '2025-10-04 04:52:26'),
(11, 'Usuario 11', 'usuario11@ejemplo.com', 'ee66915acd29521765ebeca8aed01c137d2cd96dd6550bbd58c17439a13f6254', '1985-08-10', '2025-10-04 04:52:26'),
(12, 'Usuario 12', 'usuario12@ejemplo.com', 'e09effffb46c62feaddf37ba7e298494d0e99a1dbcce743c4ddb3ca9ab970c62', '1996-07-21', '2025-10-04 04:52:26'),
(13, 'Usuario 13', 'usuario13@ejemplo.com', '173d5a741d2c70bb3525ad384604982f259fc2885e25d52acddc48142c8a37ae', '1980-03-28', '2025-10-04 04:52:26'),
(14, 'Usuario 14', 'usuario14@ejemplo.com', 'f97e6fb1b081f32cc66f30bfa62aa8a8535948218a8dd1320ac7514ad061e990', '1997-03-25', '2025-10-04 04:52:26'),
(16, 'Usuario 16', 'usuario16@ejemplo.com', '36a0c726612b606601d093cb6134304a310d7b5bf4f952843b4b3966599237ea', '1983-02-26', '2025-10-04 04:52:26'),
(17, 'Usuario 17', 'usuario17@ejemplo.com', 'be497bd0c84ed83909dea6229a5158f3d2922811ae6c54d9044b0650f9a593ec', '1980-05-20', '2025-10-04 04:52:26'),
(18, 'Usuario 18', 'usuario18@ejemplo.com', 'd3e7de0a3c7f00be965b1ff6d8931787d8093999a8321e491b5e6c675c9273fa', '1994-05-09', '2025-10-04 04:52:26'),
(19, 'Usuario 19', 'usuario19@ejemplo.com', '489de7878c26ddd25dd4e40a1ea855b3cf24d4ea08ef326fe8d5880cb79f188e', '1984-11-27', '2025-10-04 04:52:26'),
(20, 'Usuario 20', 'usuario20@ejemplo.com', 'd22c99fd5bbdcf9f26a148ebc523cfa9f75a5fd0698655810ab946530933b8f3', '1983-05-19', '2025-10-04 04:52:26'),
(21, 'Usuario 21', 'usuario21@ejemplo.com', '5abee23b61b938c8fab27f8ba64a7aebf8f0076eea87c633fd292dcb9f5540c5', '1982-03-04', '2025-10-04 04:52:26'),
(22, 'Usuario 22', 'usuario22@ejemplo.com', '19a135099c85677d0d4b976dc210645bd5586496a84c0ea9aa16aa8b0c23c60a', '1980-09-20', '2025-10-04 04:52:26'),
(23, 'Usuario 23', 'usuario23@ejemplo.com', 'e11ca16d3f77dbba1738278b5c91921e31f9a2d9b63780b4c0d9be14a30803ea', '1998-12-27', '2025-10-04 04:52:26'),
(24, 'Usuario 24', 'usuario24@ejemplo.com', '8142300a87913ff9131f7ba636c40a2e79121917580660b720851b54890dabdb', '1985-02-26', '2025-10-04 04:52:26'),
(25, 'Usuario 25', 'usuario25@ejemplo.com', 'b1f705d63f076fb2415cb19df3dd6d3cdfe4549cd93a900f11964f38e76caeb2', '1992-08-18', '2025-10-04 04:52:26'),
(26, 'Usuario 26', 'usuario26@ejemplo.com', 'ad0cc17d2874ab8ee5c197aa59bf84cdd5bc1afd8560cd8efcd2fdbf8a3582a6', '1983-11-15', '2025-10-04 04:52:26'),
(27, 'Usuario 27', 'usuario27@ejemplo.com', '878efc6b8f12948bd17f4fd78555e6c959b603c7c8d91b9c21250d9b7a645c91', '1983-05-16', '2025-10-04 04:52:26'),
(28, 'Usuario 28', 'usuario28@ejemplo.com', 'f15b7852976ef38856bc4e70a5294faeb013b26dd5d2eafca65bbaf129c15769', '1985-03-26', '2025-10-04 04:52:26'),
(29, 'Usuario 29', 'usuario29@ejemplo.com', '62cde88f774045b1f541cc40e35a085525f969760409e9ee58262a8b087480f2', '1996-01-18', '2025-10-04 04:52:26'),
(30, 'Usuario 30', 'usuario30@ejemplo.com', 'ae23dc4467a9856087995380f950126b268755a3334882279cf94605f51f3fb0', '2000-09-24', '2025-10-04 04:52:26'),
(31, 'Usuario 31', 'usuario31@ejemplo.com', '38921c8893ff7b7564898ea29ab961a6077832802e43ebb95e5376d287ba4367', '1991-09-16', '2025-10-04 04:52:26'),
(32, 'Usuario 32', 'usuario32@ejemplo.com', 'fafa4a77d4fc4eb86cbae6f026df94ae818864c52eee0bcc86098d098a2e899c', '1998-04-01', '2025-10-04 04:52:26'),
(33, 'Usuario 33', 'usuario33@ejemplo.com', '386fd74307d521d61f7d439c634df70ece8306860a01c02e2b2961744ae56c11', '1992-04-22', '2025-10-04 04:52:26'),
(34, 'Usuario 34', 'usuario34@ejemplo.com', '3c32d275ed22f72ac4713e484fe311109f703793fbc28b165e0c48d4b97d58bb', '1986-10-17', '2025-10-04 04:52:26'),
(35, 'Usuario 35', 'usuario35@ejemplo.com', 'fc95277d2207c10a59a0ac1a3d30edac2f66a09d8043704072636328f525143b', '1998-12-09', '2025-10-04 04:52:26'),
(36, 'Usuario 36', 'usuario36@ejemplo.com', '4e2033f75c842eb6b301e724b5d0c258a673ca6c45719e20fdf8d8ee037379d2', '1988-08-09', '2025-10-04 04:52:26'),
(37, 'Usuario 37', 'usuario37@ejemplo.com', '92012f1fb08bed7d71ef4e73f7d3091759db094513d848dbbb486b5e5e5a3118', '1988-02-11', '2025-10-04 04:52:26'),
(38, 'Usuario 38', 'usuario38@ejemplo.com', '8615d2b2d7f043c71bd57d248a4fde151be12563ff1046663840f2199c99d858', '1994-09-29', '2025-10-04 04:52:26'),
(39, 'Usuario 39', 'usuario39@ejemplo.com', '095e695e7e491b331baa8da211a295579f90d70de689d3c3fcc272085318f0e3', '1985-07-28', '2025-10-04 04:52:26'),
(40, 'Usuario 40', 'usuario40@ejemplo.com', '18afcbff70cee3e24f776bfeae9da89b2de6ea90d7629dc89449c7d340fd5281', '1985-07-15', '2025-10-04 04:52:26'),
(41, 'Usuario 41', 'usuario41@ejemplo.com', '0cc9fa9216742d68662d6c74b76f627461bec0e6ea30149c42875cbfbe23fb32', '1990-12-19', '2025-10-04 04:52:26'),
(42, 'Usuario 42', 'usuario42@ejemplo.com', '2ae6eef07029c462a1ae730fd31ed1ea25c5ac9311e1de2041951dbff4f3e731', '1996-04-22', '2025-10-04 04:52:26'),
(43, 'Usuario 43', 'usuario43@ejemplo.com', '38697c5cf7f38da9d52c70a84c578dd9f8f8c84a9e74454f1794ca37ffa0ebae', '1984-11-01', '2025-10-04 04:52:26'),
(44, 'Usuario 44', 'usuario44@ejemplo.com', 'a90da7bdf31f317a041264ee626ff0f3f7c369e25b42b80dfe4b5ee5211afdc2', '1999-01-24', '2025-10-04 04:52:26'),
(45, 'Usuario 45', 'usuario45@ejemplo.com', '6b91822f493203f90373abf4174a71d9aeb2bb741a2d58b3f1cfde081f38031e', '1995-02-05', '2025-10-04 04:52:26'),
(46, 'Usuario 46', 'usuario46@ejemplo.com', 'fb77e59a9e55abf12fb5da7d73d945f64bfe2848e41129916a9f9966a636098f', '1998-04-17', '2025-10-04 04:52:26'),
(47, 'Usuario 47', 'usuario47@ejemplo.com', 'd09b8ddf7d2d840269804b9838f9e0f6e2ca8935cd6373e73bd013ca7bc7fcba', '1982-05-13', '2025-10-04 04:52:26'),
(48, 'Usuario 48', 'usuario48@ejemplo.com', 'e835b1844a1696e6823bac5cf78ce72eb696ab026eaf7fca5f013a8c9c341969', '1980-09-30', '2025-10-04 04:52:26'),
(49, 'Usuario 49', 'usuario49@ejemplo.com', 'd2efe40400fac5223ab9d48a208571249013011bb6b47b5a71bca0457d86e906', '1998-07-18', '2025-10-04 04:52:26'),
(50, 'Usuario 50', 'usuario50@ejemplo.com', '953332b86e27a0b667bfa41f383fe7ede3776d9c6f10aecd89c0fedea6c70333', '1982-11-13', '2025-10-04 04:52:26'),
(51, 'Usuario 51', 'usuario51@ejemplo.com', '30ca6b84d050d1f27d9b1d79942247c46c215d9f42fa9cc653bfbc4c3d3a770a', '1982-07-03', '2025-10-04 04:52:26'),
(52, 'Usuario 52', 'usuario52@ejemplo.com', '052a9d187bcefa76f63615cc4306e7675726d91c5cecbe86ab0926a2e9546182', '1983-12-01', '2025-10-04 04:52:26'),
(53, 'Usuario 53', 'usuario53@ejemplo.com', '2916b677ecb9a68964a2f0c7ea9893e136cf1dd9bad440d7f385486d86e207df', '1992-01-24', '2025-10-04 04:52:26'),
(54, 'Usuario 54', 'usuario54@ejemplo.com', '71ee42c4f0f05c04a3587729d32ded1dbabc829d7da2688d2be48236f3d2ff79', '1984-10-08', '2025-10-04 04:52:26'),
(55, 'Usuario 55', 'usuario55@ejemplo.com', 'b66e97a2f575b1be600ca40506fdafb030b05c6d863fd36a402733e7fe3bade1', '1989-07-22', '2025-10-04 04:52:26'),
(56, 'Usuario 56', 'usuario56@ejemplo.com', '41f10d4f5d4ad38f45d0bf78c8403efa0208198f0224a74f0dced181281fec12', '1991-07-27', '2025-10-04 04:52:26'),
(57, 'Usuario 57', 'usuario57@ejemplo.com', '9fe0d707191b07699ace7c86857935b73be25e6c03cef6a34436f6a5d45ada63', '1987-04-06', '2025-10-04 04:52:26'),
(58, 'Usuario 58', 'usuario58@ejemplo.com', '9dc5f73a03dfb5a84e607f7bfc178d915465f466a7d56392fb6ce01ff42e0099', '1981-08-07', '2025-10-04 04:52:26'),
(59, 'Usuario 59', 'usuario59@ejemplo.com', 'a733a361a5c4fc3d06c934e1bb37b62b5108b5571d58076d27334c1ffec300e4', '1988-02-12', '2025-10-04 04:52:26'),
(60, 'Usuario 60', 'usuario60@ejemplo.com', 'f0833fc814f7c6bf93507ccd43ed204061cadec570a7d7e20c3c53acf3ecb7e9', '1993-11-16', '2025-10-04 04:52:26'),
(61, 'Usuario 61', 'usuario61@ejemplo.com', '718cfa4dcdf24476e2585d09f7cec8bf2ac6408425ad4d137d6251e813893a02', '1981-03-21', '2025-10-04 04:52:26'),
(62, 'Usuario 62', 'usuario62@ejemplo.com', 'de0375665a66e0c6533f24ab704dc46395c03d2624c8563172c24a2357857c7a', '1988-04-12', '2025-10-04 04:52:26'),
(63, 'Usuario 63', 'usuario63@ejemplo.com', 'cc1ddeaa10e0dd82558a48c3777584ca6b4a060dde0da66efb2f28cb6cf027e1', '1995-11-01', '2025-10-04 04:52:26'),
(64, 'Usuario 64', 'usuario64@ejemplo.com', 'a090521bcb1d55d87613aa9145733dc15584a6e95aee600d508e09287d4ea61a', '1990-07-08', '2025-10-04 04:52:26'),
(65, 'Usuario 65', 'usuario65@ejemplo.com', 'c29f22dbe63fe0ed5da2a07e838fd103cffb07d4845ca0936913aa4e54395b73', '1985-01-30', '2025-10-04 04:52:26'),
(66, 'Usuario 66', 'usuario66@ejemplo.com', 'b37aca8f3e0492bba9bef6ebea412f22c14681de34b523860882a751b6174851', '1995-10-06', '2025-10-04 04:52:26'),
(67, 'Usuario 67', 'usuario67@ejemplo.com', '72e60619149e24275fc7140fcdd278aac1006d3e86a93b30d8587a9e1a2d9f31', '1999-10-05', '2025-10-04 04:52:26'),
(68, 'Usuario 68', 'usuario68@ejemplo.com', 'ccd29e547c1f4452eca9191ca2784ce68a41b7582f73027b4dbe02a1db161b52', '1987-09-16', '2025-10-04 04:52:26'),
(69, 'Usuario 69', 'usuario69@ejemplo.com', '2780064f64d40265956a1dd19f1eafcf22cf21e7a9cbb1aa6ca805fcf304f7c7', '1981-02-26', '2025-10-04 04:52:26'),
(70, 'Usuario 70', 'usuario70@ejemplo.com', 'b0d1943965179061b7be89ef859c841abba9a581f81aabd59d26ad5e1bb15082', '1984-07-24', '2025-10-04 04:52:26'),
(71, 'Usuario 71', 'usuario71@ejemplo.com', '82bbc8f5f7c710147e31df7a654d581ba5b089e11f5d4b7335ecb391482eed4b', '1999-05-03', '2025-10-04 04:52:26'),
(72, 'Usuario 72', 'usuario72@ejemplo.com', '40560cfcde2f5ad3d1a397b8e939f64ffa6937229b2a42a8e47d0901ffe27caa', '1997-04-13', '2025-10-04 04:52:26'),
(73, 'Usuario 73', 'usuario73@ejemplo.com', 'f8443abefdcefc9945b53b7f6a47dc5603ed4a4da01960b1e64f2cda31101d63', '1986-06-30', '2025-10-04 04:52:26'),
(74, 'Usuario 74', 'usuario74@ejemplo.com', '182f7b9142743840a4e67662b78c3dcdf8ec330deddd1ebcc687187bb64bcbc5', '1982-07-12', '2025-10-04 04:52:26'),
(75, 'Usuario 75', 'usuario75@ejemplo.com', 'd726be9fa53c341e681a4f7ed783d8e0414a214b0610b77e4c8a6b7dac1cbfb9', '1995-01-21', '2025-10-04 04:52:26'),
(76, 'Usuario 76', 'usuario76@ejemplo.com', '1dabd748d98491a37f07f543e1b59513da2c830688f05466ed4ee163ee9176d8', '1981-12-26', '2025-10-04 04:52:26'),
(77, 'Usuario 77', 'usuario77@ejemplo.com', '76881fdc18df912f9d579d76bc56b94d98a8462d079143f3b196515ce72fe067', '1988-07-24', '2025-10-04 04:52:26'),
(78, 'Usuario 78', 'usuario78@ejemplo.com', '02b7ddaaaccae5fcd637a3165b5c746253b1a0f49ab39c15310e08d8e8854474', '1994-12-15', '2025-10-04 04:52:26'),
(79, 'Usuario 79', 'usuario79@ejemplo.com', '8e6e3f19ba3756d1a2c0c0424800590fe7f87c09b40dc4894b28f8b963bb5830', '1985-04-12', '2025-10-04 04:52:26'),
(80, 'Usuario 80', 'usuario80@ejemplo.com', '01cab039d34ded7441ab879c139567ce8896fa7fd31576753d1ce0a8130564d2', '1983-06-06', '2025-10-04 04:52:26'),
(81, 'Usuario 81', 'usuario81@ejemplo.com', '01deae8356a8fe1bec58479b8324772f54605a864386df98541abdd19b70b8ba', '1981-04-19', '2025-10-04 04:52:26'),
(82, 'Usuario 82', 'usuario82@ejemplo.com', 'bdf9b504d162daebcd3716b7b89ba7733c6ccb42c91a87fac881fb66f6ba4c45', '1998-02-10', '2025-10-04 04:52:26'),
(83, 'Usuario 83', 'usuario83@ejemplo.com', '74756b6de81643a1216b51e1a892c2fdf82ed85907d6ad2fee005024dd535c33', '2000-12-16', '2025-10-04 04:52:26'),
(84, 'Usuario 84', 'usuario84@ejemplo.com', 'f33ffd4b4ea3f8f2c5941929bd8c1bb6a33a501d35f212da42bcaeb21f89278b', '1986-08-23', '2025-10-04 04:52:26'),
(85, 'Usuario 85', 'usuario85@ejemplo.com', 'e53efcfe340a082609b7228eb4bf291df1335e06d3ea48ab93b502638ad27c92', '1994-02-22', '2025-10-04 04:52:26'),
(86, 'Usuario 86', 'usuario86@ejemplo.com', 'a19092f01824823a201d6ea96260a616ff4187df532c29767b3d9d09b4c7ad55', '1986-12-26', '2025-10-04 04:52:26'),
(87, 'Usuario 87', 'usuario87@ejemplo.com', 'eade6429511706126fae9c67e6deae9b2a2a3aa6cd5b709750c7b2670d8e168d', '1994-05-23', '2025-10-04 04:52:26'),
(88, 'Usuario 88', 'usuario88@ejemplo.com', '6ec22fe5d886b4c042922c70c744ef508b25379d6cf09cac9e7188abf9231f7f', '1987-03-13', '2025-10-04 04:52:26'),
(89, 'Usuario 89', 'usuario89@ejemplo.com', 'e73b3a67d3b92345be37d098c611cd92e44e57c80f85b6dc30886817773c4b56', '1994-09-16', '2025-10-04 04:52:26'),
(90, 'Usuario 90', 'usuario90@ejemplo.com', '7b6989bfcda6479a7ee0b975f48318761423b5132c255a006f18712363c2ffc0', '1988-02-22', '2025-10-04 04:52:26'),
(91, 'Usuario 91', 'usuario91@ejemplo.com', 'cd53dbb7842c47884631f29b230f35e75b0ebf0a4d921b1231709e2bdb5d6cff', '1998-06-30', '2025-10-04 04:52:26'),
(92, 'Usuario 92', 'usuario92@ejemplo.com', 'f405ab12c91aea7e4bac9096e671ea0b993edc77e57069d89d86e83fc81af1f9', '1982-05-02', '2025-10-04 04:52:26'),
(93, 'Usuario 93', 'usuario93@ejemplo.com', '5211914d44d7a0de19c97aa3cb1c82a11dd34dc1d07d337a11ab075a908b24b4', '2001-11-22', '2025-10-04 04:52:26'),
(94, 'Usuario 94', 'usuario94@ejemplo.com', '2b19a3956e7f0a67af5aa273f1f429c0927b39b809832f02a9daf81903262f58', '1994-11-06', '2025-10-04 04:52:26'),
(95, 'Usuario 95', 'usuario95@ejemplo.com', 'e8522194f4bd64449feaa30a9f7b23a270583887e9a08d737db1c0890634cffa', '1988-07-24', '2025-10-04 04:52:26'),
(96, 'Usuario 96', 'usuario96@ejemplo.com', '821aa5838bc9612afe3ca7f03efce6c149dbdd0c2229462494f0b300efb066cb', '2000-02-28', '2025-10-04 04:52:26'),
(97, 'Usuario 97', 'usuario97@ejemplo.com', 'c9886b8a539079a6f4bffe64215ce96bda05103fbcefcd9a2d8364fef99e4e09', '1989-05-27', '2025-10-04 04:52:26'),
(98, 'Usuario 98', 'usuario98@ejemplo.com', '8c8a4312455267c6d940c9bcd2721c24b24143091ae23a7d8f03b6fe0a26bb5b', '1988-06-10', '2025-10-04 04:52:26'),
(99, 'Usuario 99', 'usuario99@ejemplo.com', '423bd391f4a34a416b73e05a629c5bf95b3391101021153d3fde799ccf1e837f', '1993-12-28', '2025-10-04 04:52:26'),
(100, 'Usuario 100', 'usuario100@ejemplo.com', '19734f673a058f01f07a7c8331aafc0bf79204d75515bd2c24f6b85f5b5f4488', '1980-10-29', '2025-10-04 04:52:26'),
(128, 'Erick Amado Solis Cuxun', 'ericksolis705@gmail.com', '$2y$10$nWcoYB25MJDKVH3CF2mw..b/U8o6a.0WphcWjEOci4k61wOlZHG6a', '2005-12-27', '2025-10-04 05:29:42'),
(130, 'Erick Amado Solis Cuxun', 'ericksolis7405@gmail.com', '$2y$10$f5RgKu7HdQHWYmixN3w88O9GM.YkxQ6mB7ClxJD.zeVznYXP4F8cu', '2006-01-03', '2025-10-04 05:37:12'),
(132, 'e22e', 'ericksolis7054@gmail.com', '$2y$10$lHcbNeVBqoYFOviZv2BkUuASwQyi.S2y2i2HDJBUqFWjF8zLIARO.', '1994-02-01', '2025-10-04 07:33:57'),
(134, 'e22e', 'ericksolis705dx@gmail.com', '$2y$10$YoiydG4gHepOizf2KsqtzuFdwqK.hXGlrmdyjgF4wHBNJicjdvzYG', '1991-02-04', '2025-10-04 23:08:47'),
(136, '232332', 'ericksolis7054444@gmail.com', '$2y$10$M1zBefJqSbwH/9tv1qi9xevUxWNKArUFvS/QcJ/957WfmV7EdLy4C', '2003-02-23', '2025-10-05 01:14:51'),
(137, 'e22e', 'ericksolisrrrrrr705@gmail.com', '$2y$10$5OzYMntDlxMQ9Oh797CnbOgpX3MsVveY3QaM7Or.PxGRp4cVGrmNy', '1998-07-01', '2025-10-05 01:35:20'),
(139, '33443', 'ericksolis74305@gmail.com', '$2y$10$78XmYvQMn3F3Hj83aOeoBOF6NHAr0cZDR9v1XogKqzoC/XeCWSTZe', '2001-01-09', '2025-10-05 01:38:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
