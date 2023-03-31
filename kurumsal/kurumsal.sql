-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 31 Mar 2023, 16:26:22
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kurumsal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `about_us`
--

INSERT INTO `about_us` (`id`, `image`, `name`, `content`, `status`, `rank`, `created_at`) VALUES
(1, 'about_us/5ee170ab9c288.jpg', 'Hakkımızda', '<p>Hakkımızda bilgileri buraya gelicek..t&uuml;m detayları yazabilirsiniz..</p>\r\n', 1, 0, '2020-06-11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `image`, `name`, `mail`, `password`) VALUES
(1, 'admin/5ee6cb20b87e1.jpg', 'Kadir Yolcu', 'kadiryolcu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `albums`
--

INSERT INTO `albums` (`id`, `image`, `title`, `link`, `status`, `rank`, `created_at`) VALUES
(13, 'albums/5ede2f0f0af11.jpg', 'Oturma Odaları', '', 1, 3, '2020-06-08'),
(17, 'albums/5ee2b88fb3bcc.jpg', 'Mutfak Takımı', '', 1, 1, '2020-06-12'),
(21, 'albums/5eebf9be7b9e2.jpg', 'Çelik Kapı Modelleri', '', 1, 0, '2020-06-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `album_images`
--

CREATE TABLE `album_images` (
  `id` int(11) NOT NULL,
  `album_images` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `album_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `album_images`
--

INSERT INTO `album_images` (`id`, `album_images`, `album_id`, `status`, `rank`, `created_at`) VALUES
(187, 'album_images/5ee83ae65af28.png', 18, 1, 0, '2020-06-16'),
(188, 'album_images/5ee83ae678166.png', 18, 1, 0, '2020-06-16'),
(190, 'album_images/5ee83ae6b27f5.png', 18, 1, 0, '2020-06-16'),
(191, 'album_images/5ee83ae6cfef4.png', 18, 1, 0, '2020-06-16'),
(192, 'album_images/5ee91fd09db31.png', 19, 1, 0, '2020-06-16'),
(193, 'album_images/5ee91fd0b3e51.png', 19, 1, 0, '2020-06-16'),
(194, 'album_images/5ee91fdac57b0.png', 19, 1, 0, '2020-06-16'),
(195, 'album_images/5ee91fdadc0e7.png', 19, 1, 0, '2020-06-16'),
(196, 'album_images/5ee91fdaf392d.png', 19, 1, 0, '2020-06-16'),
(197, 'album_images/5eec0688cd6dc.png', 13, 1, 0, '2020-06-19'),
(198, 'album_images/5eec0688e40ce.png', 13, 1, 0, '2020-06-19'),
(199, 'album_images/5eec0689256be.png', 13, 1, 0, '2020-06-19'),
(200, 'album_images/5eec579360460.png', 21, 1, 0, '2020-06-19'),
(201, 'album_images/5eec579376f47.png', 21, 1, 0, '2020-06-19'),
(202, 'album_images/5eec57938f02a.png', 21, 1, 0, '2020-06-19'),
(203, 'album_images/5eec5793a5598.png', 21, 1, 0, '2020-06-19'),
(204, 'album_images/5eec5793bbe4d.png', 21, 1, 0, '2020-06-19'),
(205, 'album_images/5eec5793d9956.png', 21, 1, 0, '2020-06-19'),
(206, 'album_images/5eec579402983.png', 21, 1, 0, '2020-06-19'),
(207, 'album_images/5eec57941edcb.png', 21, 1, 0, '2020-06-19'),
(208, 'album_images/5eec57943b29c.png', 21, 1, 0, '2020-06-19'),
(209, 'album_images/5eec57dabe9d7.png', 17, 1, 0, '2020-06-19'),
(210, 'album_images/5eec57dad5c98.png', 17, 1, 0, '2020-06-19'),
(211, 'album_images/5eec57daec811.png', 17, 1, 0, '2020-06-19'),
(212, 'album_images/5eec57db0e1b7.png', 17, 1, 0, '2020-06-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(5) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `image`, `title`, `link`, `status`, `rank`, `created_at`) VALUES
(1, 'brands/5ee15db6cd958.png', 'Bafira', 'http://www.bafira.com.tr/tr/index.php', 1, 1, '2020-06-11'),
(2, 'brands/5ee15e52776ae.png', 'Tukaş', 'https://www.tukas.com.tr/anasayfa', 1, 0, '2020-06-11'),
(3, 'brands/5ee15f6c1cabb.png', 'Duru', 'http://www.durubulgur.com/default.aspx', 1, 0, '2020-06-11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `clients`
--

INSERT INTO `clients` (`id`, `image`, `name`, `grade`, `content`, `status`, `rank`, `created_at`) VALUES
(2, 'clients/5ee02c8f27f7f.jpg', 'John Doe', 'Ceo', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam&nbsp;<a href=\"https://preview.oklerthemes.com/porto/8.0.0/page-team-advanced.html#\">vehicula</a>&nbsp;sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam. Donec ante risus, dapibus sed lectus non, lacinia vestibulum nisi. Morbi vitae augue quam. Nullam ac laoreet libero.</p>\r\n', 1, 0, '2020-06-10'),
(3, 'clients/5ee02ce08bc00.jpg', 'Jessica Doe', 'Marketing', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam&nbsp;<a href=\"https://preview.oklerthemes.com/porto/8.0.0/page-team-advanced.html#\">vehicula</a>&nbsp;sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam. Donec ante risus, dapibus sed lectus non, lacinia vestibulum nisi. Morbi vitae augue quam. Nullam ac laoreet libero.</p>\r\n', 1, 2, '2020-06-10'),
(4, 'clients/5ee02d0896de5.jpg', 'Melinda Doe', 'Design', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam&nbsp;<a href=\"https://preview.oklerthemes.com/porto/8.0.0/page-team-advanced.html#\">vehicula</a>&nbsp;sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam. Donec ante risus, dapibus sed lectus non, lacinia vestibulum nisi. Morbi vitae augue quam. Nullam ac laoreet libero.</p>\r\n', 1, 1, '2020-06-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `count` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `counters`
--

INSERT INTO `counters` (`id`, `icon`, `title`, `count`, `status`, `rank`, `created_at`) VALUES
(1, 'flaticon-graph', 'Emlak', '180', 1, 1, '2020-06-13'),
(2, 'flaticon-graph-2', 'Fabrika', '500', 1, 0, '2020-06-13'),
(3, 'flaticon-store', 'Mağaza', '2000', 1, 0, '2020-06-13'),
(6, 'flaticon-box-1', 'assd', '50000', 1, 0, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `reply_status` tinyint(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `message`
--

INSERT INTO `message` (`id`, `name`, `mail`, `phone`, `subject`, `content`, `reply_status`, `created_at`) VALUES
(1, 'Erdal ERYILMAZ', 'erdalwrr@hotmail.com', '0543 234 65 53', 'Selam web sayfasından mesaj var!', 'selamun aleyküm bir sorum olucaktı.web sitesini kaça yapıyorsunuz', 1, '2020-06-14'),
(3, 'Erdal ERYILMAZ', 'erdalwrr@hotmail.com', '0543 234 65 53', 'Selam web sayfasından mesaj var!', 'selamun aleyküm bir sorum olucaktı.web sitesini kaça yapıyorsunuz', 1, '2020-06-14'),
(4, 'test ', 'test@mail.com', '54879581326', 'assdsdsd', 'assdfsdsdfdfd', 1, '0000-00-00'),
(5, 'deneme test', 'deneme@mail.com', '0543 234 65 53', 'deneme konu', 'deneme mail!geldimi la', 1, '2020-06-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mission`
--

CREATE TABLE `mission` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(5) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mission`
--

INSERT INTO `mission` (`id`, `image`, `name`, `content`, `status`, `rank`, `created_at`) VALUES
(1, 'mission/5ee1836a8568f.png', 'Misyonumuz', '<p>misyonumuz a&ccedil;ıklaması buraya gelicek.</p>\r\n', 1, 0, '2020-06-11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `tags` varchar(1000) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `content`, `tags`, `status`, `created_at`) VALUES
(1, 'news/5ee42edce6b0c.png', 'Pilav Tarifi', '<p>Tane tane d&ouml;k&uuml;len pirin&ccedil; pilavı yapmak &ccedil;oğu kişinin g&ouml;nl&uuml;nden ge&ccedil;er ama sonu&ccedil; bazen h&uuml;sran olabiliyor. &Ccedil;ok az yapım aşaması olmasına ve kısacık s&uuml;rede hazırlanabilmesine rağmen pilav yapmak deneyim gerektiren bir işlem. Ben size bu tarifim ile pilav yapmanın t&uuml;m detaylarını ve p&uuml;f noktaları yazmaya &ccedil;alıştım. Videolu olarak da tarifimi detaylandırdım. ? Umarım tarifimi denedikten sonra pilav yapmak sizler i&ccedil;in de bir keyfe d&ouml;n&uuml;ş&uuml;r.</p>\r\n', 'pilav,baldo,lapa,dolma', 1, '2020-06-13'),
(4, 'news/5eec6586a9b94.png', 'Çok fena bir tarif', '<p>Tane tane d&ouml;k&uuml;len pirin&ccedil; pilavı yapmak &ccedil;oğu kişinin g&ouml;nl&uuml;nden ge&ccedil;er ama sonu&ccedil; bazen h&uuml;sran olabiliyor. &Ccedil;ok az yapım aşaması olmasına ve kısacık s&uuml;rede hazırlanabilmesine rağmen pilav yapmak deneyim gerektiren bir işlem. Ben size bu tarifim ile pilav yapmanın t&uuml;m detaylarını ve p&uuml;f noktaları yazmaya &ccedil;alıştım. Videolu olarak da tarifimi detaylandırdım. ? Umarım tarifimi denedikten sonra pilav yapmak sizler i&ccedil;in de bir keyfe d&ouml;n&uuml;ş&uuml;r.</p>\r\n', '#fena,#kaçırma,#efsanepilav', 1, '2020-06-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `icon`, `title`, `content`, `status`, `rank`, `created_at`) VALUES
(1, 'flaticon-interface-2', 'Kullanım Koşulları', '<p>Bu Web sayfasını kullanarak, Seohocasi.com web sayfası kullanım s&ouml;zleşmesine taraf olabilecek ve Bağlı olduğunuz yasalara g&ouml;re s&ouml;zleşme imzalama hakkına, yetkisine ve hukuki ehliyetine sahip ve 18 yaşın &uuml;zerinde olduğunuzu, bu s&ouml;zleşmeyi okuduğunuzu, anladığınızı ve s&ouml;zleşmede yazan şartlarla bağlı olduğunuzu kabul etmiş sayılırsınız.</p>\r\n\r\n<p>İşbu s&ouml;zleşme taraflara s&ouml;zleşme konusu site ile ilgili hak ve y&uuml;k&uuml;ml&uuml;l&uuml;kler y&uuml;kler ve taraflar işbu s&ouml;zleşmeyi kabul ettiklerinde bahsi ge&ccedil;en hak ve y&uuml;k&uuml;ml&uuml;l&uuml;kleri eksiksiz, doğru, zamanında, işbu s&ouml;zleşmede talep edilen şartlar d&acirc;hilinde yerine getireceklerini beyan ederler.</p>\r\n', 1, 4, '2020-06-12'),
(4, 'fab fa-accessible-icon', 'Sözleşme', '<p>Bu Web sayfasını kullanarak, Seohocasi.com web sayfası kullanım s&ouml;zleşmesine taraf olabilecek ve Bağlı olduğunuz yasalara g&ouml;re s&ouml;zleşme imzalama hakkına, yetkisine ve hukuki ehliyetine sahip ve 18 yaşın &uuml;zerinde olduğunuzu, bu s&ouml;zleşmeyi okuduğunuzu, anladığınızı ve s&ouml;zleşmede yazan şartlarla bağlı olduğunuzu kabul etmiş sayılırsınız.</p>\r\n\r\n<p>İşbu s&ouml;zleşme taraflara s&ouml;zleşme konusu site ile ilgili hak ve y&uuml;k&uuml;ml&uuml;l&uuml;kler y&uuml;kler ve taraflar işbu s&ouml;zleşmeyi kabul ettiklerinde bahsi ge&ccedil;en hak ve y&uuml;k&uuml;ml&uuml;l&uuml;kleri eksiksiz, doğru, zamanında, işbu s&ouml;zleşmede talep edilen şartlar d&acirc;hilinde yerine getireceklerini beyan ederler.</p>\r\n', 1, 0, '2020-06-19'),
(5, 'fas fa-allergies', 'Gizlilik Anlaşması', '<pre>\r\nadsssasas</pre>\r\n', 1, 3, '2020-06-18'),
(6, 'fas fa-angle-left', 'Site Verileri', '<p>asssdsd</p>\r\n', 1, 1, '2020-06-18'),
(7, 'fas fa-angle-left', 'Sallamasyon', '<p>assddsdffdfsad</p>\r\n', 1, 2, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`id`, `image`, `title`, `link`, `status`, `rank`, `created_at`) VALUES
(23, 'projects/5eeb9171cb531.png', 'asa', 'sasa', 1, 0, '2020-06-18'),
(24, 'projects/5eeb91b412931.png', 'asas', 'asas', 1, 0, '2020-06-18'),
(25, 'projects/5eeb91ba4d273.png', 'asas', 'asas', 1, 0, '2020-06-18'),
(26, 'projects/5eeb91c2b419b.png', 'as', 'aassa', 1, 0, '2020-06-18'),
(27, 'projects/5eeb91cfa474c.png', 'sas', 'asas', 1, 0, '2020-06-18'),
(28, 'projects/5eeb91d980848.png', 'asas', 'as', 1, 0, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `content`, `status`, `rank`, `created_at`) VALUES
(5, 'Hızlı Servis', 'fab fa-aws', '<p>&Ccedil;ok bi hızlı servis koşun sizde gelin</p>\r\n', 1, 1, 2020),
(6, 'Maymunlar Giremez!', 'fab fa-servicestack', '<p>Maymunların i&ccedil;eri girmesi yasak&nbsp;</p>\r\n', 1, 0, 2020),
(7, 'Kahve için', 'fas fa-concierge-bell', '<p>kahve i&ccedil;in loo</p>\r\n', 1, 0, 2020);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` text COLLATE utf8_turkish_ci NOT NULL,
  `keywords` text COLLATE utf8_turkish_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `footer` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `maps` text COLLATE utf8_turkish_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `port` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `notification_mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `keywords`, `author`, `footer`, `phone`, `fax`, `mail`, `adress`, `maps`, `host`, `user_mail`, `user_password`, `port`, `notification_mail`, `logo`, `favicon`) VALUES
(1, 'Kurumsal Firma Sitesi', 'Hertürlü kurumsal firma,emlak,eticaret siteleri yapılır..ayrıca wordpress tema yükleme özelleştirme gibi tasarım işleriniz özenle yapılır.', 'html,css,javascript,php,codeigniter,laravel,wordpress', 'Firma Sahibi', 'Kadir Yolcu', '0543 234 65 53', '0242 555 000 00', 'kadir@hotmail.com', 'deneme mahallesi bilinmeyen sokak.Apartman  veya ofis adresi malesef yok.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d25639.380252297724!2d32.0339968!3d36.5559808!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1str!2str!4v1591124503573!5m2!1str!2str\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'ssl://smtp.gmail.com', 'kadir@gmail.com', '4yxw5n6jh', '465', 'kadir@hotmail.com', 'logofavicon/5eebc528bcda2.png', 'logofavicon/5ee80a5c45a5a.svg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `btn_left` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `btn_left_link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `btn_right` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `btn_right_link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `content`, `btn_left`, `btn_left_link`, `btn_right`, `btn_right_link`, `status`, `rank`, `created_at`) VALUES
(25, 'sliders/5eebcbcdae39b.jpg', '<p>sa</p>\r\n', 'asa', 'asa', 'sa', 'sas', 1, 0, '2020-06-18'),
(26, 'sliders/5eebcbe1574aa.jpg', '<p>asas</p>\r\n', 'as', 'sasasa', 'sa', 'sasa', 1, 3, '2020-06-18'),
(27, 'sliders/5eebcbfa1bd1d.jpg', '<p>asasa</p>\r\n', 'as', 'sasa', 'as', 'asa', 1, 1, '2020-06-18'),
(28, 'sliders/5eebcc1539fed.jpg', '<p>asas</p>\r\n', 'asa', 'sasas', 'as', 'asa', 1, 2, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `rank` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `social`
--

INSERT INTO `social` (`id`, `title`, `icon`, `link`, `status`, `rank`, `created_at`) VALUES
(2, 'Twitter', 'fab fa-twitter', 'https://www.twitter.com', 1, 1, '2020-06-18'),
(3, 'Youtube', 'fab fa-youtube', 'https://www.youtube.com', 1, 2, '2020-06-18'),
(5, 'İnstagram', 'fab fa-instagram', 'https://www.instagram.com', 1, 4, '2020-06-18'),
(6, 'Whatsapp', 'fab fa-whatsapp', 'https://www.whatsapp.com', 1, 3, '2020-06-18'),
(14, 'Facebook', 'fab fa-facebook-f', 'https://tr-tr.facebook.com/', 1, 0, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`id`, `title`, `icon`, `content`, `status`, `rank`, `created_at`) VALUES
(1, 'Soru bir', 'flaticon-round', '<p>soru bir cevap</p>\r\n', 1, 1, '2020-06-11'),
(2, 'Sor soruyu', 'flaticon-round', '<p>Al boruyu</p>\r\n', 1, 0, '2020-06-11'),
(8, 'sorayım bi soru', 'flaticon-round', '<p>sordum soyu aldınmı boruyu diyerek cevap verdi.....</p>\r\n', 1, 2, '2020-06-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `subscribers`
--

INSERT INTO `subscribers` (`id`, `icon`, `mail`, `status`, `created_at`) VALUES
(7, 'fas fa-user-check', 'aliveli@gmail.com', 1, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(11) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `grade`, `status`, `rank`, `created_at`) VALUES
(8, 'teams/5eec5717c984a.jpg', 'asas', 'asas', 1, 3, '2020-06-18'),
(9, 'teams/5eec570502118.jpg', 'asas', 'asasa', 1, 0, '2020-06-18'),
(10, 'teams/5eec570a67a97.jpg', 'asa', 'asas', 1, 1, '2020-06-18'),
(11, 'teams/5eec571094014.jpg', 'asas', 'asas', 1, 2, '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `status`, `rank`, `created_at`) VALUES
(1, 'SERGEN YALÇIN\'IN GÖZDESİ, KALECİ SEÇİMİ, TRANSFER: GÜNDEM BEŞİKTAŞ', 'vLKzGVxo5aM', 1, 0, '2020-06-12'),
(4, 'Coldplay - Paradise (Official Video)', '1G4isv_Fylg', 1, 0, '2020-06-19'),
(5, 'Inna – Yaz Yaz Yaz', '0vSW7FU2fDA', 1, 0, '2020-06-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vision`
--

CREATE TABLE `vision` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` text COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `rank` int(4) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `vision`
--

INSERT INTO `vision` (`id`, `image`, `name`, `content`, `status`, `rank`, `created_at`) VALUES
(1, 'vision/5ee17fdb58504.jpg', 'Vizyonumuz', '<p>vizyon a&ccedil;ıklamaları buraya gelicek</p>\r\n', 1, 0, '2020-06-11');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `album_images`
--
ALTER TABLE `album_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `vision`
--
ALTER TABLE `vision`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `album_images`
--
ALTER TABLE `album_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- Tablo için AUTO_INCREMENT değeri `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `mission`
--
ALTER TABLE `mission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `vision`
--
ALTER TABLE `vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
