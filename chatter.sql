/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : chatter

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-04-29 16:39:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `answer` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', 'Į aviakompanijos Ryanair aviabilieto kainą įskaičiuotas rankinis bagažas (1 bagažo vienetas iki 10 kg), kurį nešatės su savimi į lėktuvo saloną. Galima nemokamai į lėktuvą įsinešti ir antrą bagažą – mažą moterišką rankinę – bei oro uoste įsigytas prekes. Antroji rankinė negali viršyti 35 x 20 x 20 cm išmatavimų. Antrąjį bagažo vienetą reikės pasidėti lentynose virš sėdimųjų vietų arba po kėde.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('2', 'Rankinis bagažas – 1 bagažo vienetas iki 10 kg ir maža moteriška rankinė. Rankinio bagažo išmatavimai negali viršyti 55 x 40 x 20 cm. Antrasis bagažas negali viršyti 35 x 20 x 20 cm išmatavimų. Mažajai bagažui svorio apribojimai netaikomi. Atkreipkite dėmesį į bagažo taisykles.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('3', 'Aviakompanijos Ryanair registruojamas bagažas gali būti iki 15 kg arba iki 20 kg (išmatavimai 81 x 119 x 119 cm). Vienas keleivis gali gabenti iki 3 registruoto Ryanair bagažo vienetų.\r\nKeleiviai, esantys vienoje rezervacijoje ir kartu užsiregistravę į Ryanair skrydį, gali dalintis registruoto bagažo apribojimais. Pvz., 2 keleiviai, esantys vienoje rezervacijoje, įsigiję du registruotus bagažus po 15 kg, gali pasidalinti svoriu. Vienas keleivis gali turėti registruotą bagažą, kuris sveria 17 kg, o kitas – 13 kg.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('4', 'Skaitau knygą. O tu?', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for identificators
-- ----------------------------
DROP TABLE IF EXISTS `identificators`;
CREATE TABLE `identificators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identificators
-- ----------------------------
INSERT INTO `identificators` VALUES ('1', 'labas', 'greeting', '0');
INSERT INTO `identificators` VALUES ('2', 'sveikas', 'greeting', '0');
INSERT INTO `identificators` VALUES ('3', 'sveiki', 'greeting', '0');
INSERT INTO `identificators` VALUES ('4', 'laba diena', 'greeting', '0');
INSERT INTO `identificators` VALUES ('5', 'gerą dieną', 'greeting', '0');
INSERT INTO `identificators` VALUES ('6', 'kas', 'question', '0');
INSERT INTO `identificators` VALUES ('7', 'kur', 'question', '0');
INSERT INTO `identificators` VALUES ('8', 'kada', 'question', '0');
INSERT INTO `identificators` VALUES ('9', 'kaip', 'question', '0');
INSERT INTO `identificators` VALUES ('10', 'kelintas', 'question', '0');
INSERT INTO `identificators` VALUES ('11', 'kiek', 'question', '0');
INSERT INTO `identificators` VALUES ('12', 'koks', 'question', '0');
INSERT INTO `identificators` VALUES ('13', 'kokia', 'question', '0');
INSERT INTO `identificators` VALUES ('14', 'kelinta', 'question', '0');
INSERT INTO `identificators` VALUES ('15', 'kelintą', 'question', '0');
INSERT INTO `identificators` VALUES ('16', 'kokią', 'question', '0');
INSERT INTO `identificators` VALUES ('17', 'ką', 'question', '0');
INSERT INTO `identificators` VALUES ('18', 'lochas', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('19', 'kurva', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('20', 'pyderas', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('21', 'pydaras', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('22', 'blt', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('23', 'blet', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('24', 'nx', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('25', 'suka', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('26', 'naxuj', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('27', 'nachuj', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('28', 'pizdiec', 'angry', 'psichologic');
INSERT INTO `identificators` VALUES ('29', 'pzdc', 'angry', 'psichologic');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `key` varchar(10000) NOT NULL DEFAULT '0',
  `answer_id` int(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `length` int(11) DEFAULT '0',
  `main_key` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'Ar į Ryanair bilieto kainą įskaičiuotas bagažas?', 'įskaičiuotas; bagažas; ryanair', '1', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'įskaičiuotas');
INSERT INTO `questions` VALUES ('2', 'Koks yra Ryanair rankinio bagažo svoris vienam keleiviui?', 'keleiviui; rankinio; ryanair', '2', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'keleiviui');
INSERT INTO `questions` VALUES ('3', 'Koks yra Ryanair registruojamo bagažo svoris vienam keleiviui?', 'registruojamo; keleiviui; ryanair', '3', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'registruojamo');
INSERT INTO `questions` VALUES ('4', 'Ką veiki?', 'veiki; ką', '4', '0000-00-00 00:00:00', '2016-04-25 22:43:51', '2', 'veiki');
INSERT INTO `questions` VALUES ('5', 'Ką tu?', 'ką; tu', '4', '0000-00-00 00:00:00', '2016-04-25 22:43:51', '2', 'ką');
INSERT INTO `questions` VALUES ('11', 'kas tai namas?', '0', '0', '2016-04-27 19:53:32', '2016-04-27 19:53:32', '0', '0');
INSERT INTO `questions` VALUES ('12', 'kas tai f22?', '0', '0', '2016-04-27 19:59:59', '2016-04-27 19:59:59', '0', '0');
INSERT INTO `questions` VALUES ('13', 'kas tai wall street?', '0', '0', '2016-04-27 20:00:14', '2016-04-27 20:00:14', '0', '0');
INSERT INTO `questions` VALUES ('15', 'kas tai shizofrenia', '0', '0', '2016-04-27 21:23:22', '2016-04-27 21:23:22', '0', '0');
INSERT INTO `questions` VALUES ('16', 'kas tai maroco', '0', '0', '2016-04-27 21:23:28', '2016-04-27 21:23:28', '0', '0');
INSERT INTO `questions` VALUES ('17', 'kas tai pica?', '0', '0', '2016-04-27 21:49:08', '2016-04-27 21:49:08', '0', '0');
INSERT INTO `questions` VALUES ('18', 'kas tai amerika?', '0', '0', '2016-04-27 21:49:20', '2016-04-27 21:49:20', '0', '0');
INSERT INTO `questions` VALUES ('19', 'kas tai čipsai?', '0', '0', '2016-04-28 12:27:45', '2016-04-28 12:27:45', '0', '0');
INSERT INTO `questions` VALUES ('21', 'kas tai kebabas?', '0', '0', '2016-04-29 12:05:08', '2016-04-29 12:05:08', '0', '0');
INSERT INTO `questions` VALUES ('22', 'sveikas', '0', '0', '2016-04-29 12:38:38', '2016-04-29 12:38:38', '0', '0');
INSERT INTO `questions` VALUES ('23', 'Ką tu?', '0', '0', '2016-04-29 12:59:08', '2016-04-29 12:59:08', '0', '0');

-- ----------------------------
-- Table structure for random_pairs
-- ----------------------------
DROP TABLE IF EXISTS `random_pairs`;
CREATE TABLE `random_pairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pair` varchar(255) DEFAULT NULL,
  `id_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of random_pairs
-- ----------------------------
INSERT INTO `random_pairs` VALUES ('1', 'Laba diena, Sveiki, Gerą dieną', 'polite_greeting');
INSERT INTO `random_pairs` VALUES ('2', 'Sveikas, Labas', 'friend_greet');

-- ----------------------------
-- Table structure for shot_questions
-- ----------------------------
DROP TABLE IF EXISTS `shot_questions`;
CREATE TABLE `shot_questions` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shot_questions
-- ----------------------------

-- ----------------------------
-- Table structure for stopwords
-- ----------------------------
DROP TABLE IF EXISTS `stopwords`;
CREATE TABLE `stopwords` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stopwords
-- ----------------------------
INSERT INTO `stopwords` VALUES ('1', 'ar');
INSERT INTO `stopwords` VALUES ('2', 'į');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'adminas@test.lt', '$2y$10$glLudViTi/KDRL1qIYqfO.05sThxhZ.clllM0E5rbsr/DGsZC5wN.', '8jlbhHuq5vzb4UnuTNfu6GOvoNJZnQpAIpROFIDc7KTAA9FDJnPpGKdAecsX', '2016-04-28 18:46:19', '2016-04-29 11:20:52');
