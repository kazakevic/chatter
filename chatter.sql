/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : chatter

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-04-27 16:02:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `answer` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', 'Į aviakompanijos Ryanair aviabilieto kainą įskaičiuotas rankinis bagažas (1 bagažo vienetas iki 10 kg), kurį nešatės su savimi į lėktuvo saloną. Galima nemokamai į lėktuvą įsinešti ir antrą bagažą – mažą moterišką rankinę – bei oro uoste įsigytas prekes. Antroji rankinė negali viršyti 35 x 20 x 20 cm išmatavimų. Antrąjį bagažo vienetą reikės pasidėti lentynose virš sėdimųjų vietų arba po kėde.');
INSERT INTO `answers` VALUES ('2', 'Rankinis bagažas – 1 bagažo vienetas iki 10 kg ir maža moteriška rankinė. Rankinio bagažo išmatavimai negali viršyti 55 x 40 x 20 cm. Antrasis bagažas negali viršyti 35 x 20 x 20 cm išmatavimų. Mažajai bagažui svorio apribojimai netaikomi. Atkreipkite dėmesį į bagažo taisykles.');
INSERT INTO `answers` VALUES ('3', 'Aviakompanijos Ryanair registruojamas bagažas gali būti iki 15 kg arba iki 20 kg (išmatavimai 81 x 119 x 119 cm). Vienas keleivis gali gabenti iki 3 registruoto Ryanair bagažo vienetų.\r\nKeleiviai, esantys vienoje rezervacijoje ir kartu užsiregistravę į Ryanair skrydį, gali dalintis registruoto bagažo apribojimais. Pvz., 2 keleiviai, esantys vienoje rezervacijoje, įsigiję du registruotus bagažus po 15 kg, gali pasidalinti svoriu. Vienas keleivis gali turėti registruotą bagažą, kuris sveria 17 kg, o kitas – 13 kg.');
INSERT INTO `answers` VALUES ('4', 'Skaitau knygą.');
INSERT INTO `answers` VALUES ('5', '');

-- ----------------------------
-- Table structure for identificators
-- ----------------------------
DROP TABLE IF EXISTS `identificators`;
CREATE TABLE `identificators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identificators
-- ----------------------------
INSERT INTO `identificators` VALUES ('1', 'labas', 'greeting');
INSERT INTO `identificators` VALUES ('2', 'sveikas', 'greeting');
INSERT INTO `identificators` VALUES ('3', 'sveiki', 'greeting');
INSERT INTO `identificators` VALUES ('4', 'laba diena', 'greeting');
INSERT INTO `identificators` VALUES ('5', 'gerą dieną', 'greeting');
INSERT INTO `identificators` VALUES ('6', 'kas', 'question');
INSERT INTO `identificators` VALUES ('7', 'kur', 'question');
INSERT INTO `identificators` VALUES ('8', 'kada', 'question');
INSERT INTO `identificators` VALUES ('9', 'kaip', 'question');
INSERT INTO `identificators` VALUES ('10', 'kelintas', 'question');
INSERT INTO `identificators` VALUES ('11', 'kiek', 'question');
INSERT INTO `identificators` VALUES ('12', 'koks', 'question');
INSERT INTO `identificators` VALUES ('13', 'kokia', 'question');
INSERT INTO `identificators` VALUES ('14', 'kelinta', 'question');
INSERT INTO `identificators` VALUES ('15', 'kelintą', 'question');
INSERT INTO `identificators` VALUES ('16', 'kokią', 'question');
INSERT INTO `identificators` VALUES ('17', 'ką', 'question');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'Ar į Ryanair bilieto kainą įskaičiuotas bagažas?', 'įskaičiuotas; bagažas; ryanair', '1', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'įskaičiuotas');
INSERT INTO `questions` VALUES ('2', 'Koks yra Ryanair rankinio bagažo svoris vienam keleiviui?', 'keleiviui; rankinio; ryanair', '2', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'keleiviui');
INSERT INTO `questions` VALUES ('3', 'Koks yra Ryanair registruojamo bagažo svoris vienam keleiviui?', 'registruojamo; keleiviui; ryanair', '3', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'registruojamo');
INSERT INTO `questions` VALUES ('4', 'Ką veiki?', 'veiki; ką', '4', '0000-00-00 00:00:00', '2016-04-25 22:43:51', '2', 'veiki');
INSERT INTO `questions` VALUES ('5', 'Ką tu?', 'ką; tu', '4', '0000-00-00 00:00:00', '2016-04-25 22:43:51', '2', 'ką');
INSERT INTO `questions` VALUES ('6', 'Kas tu esi?', '0', '0', '2016-04-27 12:55:28', '2016-04-27 12:55:28', '0', '0');

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
