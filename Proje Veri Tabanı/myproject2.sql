-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Oca 2019, 18:18:37
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `myproject2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `status`) VALUES
(1, 0, 'Meyve-Sebze', 'Meyve', 'Meyve', 'Aktif'),
(6, 1, 'Meyve', 'Meyve', 'Meyve', 'Aktif'),
(7, 0, 'Soğuk İçecekler', 'Ayran', 'Buzlu', 'Aktif'),
(8, 1, 'Sebze', 'Sebze', 'Sebze', 'Aktif'),
(9, 7, 'Asitli', 'kola', 'diyet', 'Aktif'),
(10, 7, 'Asitsiz', 'Çay', 'İcetea', 'Aktif'),
(11, 0, 'Deterjan', 'Deterjan', 'Deterjan', 'Aktif'),
(12, 11, 'Elbise', 'Elbise', 'Elbise', 'Aktif'),
(13, 11, 'Bulaşık', 'Bulaşık', 'Bulaşık', 'Aktif'),
(14, 0, 'Mobilya Grupları', 'Mobilya Grupları', 'Mobilya Gruplar', 'Aktif'),
(15, 14, 'Oturma Odaları', 'Oturma Odaları', 'Oturma Odaları', 'Aktif'),
(16, 14, 'Yatak Odaları', 'Yatak Odaları', 'Yatak Odaları', 'Aktif'),
(18, 0, 'Ev Dekorasyon', 'Ev Dekorasyon', 'Ev Dekorasyon', 'Aktif'),
(19, 0, 'Bahçe Dekorasyon', 'Bahçe', 'Bahçe', 'Aktif'),
(20, 0, 'Et-Balık Şarküteri', 'Et', 'Et', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `product_id`, `image`) VALUES
(13, 7, '853e671ab87ce4c2bd03adf90e486d56.jpeg'),
(14, 7, '953c9189dddf53e275ba899130e9b49e.jpeg'),
(15, 1, '250ce964eb8b684a09a011c9f24b9775.jpeg'),
(16, 1, '80b0a82298ef5a70cadc98b244b56552.jpeg'),
(17, 1, '197f9e3f8392d9d1ff319bab2e59730b.jpeg'),
(19, 1, '23b6e61f027d1d1bae71b632396262dc.jpeg'),
(20, 1, 'b0f0993db17817cc7e3340333dda8e2f.jpeg'),
(21, 2, '4616142978c4225f30b27c6880c82046.jpeg'),
(22, 2, '0d8acc3b4e0b51fa416511392002c420.jpeg'),
(23, 2, '18a12c7e0af081294d7772f60f212454.jpeg'),
(24, 2, '923600136b1f0cd4b4f639e567b87250.jpeg'),
(25, 2, '715e62e641ecd5cc5f83864c21adb106.jpeg'),
(26, 3, '04324e5653d638e737abcd54e3cdf0a0.jpeg'),
(27, 3, 'ea6066bb91d3d93d78fb858e11861cac.jpeg'),
(28, 3, '8ccf203b0e3a86881cc03886e09963c7.jpeg'),
(29, 3, '2b314d5c3a21363aee58f3dde399afa2.jpeg'),
(30, 3, '7540401e1bb1f384850c64d835c41cb6.jpeg'),
(31, 4, '0e8bf180f7bec158139bb591c51f95bf.jpeg'),
(32, 4, '14a7522d9fbf531269841b96ba55de1a.jpeg'),
(33, 4, 'baa15c96a3e961cdf68d9b7bd0e383b0.jpeg'),
(34, 4, '5886afa789252f7ea41d333363be812f.jpeg'),
(35, 4, '1d6b5d2120e91dacabe792cfddecad75.jpeg'),
(36, 5, '25ddd8eb03a90cf260dc9f91277a2121.jpeg'),
(37, 5, '0c1f036f0fb81df2f70a17a6a6625e1c.jpeg'),
(38, 5, 'fb9d7d8983c79f62fe00f3c191076220.jpeg'),
(39, 5, '82542c86a61e475f954a59bab885d28f.jpeg'),
(40, 5, '752e2a33ea09879ad09d8ba3ad700390.jpeg'),
(41, 6, '56dababbbd88248c6454654c4ee8a3b9.jpeg'),
(42, 6, '2818289bd99d1b19f0cf95e098cdb800.jpeg'),
(43, 6, '65ae6f657b1a05cf1fa976e3148b02f1.jpeg'),
(44, 6, '1350880acd3c9447dd830b184243c430.jpeg'),
(45, 6, '4c52c3627e27286949a29473d925bad3.jpeg'),
(46, 8, '7aa63525bc66da3735cb71d9860c6151.jpeg'),
(47, 8, '89aa56febcb39ae8e26677d335ec03e0.jpeg'),
(48, 8, '06e4a4b7f0766286f101c08257998b1b.jpeg'),
(49, 8, '218f199b073d22a09efbb4e8b04b852e.jpeg'),
(50, 8, '0192a140e4e5b57bd8aacd5906e9d20a.jpeg'),
(51, 9, '2f2b12cc898f2f39ef502b8d21735b9d.jpeg'),
(52, 9, 'f9cc9bb750770b3d50264c4e70b3ce13.jpeg'),
(53, 9, '9f0833c4f8e648c57b85b92f8e57e74f.jpeg'),
(54, 9, '5877f195ef73802f63d41faf5b7e4e8d.jpeg'),
(55, 9, '91fe43456d42df0b408b7447d75df0ec.jpeg'),
(56, 10, 'e52422987988fe3805a22d98a7bbd617.jpeg'),
(57, 10, 'f27ca423d44e0e9b951f47da15857dc5.jpeg'),
(58, 10, '04e68c6a32f013b8eb0abef6fafe839b.jpeg'),
(59, 10, '738e051b3af638bace5b13e7b46f8083.jpeg'),
(60, 10, '82a4710c38e330a69887a83c43b27694.jpeg'),
(61, 11, '143cc38a8e13f11d9fde09d5a5174820.jpeg'),
(62, 11, 'e5b5e440c0b0fe198a7ab8a0beca89ba.jpeg'),
(64, 11, 'e0d64dce33c3681f909751b695897055.jpeg'),
(65, 11, '7412f9e98d3eb0eabb8351a0e87eb4ab.jpeg'),
(66, 11, '7d9e01e0fa54b37ba12c2a17031fedf9.jpeg'),
(67, 12, '1e83a4cbce423eafb36725647a47f260.jpeg'),
(68, 12, 'e63a36ec11a1d378c61d891ee33d1ecf.jpeg'),
(69, 12, 'd0c52e8d7e037ee099cdf82eb572623d.jpeg'),
(70, 12, '1adcea0fc7bea0a58048d32d4343f98c.jpeg'),
(71, 12, '7e99e5dc69e0b519c8e0e7e8858df97d.jpeg'),
(72, 13, '8f2b85a922c47ca1911486dee64813d1.jpeg'),
(73, 13, 'f093158acdb1e92f82789f4e097d47fd.jpeg'),
(75, 13, 'f4d7c7a588753e3c35d24052c1e986bc.jpeg'),
(76, 13, 'c09488defd5ef3c73b46c32a45bcb4e7.jpeg'),
(77, 13, 'f8508951919901defd089b0d242224de.jpeg'),
(78, 14, '1d8128e3e8c8479ffe89df6b844e2d01.jpeg'),
(79, 14, '502ad8d8e538c065f816c444623fc3d6.jpeg'),
(80, 14, '2148e2bf748691853e877f92a8be16a8.jpeg'),
(81, 14, '98f570999eaaae2d9d3042926fdc2430.jpeg'),
(82, 14, '50530c0cc35989f004fad24b1406b900.jpeg'),
(83, 15, '6f86951675104c784fc11a1683266886.jpeg'),
(84, 15, 'ac76f25a63b315bd4ccd014f7a84eecc.jpeg'),
(85, 15, '9299db5b9e5a82b786ce645164667a6e.jpeg'),
(86, 15, '2e7bbdf3fdf72290640d73b18cd8ddd1.jpeg'),
(87, 15, 'ab30c9302cc6ec6777abbf91e1c86b63.jpeg'),
(88, 16, '5c18d556fa08f7c42f0c73b10f9ab354.jpeg'),
(89, 16, 'dbda96807b698da060c9af392cc793e7.jpeg'),
(90, 16, '78c11ac0da8b95f92716e92134b6b772.jpeg'),
(91, 16, 'b572b03660ab09986dc315ca714d4af1.jpeg'),
(92, 16, 'ed6c35ee6c6289cafda7776b3e432aec.jpeg'),
(94, 17, '26f72acd2f851e28e68e6d800ad38631.jpeg'),
(95, 17, 'd636c874519b0f33562fedeef6fb3b0d.jpeg'),
(96, 17, '063ff77d228da998a56f7a740cb72300.jpeg'),
(97, 17, '0060b092b5b41e65769218cdb66d0521.jpeg'),
(98, 17, '9bf22dcf0cda358271100b09c097d21d.jpeg'),
(99, 18, '990e6ba30fbdb48f2cf84cd8398d7336.jpeg'),
(100, 18, '7ff67434b8249645ea5877b40b9a0935.jpeg'),
(101, 18, 'a04c3bf90eab228b3d6541828aea1cfa.jpeg'),
(102, 18, 'f1aafa82777a68e10f3aed98efe91bd7.jpeg'),
(103, 18, '37aabd92cbbe94ae64f4f65a684c76a7.jpeg'),
(104, 19, 'df8d642a32399e5529da587238c21b94.jpeg'),
(105, 19, 'a3dd701c7c72cd623526525da43f443b.jpeg'),
(106, 19, '3db58e2c66eff1b3fb5e76696274fc36.jpeg'),
(107, 19, '038256ed259b9f44aae4da52f498fe97.jpeg'),
(108, 19, '175d4d49a31da125713b43db5c55624f.jpeg'),
(109, 20, 'e9c8219e76ae308bb85fc9a2d375f9bc.jpeg'),
(110, 20, '0c0c3d07c2f83d5c79e5e9df452b6dc2.jpeg'),
(111, 20, '07ba0df5eb5833e4e97bc9964ffaeac1.jpeg'),
(112, 20, '7495e9e28c80533dc2bd7092f0dec054.jpeg'),
(113, 20, '18966a167000089705f13a80b501def9.jpeg'),
(114, 21, '210dbc6c571a8f43735519b586ac7039.jpeg'),
(115, 21, 'd96a430fd82625abc636e9d6e45dba9d.jpeg'),
(117, 21, '7eff796746ff98461f2116b9f08c2b88.jpeg'),
(118, 21, '9bf492d8c8db73a3cc481f563a883f32.png'),
(119, 21, 'dafdafe172c6ff45eb2327cf6c8b1c3c.jpeg'),
(120, 22, 'fe1ef5f23a68bcd7084005cec2301f1e.jpeg'),
(121, 22, 'dca32258d515dc1407c209a7d406f6b5.jpeg'),
(122, 22, '23894ad7c22e35be1d58021517309174.jpeg'),
(123, 22, '5f5cde5a41fcd69130ab28b9c45e2003.jpeg'),
(124, 22, '3bcb71e1f9b80a7062e54f03779cd5aa.jpeg'),
(125, 23, 'ba092dfb4ca95b93779025d414dcdb7a.jpeg'),
(126, 23, '483a698d94e336086379d36060c0995e.jpeg'),
(127, 23, '2769e8639393210f04af66b952925bfe.jpeg'),
(128, 23, 'e623711b0e931351beb18a6352c1c272.jpeg'),
(129, 23, 'b07716ce1111427d40ce7b8d407a2585.jpeg'),
(130, 24, '102f09250ec3251dab4e55bc88286712.jpeg'),
(132, 24, '94b5757df5bc2630df0e5baf37f6681d.jpeg'),
(133, 24, '58455534d9f350af7a4957f14d7c8142.jpeg'),
(134, 24, '792dbebb2b7333983580db315f58d4eb.jpeg'),
(135, 24, '6d8bcf85cd1f770775a6b5f5886c69d0.jpeg'),
(136, 25, 'd2ba42e736b2b951354b3aa6a2313327.jpeg'),
(137, 25, 'ae06881667d9c15bb2085657a7013e44.jpeg'),
(138, 25, '6d49b12f1897936a93a44672d8f0e951.jpeg'),
(139, 25, '10afc5e49b34019525c9828a1473bb2e.jpeg'),
(140, 25, 'a4951d1dcb6f9cd4b0b0c82ce2091dde.jpeg'),
(141, 26, '9a2a3e3fd503a4a0972705f1b72a38b6.jpeg'),
(142, 26, '7b22e4fa959e86bc1ed5497f9d544693.jpeg'),
(143, 26, 'bd95a857399a7cd265a9b5ffe501059a.jpeg'),
(144, 26, '2e466667b4d7587860561e8c8d34f6f9.jpeg'),
(145, 26, 'b0db71940d70ed34f877de9d000ecf05.jpeg'),
(146, 27, 'c4a7a9db1a017cd441569c7f5f73fc38.jpeg'),
(147, 27, 'ecaf3bcf62baecc5e0381c87a612261e.jpeg'),
(148, 27, '259fee195c94f0cf6fca2085431efa87.jpeg'),
(149, 27, '7883e9af0bc570721f03da535ba29e30.jpeg'),
(150, 27, '8c45ad6aa74eca91f7b5c8e978978283.jpeg'),
(151, 28, '80c92bdbb75d85eb3df582f24f3faaaf.jpeg'),
(152, 28, 'be314e357ab54ea71fdca14a7772c1d5.jpeg'),
(153, 28, 'c14ebb121cbb64d197b47fccd09cc634.jpeg'),
(154, 28, '9097fe8d71465c10d73d91a31def8dea.jpeg'),
(155, 28, 'c002247be59fb2225e2dfd93a08fca7d.jpeg'),
(156, 29, '8421731ccb0e3891c1a4f3c7f2a37ca3.jpeg'),
(157, 29, 'd379353319ff829895600236000066b9.jpeg'),
(158, 29, '291ce6cccfbf08c67e7e707faa6d83c0.jpeg'),
(159, 29, 'bded3559d30a47701a5a423923602810.jpeg'),
(160, 29, '82defa6f173fe5feb06a8b05261bcdcd.jpeg'),
(161, 30, '1b856ea4af484b6fe997640848bc80f6.jpeg'),
(162, 30, '75afe9d490a244c45377762f19333ec8.jpeg'),
(163, 30, '4a5e38eb08827f7b0fc48065bed8a1c5.jpeg'),
(164, 30, '048b2d97c5bcde6fd088162c72e4a848.jpeg'),
(165, 30, '22a9e15b8fe6bb0945c6b606b9f7e196.jpeg'),
(166, 31, '8f2a0349ff3a9a8733676b9b65d359fb.jpeg'),
(167, 31, '173d8d9dec31d9da1553065c8852a8a4.jpeg'),
(169, 31, '71806d7fa8ef3fd7001969c1aac36ae4.jpeg'),
(170, 31, '35060db9cf0716a262253db49cc8ebd9.jpeg'),
(171, 31, '0cbc0a13778cf69729c2ccc0111d0971.jpeg'),
(173, 32, 'b1c5793db8ba270cab41f8f4aed633a9.jpeg'),
(174, 32, 'b9617c8b537475e5219593c591877fac.jpeg'),
(175, 32, '05798444fa1ad62bd3e8d0eab2fc2ab9.jpeg'),
(176, 32, 'f613358b9d60d2c2a9b421f76953be43.jpeg'),
(177, 32, '353b5ac3640c170f210d64df9fa947c4.jpeg'),
(178, 33, '28b8be4af2f192bf685ae9b063032298.jpeg'),
(179, 33, 'c7c3fc41590f6b1cafe71a8bfb8ae202.jpeg'),
(180, 33, 'bc4f2b5d011ae00190ac9767378704e8.jpeg'),
(181, 33, '6a17543a78b3120873eb007141ebfc02.jpeg'),
(182, 33, 'da6043cfa6c945409467d9282278d617.jpeg'),
(183, 34, 'dde979a0d87b37fbf4ad605159834cd3.jpeg'),
(184, 34, 'b6a6055a80ea408bb8fb731cb87e31b5.jpeg'),
(185, 34, 'c4891269b1cf5f98f31856d95e6b7714.jpeg'),
(186, 34, '0207e6bf189dd862063613f060399f69.jpeg'),
(187, 34, '1b64d56a0866e7b3a2213958917c43eb.jpeg'),
(188, 35, '060aa1934a83710c391fdd20d7f8ad2d.jpeg'),
(189, 35, '5741506f6a9c8c65b7a0d8f55d9b7b11.jpeg'),
(190, 35, '7f3e53d0b86765889689e2396bcfedbe.jpeg'),
(191, 35, '69d540aae2676420ee613fbdeba0c894.jpeg'),
(192, 35, '25d4ebaf1a50a9f70b3d408261088a8f.jpeg'),
(193, 36, '8df20272937851777214717c67d4834c.jpeg'),
(194, 36, '57616cb2d8c360aabc1ac09a907ae1ff.jpeg'),
(195, 36, 'f5bfc8f310324e7cef34ce20e62904e0.jpeg'),
(196, 36, '74d4bdafaf11b6a02931ade251216a4d.jpeg'),
(197, 36, '5cd8c65d264f86fd5cdefdf7451a4acc.jpeg'),
(198, 37, 'cfce0ff435bc2131253fa7cd6c83c2d5.jpeg'),
(199, 37, 'aed049d904d2f6a1b423b08af270b43f.jpeg'),
(200, 37, '7b7003f948665256a841632c6a6a6b7a.jpeg'),
(201, 37, '56fea50c16c911a0f8cb4c1c22e798ac.jpeg'),
(202, 37, 'edb1355ec29a0d41368f36ccf10b36a7.jpeg'),
(203, 37, '85b5b6c1e0b6ffdf5b57f6012d37f6c9.jpeg'),
(204, 38, '478a642ec89ebfe758f5290467d460f7.jpeg'),
(205, 38, '2fcdbbb0403a09a2f5001050cfb3054d.jpeg'),
(206, 38, '8e1b94ad34d2d17271d1b9b080db377e.jpeg'),
(207, 38, 'f1af3a1ac6fcbfa9987bf3db7fc245b7.jpeg'),
(208, 38, 'dc2abb9aaf60ec07466aad8366215af5.jpeg'),
(209, 39, 'c5be92a81db1338ed011f7b1d88b9caf.jpeg'),
(210, 39, '7531040d9cfdcbb71731d433ffc60a43.jpeg'),
(211, 39, '90c54949959a135f17b8210e68302309.jpeg'),
(212, 39, 'a0faba21df7c333113384c3830091dda.jpeg'),
(213, 39, '9fdf75712138ad64e63ea917c6eeb802.jpeg'),
(214, 40, '61678f3919a39721173fbad0f6b7991f.jpeg'),
(215, 40, 'bc48b6fe36e4c2c86d8db254c24e07ac.jpeg'),
(216, 40, 'baa3b7ce8f3242c0a3655cfa122f60d5.jpeg'),
(217, 40, '11f954124ff4c1db2bf5987a2e1ffb35.jpeg'),
(218, 40, '8c808c0ed9ea0388b021dfd09bb34339.jpeg'),
(219, 40, '8f677ea130b2921ddd2e958fa0b09748.jpeg'),
(220, 41, '644f95b8a02c83872cc81397eda5c628.jpeg'),
(221, 41, '6ea50e74d91c2399d621f3f8497c8fa0.jpeg'),
(222, 41, '90851601999995455d0fa1bee7241603.jpeg'),
(223, 41, '1eb01d804dd89c6c256f3faf1687fe61.jpeg'),
(224, 41, '8dc339931711934959c53a248cdab795.jpeg'),
(226, 41, 'a384c350c1212243f2f89710420fb0ac.jpeg'),
(227, 42, '7c4c3e3ba885be90d92cd85710faea17.jpeg'),
(228, 42, '326b2e1903921c2e0d189b6e0523ec3c.jpeg'),
(229, 42, 'aaa7521825a161b4265f071ff05c03b8.jpeg'),
(230, 42, '49f46e0d2e5965cf225b03ad76eca4f5.jpeg'),
(231, 42, 'e0281aebcea8df62409ffdb59a2ef75b.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`) VALUES
(2, 'serkan', 'serkan', 'serkan', 'serkan'),
(3, 'emre', 'emre@mynet.com', 'fiyat', 'fiyat performansınız çok kötü'),
(4, 'ahmet', 'ahmet@gmail.com', 'iade', '5 iş günü geçti iade tamamlama mesajı gelmedi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20190111215800'),
('20190112155136'),
('20190112193010'),
('20190113111034'),
('20190113221615'),
('20190120113611'),
('20190120120132'),
('20190120122205'),
('20190120132856');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userid`, `amount`, `name`, `address`, `city`, `phone`, `shipinfo`, `status`, `update_at`, `created_at`, `note`) VALUES
(3, 1, 2550, 'serkan', 'karabuk', 'karabuk', '51561651', 'karabuk/100.yıl', 'canceled', NULL, NULL, 'hediye paketi'),
(5, 1, 2650, 'serkan', 'karabuk', 'Antalya', '51561651', 'karabuk/100.yıl', 'canceled', NULL, NULL, 'hediye paketi'),
(6, 1, 185, 'serkan', 'karabuk', 'Antalya', '51561651', 'karabuk/100.yıl', 'accepted', NULL, NULL, 'hediye paketi'),
(7, 4, 96, 'emre', 'karabük/merkez', 'Düzce', '5151515', 'düzce merkez', 'completed', NULL, NULL, 'eşime'),
(8, 1, 7400, 'serkan', 'karabuk', 'Antalya', '51561651', 'karabuk/100.yıl', 'accepted', NULL, NULL, 'hediye paketi'),
(9, 1, 82, 'serkan', 'karabuk', 'Antalya', '51561651', 'bursa', 'canceled', NULL, NULL, 'hediye paketi'),
(10, 1, 950, 'serkan', 'karabuk', 'Antalya', '51561651', NULL, 'canceled', NULL, NULL, NULL),
(11, 1, 1050, 'serkan', 'karabuk', 'Antalya', '51561651', 'antalya', 'accepted', NULL, NULL, 'hassas');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderid`, `userid`, `productid`, `price`, `quantity`, `amount`, `name`, `status`) VALUES
(4, 3, 1, 3, 150, 5, 750, 'kiraz', 'Ordered'),
(5, 3, 1, 3, 150, 2, 300, 'kiraz', 'Ordered'),
(6, 3, 1, 1, 300, 5, 1500, 'muz', 'Ordered'),
(8, 5, 1, 38, 2650, 1, 2650, 'Karyola', 'Ordered'),
(9, 6, 1, 2, 10, 1, 10, 'Elma', 'Ordered'),
(10, 6, 1, 24, 100, 1, 100, 'Ariel', 'Ordered'),
(11, 6, 1, 25, 75, 1, 75, 'Bingo', 'Ordered'),
(12, 7, 4, 41, 96, 1, 96, 'Yatak Başı', 'Ordered'),
(13, 8, 1, 40, 950, 5, 4750, 'Ranza', 'Ordered'),
(14, 8, 1, 38, 2650, 1, 2650, 'Karyola', 'Ordered'),
(15, 9, 1, 27, 82, 1, 82, 'Tursil', 'Ordered'),
(16, 10, 1, 40, 950, 1, 950, 'Ranza', 'Ordered'),
(17, 11, 1, 24, 100, 1, 100, 'Ariel', 'Ordered'),
(18, 11, 1, 40, 950, 1, 950, 'Ranza', 'Ordered');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double NOT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `title`, `keywords`, `description`, `type`, `amount`, `pprice`, `sprice`, `min`, `detail`, `image`, `category_id`, `user_id`, `status`) VALUES
(1, 'Muz', 'MUZ', 'Lif açısından çok zengin olan muzun faydaları saymakla bitmiyor. En çok tüketilen meyvelerden biri olan muz zengin bir potasyum kaynağıdır. İçerdiği vitamin ve minerallerle de oldukça faydalı bir meyvedir.', NULL, 400, 5, 10, NULL, '<h2>&nbsp;</h2>', '04e6429dda144cb6863f2288261e31f1.jpeg', 6, NULL, 'Aktif'),
(2, 'Elma', 'Elma', 'C ve E vitaminleri, potasyum ve magnezyum mineralleri açısından zengindir. 1 adet elma yaklaşık 50 kalori enerji sağlar. Elma, muzdan sonra, dünyada en çok tüketilen meyvedir. Elmada bulunan polifenoller ve pektin gibi biyoaktif birçok bileşim ve lifler,', NULL, 100, 1, 10, NULL, '<p>&nbsp;</p>', 'e62ce62e06d080ebb1a7b7e9ddec3a8f.jpeg', 6, NULL, 'Aktif'),
(3, 'Kiraz', 'Kiraz', 'VİTAMİN YÖNÜNDEN ZENGİN: C,A ve K vitamini bakımından oldukça zengin olan kiraz, uzmanlar tarafından tüketilmesi tavsiye edilen sağlıklı bir meyve, özellikle ödem atma ve idrar söktürme özelliği olan kiraz sapı da son günlerde oldukça revaçta olmaya başla', NULL, 6000, 100, 150, NULL, '<p>&nbsp;</p>', '49f93ebba4baec06f491210de3643c0c.jpeg', 6, NULL, 'Aktif'),
(4, 'Armut', 'Armut', 'Kabuğu meyvesinden faydalı Armut kabukları soyulmadan tüketilmesi gereken meyveler arasında yer alır. Yapılan araştırmalara göre armut kabuğunun etli kısımlara oranla 3-4 kat daha fazla besleyici ve yararlı madde içerdiği ortaya çıkmıştır.', NULL, 300, 10, 30, NULL, '<p>&nbsp;</p>', '8efbd6d4511b3cfc1cd883cbc8bbc5e2.jpeg', 6, NULL, 'Aktif'),
(5, 'Kivi', 'Kivi', 'Zengin bir besin kaynağı olan kivi kusursuz bir C vitaminidir aynı zamanda A,E, K vitaminleri, kalsiyum, magnezyum, mineral, fosfor ve potasyum açısından da zengindir. Hayati besinler taşıyan kivi karbonhidrat ve kalori açısından da düşüktür.', NULL, 1000, 10, 60, NULL, '<p>&nbsp;</p>', 'eff8c498e15192a4dc34fb702390d3e7.jpeg', 6, NULL, 'Aktif'),
(6, 'Mandalina', 'Mandalina', 'Çin kökenli mandalina yapraklarını dökmeyen nadir bitkilerdendir. Karbonhidrat açısından zengin olan mandalina kış sezonunda toplanır ve çiğ olarak tüketilir. Lif protein, E ve C vitaminleri içerir.', NULL, 10000, 10, 45, NULL, '<p>&nbsp;</p>', 'f8cc8e0dc08946a0f37046dbeee9f23e.jpeg', 6, NULL, 'Aktif'),
(8, 'Bezelye', 'Bezelye', 'Lif açısından çok zengin olan muzun faydaları saymakla bitmiyor. En çok tüketilen meyvelerden biri olan muz zengin bir potasyum kaynağıdır. İçerdiği vitamin ve minerallerle de oldukça faydalı bir meyvedir.', NULL, 15000, 100, 150, NULL, '<p>&nbsp;</p>', '3da36ec357b288d38b703b77794fd958.jpeg', 8, NULL, 'Aktif'),
(9, 'Marul', 'Marul', 'Cilt sağlığına iyi gelir. Cildi besler ve cilt hücrelerini sağlıklı tutar. İçerisindeki zengin potasyum kaynağı, kan dolaşımının sağlanmasında katkıda bulunur ve bu da cilde diri bir görüntü sağlar.', NULL, 8000, 10, 50, NULL, '<p>&nbsp;</p>', 'e1cc78d0c119d4b90d5c3bbfa58dba53.jpeg', 8, NULL, 'Aktif'),
(10, 'Ispanak', 'Ispanak', 'Ispanak içinde bulundurduğu besin değerli açısından sağlığa oldukça faydalı bir sebzedir. İçeriğinde A, C, D ve K vitaminlerini bulunduran ıspanak ayrıca demir, iyot, potasyum, sodyum, bakır, çinko, lutein, kalsiyum, protein açısından zengindir.', NULL, 2000, 10, 30, NULL, '<p>&nbsp;</p>', '132edb98f1a652f06b2c7c3119b4ba90.jpeg', 8, NULL, 'Aktif'),
(11, 'Lahana', 'Lahana', 'İçeriğindeki beta-karoten A vitaminine dönüşerek göz sağlığına fayda sağlıyor. A Vitamini gözleri güçlendirerek özellikle gece görme fonksiyonlarını artırıyor. Kısacası gözlerin yaşlanmasını engelliyor.', NULL, 1500, 30, 40, NULL, '<p>&nbsp;</p>', 'dc09fe51840eebaedf5ed598c74c0177.jpeg', 8, NULL, 'Aktif'),
(12, 'Pırasa', 'Pırasa', 'Pırasanın içerdiği besinler özellikle çok geniş bir yelpazede cilt sağlığına hizmet etmektedir. Cilt için harika besinler içeren pırasa aynı zamanda, kalp, kan, göz, kemik, sindirim sistemi sağlığını yakından ilgilendiren vitamin ve mineraller içerir.', NULL, 500, 10, 20, NULL, '<p>&nbsp;</p>', '742eecc63a10f62881fa88d3ebfec94d.jpeg', 8, NULL, 'Aktif'),
(13, 'Kutu Kola', 'Kutu Coco Cola', 'Soğuk içecekler arasında en çok tüketilenlerden biri olan Coca Cola serinleten bir içecek isteyenler için ideal. Mideyi rahatlatma özelliğine sahip olan ürün 330 ml kutu ambalajında adresinize geliyor.', NULL, 1250, 1, 8, NULL, '<p>&nbsp;</p>', 'b79372daffd0ed75871a711ff9bae6a8.jpeg', 9, NULL, 'Aktif'),
(14, 'Coco Cola', 'Coco Cola', 'Coca Cola dünyada en çok içilen içecekler listesinde ağırlıklı olarak zirveyi kimseyi bırakmıyor. İlk defa 1886 yılında üretilen bu çok özel lezzetin hala tam formülü sır gibi saklanıyor.', NULL, 6500, 3, 12, NULL, '<p>&nbsp;</p>', '20694848681b192749760c6c517e03e5.jpeg', 9, NULL, 'Aktif'),
(15, 'Kutu Pepsi', 'Kutu Pepsi', 'Soğuk içecek çeşitleri arasında en çok tercih edilenler arasında yer alan Pepsi Cola Kutu ambalajı ile artık daha pratik bir şekilde tüketilebiliyor. Çantanızda dahi güvenle taşıyabileceğiniz kolanızı evde, işyerinde ve  her yerde ürünü tüketebilirsiniz.', NULL, 3500, 2, 8, NULL, '<p>&nbsp;</p>', '1c5e7d6ae801602ad4e802d9a8887d15.jpeg', 9, NULL, 'Aktif'),
(16, 'Pepsi', 'Pepsi', 'Pepsi Cola sadece sıcak havalarda değil kış mevsiminde de tüketilebilen bir ürün. Yemeklerle beraber içebileceğiniz gibi tek başına da tüketebilir ya da hamur işi çeşitleriyle beraber de tercih edebilirsiniz.', NULL, 134, 3, 14, NULL, '<p>&nbsp;</p>', '2378e61105cdbe8eed9eed556953676a.jpeg', 9, NULL, 'Aktif'),
(17, 'Fanta', 'Fanta', 'Fanta gazlı içecekler, gazoz ürünlerindeki portakallı gazoz kategorisinde sizleri bekliyor. Fanta 1985 yılından beri Türkiye’de üretilmekte ve sizlere dayanılmaz lezzeti ulaştırmaktadır.', NULL, 1346, 5, 13, NULL, '<p>&nbsp;</p>', '838552cff20abdb21f2069bed5b85d04.jpeg', 9, NULL, 'Aktif'),
(18, 'Liptonicetea', 'Liptonicetea', 'Gazlı içeceklere lezzetli bir alternatif olan ürün, sıcak mevsimlerde serinletici olarak tüketilebildiği gibi diğer mevsimlerde de yemek menülerinde özellikle etli yemeklerin yanında veya börek kurabiye gibi hamur işlerinin yanından tüketilir.', NULL, 3451, 4, 9, NULL, '<p>&nbsp;</p>', 'd01b3b8f59e6b6d2343826af6de28ff7.jpeg', 10, NULL, 'Aktif'),
(19, 'DidiSoğukçay', 'DidiSoğukçay', 'Yüksek kalori içeriği nedeniyle büyüme ve gelişme çağındaki çocukların öğünlerinde alternatif bir içecek olarak tercih edilen soğuk çay, muhteşem limon aroması nedeniyle çocuklar tarafından da zevkle tüketilen içeceklerin başında yer alıyor.', NULL, 4352, 2, 6, NULL, '<p>&nbsp;</p>', 'b53783e9f1db901df3ec0d711cbe62fc.jpeg', 10, NULL, 'Aktif'),
(20, 'Ayran', 'Ayran', 'Vücuda verdiği rehavet sebebiyle, sakinleşmek isteyenlere ve uyku problemi yaşayanlara da yardımcı oluyor. Eski tarihlerden beri tüketilen ayranı içmek, harareti alıyor. Dolayısıyla da yaz aylarında bol bol tüketiliyor.', NULL, 3332, 2, 11, NULL, '<p>&nbsp;</p>', '2a0e18a9ae05cc9f4692331b896a8886.jpeg', 10, NULL, 'Aktif'),
(21, 'Su', 'Su', 'Vücudunuz için sayısız faydaları olan, vazgeçilmez besin su, cildi güzelleştiriyor, hücrelerinize besin ve oksijen taşıyor, toksinleri atıyor ve zehirli maddeleri dışarı atmaya faydası oluyor.', NULL, 45612, 4, 7, NULL, '<p>&nbsp;</p>', 'dde12fd1e09ad8901ccb709494e46f31.jpeg', 10, NULL, 'Aktif'),
(22, 'Redbull', 'Redbull', 'Tüm dünyadaki üniversite öğrencilere; ders çalışırken kullandıkları kalem ve kağıt ne kadar gerekliyse, mavi ve gümüş renkli Red Bull kutusu da o kadar gereklidir. Kütüphane ve ders çalışma arasında ilaç gibidir.', NULL, 5681, 11, 23, NULL, '<p>&nbsp;</p>', '4610481afbd94f3011bd43bc71647b07.jpeg', 10, NULL, 'Aktif'),
(23, 'Omomatik', 'Omomatik', 'Renklileriniz ilk günkü gibi parlak ve dolgun.Parfümlü etkisi ile elbiseleriniz ortama heyecan salsın.Yıpranmalardan korur ve dayanıklılığı ilk günkü gibi olur.', NULL, 451, 12, 20, NULL, '<p>&nbsp;</p>', '41584dc30a8ec2a56699abad4a0779ff.jpeg', 12, NULL, 'Aktif'),
(24, 'Ariel', 'Ariel', 'Her zamanki şıklığınızı koruyun.Kıyafet dostu deterjanızı kaçırmayın.Ferahlığı Ariel\'de bulun.', NULL, 567, 50, 100, NULL, '<p>&nbsp;</p>', 'ac4e57dd0e762f1ca1d8f41c94d68c7d.jpeg', 12, NULL, 'Aktif'),
(25, 'Bingo', 'Bingo', '90 yıllık tecrübe ile kıyaflerinizi Bingo\'ya emanet edebilirsiniz.İçinde soda barındırmayan yeni formulü ile kıyafleriniz olduğundan daha daha yanıklı.Bingo ile gülümseyin.', NULL, 431, 40, 75, NULL, '<p>&nbsp;</p>', '236b5afeedeef31e8514f7ed5c4d12b8.jpeg', 12, NULL, 'Aktif'),
(26, 'ABC', 'ABC', 'Ayşe teyze ile kıyafatleriniz güvende.Yeni sodalı formül ile daha temiz elbiseleri hoşgeldin diyebilirsiniz.Yumuşatıcı içeriği ile pamuk gibi kıyafetlere merhaba.', NULL, 3224, 14, 68, NULL, '<p>&nbsp;</p>', '81354a38ff712e99db358c4d4ef9f96e.jpeg', 12, NULL, 'Aktif'),
(27, 'Tursil', 'Tursil', 'Daha az deterjan ile daha çok temizlik.Yenilenen deterjan formülü ile bir adım daha önde olun.', NULL, 454, 41, 82, NULL, '<p>&nbsp;</p>', '493f7a5fafec1cbf144deaddb030d1ab.jpeg', 12, NULL, 'Aktif'),
(28, 'Fairy', 'Fairy', 'Bir damla deterjan ile 100 tabak yıkamaya ne dersiniz?Fairy güçlü formülü ile en zor lekeler ile başa çıkabilen tek marka.', NULL, 451, 11, 55, NULL, '<p>&nbsp;</p>', '9be91fa5a2167a262e0eb4d84c6f0950.jpeg', 13, NULL, 'Aktif'),
(29, 'Pril', 'Pril', 'Etkili çözücü yeteneği ile yağlı kirler tek darbeyle yok olur.El yaralarını engeller.İçindeki koruyu maddesi ile elinizde deterjan çatlamalara son verir.', NULL, 515, 14, 34, NULL, '<p>&nbsp;</p>', '4aa6ce755c3d0e4b449a8082c82ee04a.jpeg', 13, NULL, 'Aktif'),
(30, 'Bingo El', 'Bingo El', 'Bingo elbiselerini koruduğu gibi tabaklarınızıda korur.Aşınmayı önler ve çizilmelere korur.Fiyat performans olarak üst seviye hizmet sunar.', NULL, 312, 12, 26, NULL, '<p>&nbsp;</p>', '88061fe7dbf8f0d6c13b9ed908eaab17.jpeg', 13, NULL, 'Aktif'),
(31, 'Cif', 'Cif', 'Bir damla ile 100\'lerce tabak kirinden arınıyor.Tasarruf yapanların adresi.Suyunuzdan ve zamanından daha az vakit harcayın.', NULL, 479, 13, 24, NULL, '<p>&nbsp;</p>', 'c3ca623bd19d7ac6e1bce2464843b2f2.jpeg', 13, NULL, 'Aktif'),
(32, 'Miss', 'Miss', 'Miss bulaşık deterjanları koruma temizlik sunar.Hassas ciltler için özel formülüze edilmiştir.', NULL, 433, 6, 17, NULL, '<p>&nbsp;</p>', '5111add2a0ccd7b8fb976b201a107f8b.jpeg', 13, NULL, 'Aktif'),
(33, 'Kanepe', 'Kanepe', 'Kolayca yatağa dönüştürülebilir.  Oturma yerinin altında geniş saklama alanı bulunur.', NULL, 61, 1000, 1450, NULL, '<p>&nbsp;</p>', '49bb68e6cd309b9d88c29c8b70965e9b.jpeg', 15, NULL, 'Aktif'),
(34, 'Deri Kanepe', 'Deri Kanepe', 'Temas alanlarındaki yumuşak, tamamı boyalı ve 1.2 mm kalınlığındaki işlenmiş deri esnek ve pürüzsüz bir yapıya sahiptir. Dış yüzeyler, deriyle aynı görünüme sahip dayanıklı kumaşla kaplanmıştır.', NULL, 200, 1500, 4000, NULL, '<p>&nbsp;</p>', '8c181463ad1d20d17a03478b8b2d2c55.jpeg', 15, NULL, 'Aktif'),
(35, 'Uzanma Koltukları', 'Uzanma Koltukları', 'Alttaki esnek dokuma ve oturma minderlerindeki yüksek esnekliğe sahip sünger dolgu, hafif bir esneklik ve rahatlık verir.  Kılıf çıkarılarak makinede yıkanabilir.  Uzanma koltuğu kanepenin sağında ya da solunda kullanılabilir.', NULL, 10, 2150, 3400, NULL, '<p>&nbsp;</p>', 'b9343ce860cb154c38314bc504613c56.jpeg', 15, NULL, 'Aktif'),
(36, 'Şilte ve Minder', 'Şilte ve Minder', 'Her gün kullanım için uygun sert sünger yatak.Yatak kılıfı çıkarılarak kuru temizleme yapıldığı için temiz tutması kolaydır.', NULL, 24, 100, 245, NULL, '<p>&nbsp;</p>', 'a54357ac832411abfce0537fbd34da97.jpeg', 15, NULL, 'Aktif'),
(37, 'Kanepe Kılıfı', 'Kanepe Kılıfı', 'Kılıf çıkarılarak makinede yıkanabilir.  Uyumlu kılıflarla mobilyalarınıza kolayca yeni bir görünüm kazandırabilirsiniz.', NULL, 12, 14, 55, NULL, '<p>&nbsp;</p>', 'd2b08959afe3e742d334dc3c652fe60d.jpeg', 15, NULL, 'Aktif'),
(38, 'Karyola', 'Karyola', 'Bu ürün için gereken SKORVA orta kiriş ve lata fiyata dahildir.  Bu karyolada lata olarak SULTAN LURÖY kullanılmaktadır.  Yatak ve nevresim seti ayrı satılır.  VARDÖ yatak altı saklama kutuları ile yatağın altında ekstra depolama alanı oluşturabilirsiniz.', NULL, 16, 1980, 2650, NULL, '<p>&nbsp;</p>', '970d42b161df6f8fd970ff615f976de4.jpeg', 16, NULL, 'Aktif'),
(39, 'Divan', 'Divan', 'Dört fonksiyon bir arada; depolama çözümü, kanepe, tek ve çift kişilik yatak iskeleti.Kanepe/yatağınızı çift kişilik bir yatak olarak kullanmayı planlıyorsanız yatağınızı lateks veya sünger olarak tercih ediniz.  Nevresim seti ve yatak ayrı satılır.', NULL, 12, 1450, 2000, NULL, '<p>&nbsp;</p>', 'fc82b9b576d18ed9d626323e5474f501.jpeg', 16, NULL, 'Aktif'),
(40, 'Ranza', 'Ranza', 'Sınırlı alanlar için iyi bir seçenek.  Merdiven, yatağın sağ ya da sol tarafına monte edilebilir.', NULL, 5, 350, 950, NULL, '<p>&nbsp;</p>', 'fa7d2c1a9e18c769a6504085817e93a2.jpeg', 16, NULL, 'Aktif'),
(41, 'Yatak Başı', 'Yatak Başı', 'Yatağınızdan ulaşıp alabileceğiniz eşyalarınız için mükemmeldir.1 adet raf 3 farklı pozisyona ayarlanabilir.En üst raf, lamba veya şarj aletlerinin kabloları için deliklere sahiptir.', NULL, 5, 50, 96, NULL, '<p>&nbsp;</p>', '697667fc5d3155e4434a767a84338701.jpeg', 16, NULL, 'Aktif'),
(42, 'Karyola Yatası', 'Karyola Yatası', 'Yapıştırma huş katmanlı 17 lata, vücut ağırlığınıza uyum sağlayarak yatağın esnekliğini de arttırır.25 yıl (2+23 yıl) garanti. Koşullar için garanti broşürünü veya internet sitemizi inceleyiniz.', NULL, 16, 45, 150, NULL, '<p>&nbsp;</p>', '2bb5b2910c352ed9ccb8254fe2f6d98b.jpeg', 16, NULL, 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpport` int(11) NOT NULL,
  `aboutus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referances` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `description`, `keywords`, `address`, `fax`, `phone`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `aboutus`, `contact`, `referances`, `status`) VALUES
(1, 'BULUR MAĞAZASI', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, '<p>10 yıllık üstün kaliteli hizmet ödülümüzü sizinle almaktan gurur duyarız. Duyarlı müşterilerimiz var olduğu sürece bizler her daim sizin ile birlikteyiz. Kaliteli hizmet, kalite ürün BULUR MAĞAZALARI...</p>', '<p><strong>İLETİŞİM BİLGİLERİ</strong></p><p><strong>Merkez</strong><br><strong>Bursa BULUR MAĞAZALARI</strong><br><br>Ceyhun Atuf Kansu Caddesi No:122<br>Osmangazi / Bursa/ TÜRKİYE&nbsp;<br>Tel: +90 224 583 60 00&nbsp;<br>E-Posta: webinfo@iletisim.go</p>', '<p>Size en iyi hizmeti sunma hedefi ile hizmet kalitesini, uluslararası Kalite Yönetim Sistem belgesi TSE-ISO-EN 9001, Gıda Güvenliği Yönetim Sistemi TSE-ISO-EN 22000 ve Müşteri Memnuniyeti Yönetimi TSE- ISO 10002 ile güvence altına altından hizmet.</p>', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `shopcart`
--

INSERT INTO `shopcart` (`id`, `userid`, `productid`, `quantity`, `created_at`, `update_at`) VALUES
(1, 1, 9, 1, NULL, NULL),
(2, 1, 21, 1, NULL, NULL),
(3, 1, 25, 1, NULL, NULL),
(4, 1, 41, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `status`, `address`, `phone`, `city`) VALUES
(1, 'serkan@deneme.com', 'ROLE_ADMIN', '$2y$10$hwbsUja0P63VQViod/HaK.SlBVJcG6kvfEphjnFLVLLrGVd3SoQC2', 'serkan', 'Aktif', 'karabuk', '11111', 'Antalya'),
(2, 'test@mynet.com', 'ROLE_USER', '$2y$10$K8Aw8K4siGrMJLtMOL4Z8eIEQgTSEZ0jaSRkDWckhAfSLjNZDH85S', 'Serkan', 'Aktif', 'Beşbinevler 75.Yıl Mh. 107. Cd. No:11 D:20 Gültepe Apartman', '5151515', 'Karabük'),
(3, 'mert@gmail.com', 'ROLE_USER', '$2y$10$x9waS3ITdYkjCBM30GblU.kqnZGcbpN0vHOgbJakY.IXLf9p5DBSy', 'mert', 'Aktif', 'Beşbinevler 75.Yıl Mh. 107. Cd. No:11 D:20 Gültepe Apartman', '5151515', 'Aydın'),
(4, 'emre@mynet.com', 'ROLE_USER', '$2y$10$6wPu8dzlnqQSJdCZFH25g.jZCyWvclHRbMOjxl8XwFcPihPHzdfnS', 'emre', 'Aktif', 'karabük/merkez', '5151515', 'Düzce'),
(5, 'furkan@gmail.com', 'ROLE_USER', '$2y$10$Nw0Qg8xl3x6dRJAYzXs2EeQQMx1Z1CfaFQUM6M2rCDJHCMrHHMxpm', 'furkan', 'Aktif', 'ankara', '12345', 'Ankara'),
(6, 'serkanadmin@mynet.com', 'ROLE_ADMIN', '123', 'serkan', 'Aktif', 'bursa', '1234', 'bursa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'serkan ovaz', 'serkan@hotmail.com', '123', 'admin', 'Aktif', '2019-01-12 04:21:17', '2019-01-12 17:39:00'),
(2, 'furkan', 'furkan@hotmail.com', '234', 'uye', 'Aktif', '2019-01-12 04:22:53', '2019-01-12 04:25:54'),
(3, 'emre', 'emre@hotmail.com', '345', 'uye', 'Aktif', '2019-01-12 04:23:54', '2019-01-12 04:24:13'),
(4, 'osman özkan', 'osman@hotmail.com', '456', 'uye', 'Aktif', '2019-01-12 04:24:36', '2019-01-12 17:39:41'),
(6, 'ferdi', 'ferdi@hotmail.com', '654', 'Üye', 'Aktif', '2019-01-12 17:03:48', '2019-01-12 17:50:28'),
(7, 'seyit', 'seyit@hotmail.com', '654', 'Üye', 'Pasif', '2019-01-12 17:49:55', '2019-01-12 17:51:19');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
