-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 15 Eyl 2021, 09:07:45
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kavim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `usarname` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `usarname` (`usarname`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`admin_id`, `usarname`, `mail`, `password`) VALUES
(1, 'gunes', 'gunes.eren08@gmail.com', '0000'),
(2, 'kursat', 'kursataslan0666@gmail.com', '1453');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE IF NOT EXISTS `ayarlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `iletisim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `bakim` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `baslik`, `aciklama`, `hakkimizda`, `iletisim`, `twitter`, `facebook`, `instagram`, `bakim`) VALUES
(1, 'Kavim', 'deneme', '', '', 'https://twitter.com/kursat_aslan66', 'https://www.facebook.com/kursat.aslan66', 'https://www.instagram.com/kursat.asln/', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_adi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `film_konu` text COLLATE utf8_turkish_ci NOT NULL,
  `film_fragman` varchar(90) COLLATE utf8_turkish_ci NOT NULL,
  `film_afisi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `film_türü` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `film_yil` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `film_imdb` float NOT NULL,
  `film_yönetmen` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `film_oyuncular` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `film_otoriter` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `film`
--

INSERT INTO `film` (`film_id`, `film_adi`, `film_konu`, `film_fragman`, `film_afisi`, `film_türü`, `film_yil`, `film_imdb`, `film_yönetmen`, `film_oyuncular`, `film_otoriter`) VALUES
(2, 'Son Samuray', 'Amerikan Ordusunda, ukala ve aynı zamanda da kıdemli bir kaptan olarak bilinen Nathan Algren, 1870’lerde Japonya’dan bir teklif ve davet alır. Kendisinden, Japon İmparatorluğu’nun ilk ordusuna askeri eğitim vermesi talep edilmektedir. Her ne kadar modern savaş yöntemleri açısından gelişim gösterseler de samuray kültürü de hem devam etmekte hem de önemsenmektedir. Ancak Algren, başına gelen bir kaza sonucu, samurayların lideri tarafından kurtarıldığı vakit, esas samuray kültürüyle tanışır ve bundan ziyadesi ile etkilenir. Bir samuray savaşçısı gibi hareket etmeyi öğrenmesi onu son derece önemli bir kararın eşiğine taşıyacaktır. Başrolde Tom Cruise’un oluşu filme ekstra bir cazibe katıyor.', 'https://www.youtube.com/embed/T50_qHEOahQ', 'sonsamuray.png', 'Savaş', '2003', 7.7, 'Edward Zwick', ' Tom Cruise, Ken Watanabe, Billy Connolly', 'Şafak Bent:                              \r\nAh o eskiler dedirten bir film. Bir kaç küçük mantık hatası dışında sürekleyici, savaş sahneleri gerçekçi ve de kendi içinde sağlam bir drama yatıyor.'),
(3, 'Upgrade', 'Eşiyle birlikteyken acımasızca saldırıya uğrayan Grey Trace, karısını saldırıda kaybetmenin yanı sıra belden aşağı da felç olmuştur. Günün birinde bir milyarder muciten bedenini geliştirecek deneysel bir tedavi teklifi alır. Tedavi için Trace\'in bedenine STEM olarak adlandırılan yapay zeka implantı yerleştirilir. Tedavi ile insanüstü yetenekler kazanan Trace, karısını öldüren ve kendi hayatını mahveden kişilerden intikam almak için yola koyulur...', 'https://www.youtube.com/embed/36PDeN9NRZ0', 'upgrade.png', 'Bilim Kurgu', '2018', 7.5, 'Leigh Whannell', 'Logan Marshall, Melanie Vallejo, Steve Danielsen ', 'Aksiyon filmlerinin genelde en büyük dezavantajı hep bilindik yöntemlerin izlenerek belirli bir formülde vasatı geçmeyen yapımlar ortaya koyması. Upgrade bu konuda farklılık göstererek ortalama bir işin üstüne çıkıyor. Teknik, efektler, fikir ve senaryonun abartı sınırlarını çok aşmamasıyla güzel bir seyirlik ortaya koyuyor.'),
(4, 'Fight Club', 'Dövüş Kulübünün birinci kuralı: Asla Dövüş Kulübü hakkında konuşma... Dövüş Kulübünün ikinci kuralı: Asla ve asla dövüş kulübü hakkında konuşma... Jack, hayatın sıradanlığına kapılmış bir sigorta memurudur. Uzun bir süredir \'insomnia\' yani uykusuzluk hastalığından şikayetçidir. Kendi psikolojik sıkıntılarından kurtulabilmek adına grup terapilerine katılmaktadır. Terapiler esnasında Marla adında bir kızla tanışır. Bir süre sonra da hayatını değiştirecek olan Tyler Durden ile... Durden, Jack\'in ulaşmak istediği tüm hedeflere ulaşmış olan bir adamdır ve Jack\'i asla hakkında konuşulmaması gereken bir organizasyon olan \'Dövüş Kulübü\' ile tanıştıracaktır. David Fincher\'ın kısa sürede kült mertebesine erişen filminin popülerliği dillere destan. Filmin başrollerinde de Brad Pitt, Edward Norton ve Helena Bonham Carter gibi ünlü simaları görmek mümkün...', 'https://www.youtube.com/embed/qtRKdVHc-cE', 'fightclub.png', 'Dövüş', '1999', 8.8, 'David Fincher', 'Brad Pitt, Edward Norton, Meat Loaf', 'Harika film.'),
(5, 'Avatar', 'Bir hırsızlık olayında ağabeyi ölen yarı felçli Jake Sully, Pandora adındaki uzak bir gezegende misyonunun başına geçmeye karar verir. Bu yerde Na’vi adında giderek tükenmekte olan bir halk yaşamaktadır. Jake, kendilerine özgü bir lisanları, dünya görüşleri ve yaşam biçimleri olan halkın arasına karıştığında doğa ile de bütünleşir. Askeri bir şirket, söz konusu yeri ve oradaki kaynakları mercek altına almak üzere Avatar adında bir program meydana getirmiştir. Bu program insanları kısmen insan kısmen de Na’vi haline büründürerek misyon amaçlı Pandora’ya göndermektedir. Bu sisteme gönüllü dahil olan Botanist Dr Grace Augustine ve Jake Sully için başka bir yaşam var olacaktır. Sully, Pandora’ya geçtiği anda felçli bedeni değişime uğrayarak işlevsel hale gelmektedir. Bu sırada Na’vi halkından Prenses Neytiri ile karşı karşıya gelen Jake, ansızın bir farkındalık yaşar ve bir araştırma misyonu ile gönderildiği bu gezegeni, kendi dünyalısından korumaya karar verir.', 'https://www.youtube.com/embed/aVdO-cx-McA', 'avatar.png', 'Bilim Kurgu', '2009', 7.8, 'James Cameron', 'Sam Worthington, Zoe Saldana, Sigourney Weaver', 'Muhteşem bi film.'),
(6, 'Serenity', 'Baker Dill, tropikal Plymouth Adası\'na tur gezileri yapan bir balıkçı teknesinin kaptanıdır. Ancak bu sessiz ve huzurlu hayatı, eski eşi Karen\'ın çaresizce istediği bir iyilik ile paramparça olur. Onu ve genç oğullarını, yeni ve şiddet yanlısı kocasından kurtarması için yalvaran Karen\'ın isteği, Dill\'in, yeni eşini balık avı bahanesiyle denize çekmesi ve onu orada köpekbalıklarına atıp ölüme terketmesidir. Karen\'ın ortaya çıkışıyla birlikte unutmak istediği bir hayata geri dönen Dill, doğru ile yanlış arasında bocalarken, Karen\'ın yarattığı gerçekliğin fire vermeye başladığını fark eder...\r\n\"Serenity\", Steven Knight\'ın imzası altında gizem ve gerilimi harmanlıyor. Tekinsiz havasıyla ilgi çeken filmin başrollerini ise Oscar ödüllü iki oyuncu, Matthew McConaughey ve Anne Hathaway paylaşıyor.', 'https://www.youtube.com/embed/k3zMlsEK8xA', 'serenity.png', 'Gerilim', '2019', 5.3, 'Steven Knight', 'Matthew McConaughey, Anne Hathaway, Diane Lane', 'Bir sinema tutkunu olarak bugüne kadar izlediğim binlerce film içinde final sahnesiyle beni ağlatan ilk film...');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(50) NOT NULL,
  `menu_content` varchar(500) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitebilgileri`
--

DROP TABLE IF EXISTS `sitebilgileri`;
CREATE TABLE IF NOT EXISTS `sitebilgileri` (
  `bilgi_id` int(11) NOT NULL AUTO_INCREMENT,
  `bilgi_anahtar` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `bilgi_deger` text COLLATE utf8_turkish_ci NOT NULL,
  `bilgi_tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bilgi_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sitebilgileri`
--

INSERT INTO `sitebilgileri` (`bilgi_id`, `bilgi_anahtar`, `bilgi_deger`, `bilgi_tarih`) VALUES
(1, 'title', 'KAVİM FİLM', '2020-04-01 12:16:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

DROP TABLE IF EXISTS `uyeler`;
CREATE TABLE IF NOT EXISTS `uyeler` (
  `uye_id` int(11) NOT NULL AUTO_INCREMENT,
  `uye_nick` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `uye_mail` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `uye_pw` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `uye_tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `uye_durum` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uye_id`),
  UNIQUE KEY `uye_nick` (`uye_nick`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_nick`, `uye_mail`, `uye_pw`, `uye_tarih`, `uye_durum`) VALUES
(2, 'gunes', 'gunes@gmail.com', '1111', '2020-03-29 16:58:44', 1),
(4, 'vehbi', 'gunes99@gmail.com', '2222', '2020-03-29 17:22:19', 0),
(8, 'kursat', 'kursataslan0666@gmail.com', '1453', '2020-04-14 17:22:27', 1),
(9, 'kursat6601', 'kursat_aslan66@hotmail.com', '1453', '2020-04-14 17:33:05', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `yorum_id` int(11) NOT NULL AUTO_INCREMENT,
  `yorum_film_id` int(11) NOT NULL,
  `yorum_ekleyen` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `yorum` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_spoiler` int(11) NOT NULL DEFAULT 0,
  `yorum_onay` int(11) NOT NULL DEFAULT 1,
  `yorum_tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`yorum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `yorum_film_id`, `yorum_ekleyen`, `yorum`, `yorum_spoiler`, `yorum_onay`, `yorum_tarih`) VALUES
(2, 5, 'vehbi', 'harika bi film', 0, 1, '2020-04-14 11:34:49'),
(5, 2, 'vehbi', 'Deneme', 0, 1, '2020-04-14 17:21:09'),
(6, 2, 'vehbi', 'Güzel', 0, 1, '2020-04-14 17:23:42'),
(7, 4, 'vehbi', '123', 0, 1, '2020-04-14 17:25:30'),
(8, 5, 'vehbi', 'xcxcz', 0, 1, '2020-04-14 17:26:54'),
(9, 5, 'vehbi', 'xxxx', 0, 1, '2020-04-14 17:38:25'),
(13, 4, 'vehbi', 'selamın aleyküm', 1, 1, '2020-11-13 19:04:26'),
(12, 3, 'vehbi', 'gfgfgfgf', 1, 1, '2020-04-14 17:47:13'),
(14, 4, 'vehbi', 'adsada', 0, 1, '2020-11-13 19:04:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
