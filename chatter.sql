/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : chatter

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-03 14:36:55
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', 'Į aviakompanijos Ryanair aviabilieto kainą įskaičiuotas rankinis bagažas (1 bagažo vienetas iki 10 kg), kurį nešatės su savimi į lėktuvo saloną. Galima nemokamai į lėktuvą įsinešti ir antrą bagažą – mažą moterišką rankinę – bei oro uoste įsigytas prekes. Antroji rankinė negali viršyti 35 x 20 x 20 cm išmatavimų. Antrąjį bagažo vienetą reikės pasidėti lentynose virš sėdimųjų vietų arba po kėde.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('2', 'Rankinis bagažas – 1 bagažo vienetas iki 10 kg ir maža moteriška rankinė. Rankinio bagažo išmatavimai negali viršyti 55 x 40 x 20 cm. Antrasis bagažas negali viršyti 35 x 20 x 20 cm išmatavimų. Mažajai bagažui svorio apribojimai netaikomi. Atkreipkite dėmesį į bagažo taisykles.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('3', 'Aviakompanijos Ryanair registruojamas bagažas gali būti iki 15 kg arba iki 20 kg (išmatavimai 81 x 119 x 119 cm). Vienas keleivis gali gabenti iki 3 registruoto Ryanair bagažo vienetų.\r\nKeleiviai, esantys vienoje rezervacijoje ir kartu užsiregistravę į Ryanair skrydį, gali dalintis registruoto bagažo apribojimais. Pvz., 2 keleiviai, esantys vienoje rezervacijoje, įsigiję du registruotus bagažus po 15 kg, gali pasidalinti svoriu. Vienas keleivis gali turėti registruotą bagažą, kuris sveria 17 kg, o kitas – 13 kg.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('4', 'Skaitau knygą. O tu?', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `answers` VALUES ('5', 'Prieš lipant į Ryanair lėktuvą rankinį bagažą reikia įdėti į specialią dėžę, kuri atitinka Ryanair rankinio bagažo dydžio reikalavimus. Jei jūsų bagažas tilps, problemų nebus. Jei netilps, reikės priduoti į registruoto bagažo skyrių už papildomą 50 EUR mokestį.', '2016-05-03 11:00:31', '2016-05-03 11:00:31');
INSERT INTO `answers` VALUES ('6', 'Jei keliaujate tik su Ryanair rankiniu bagažu, jo registruoti nereikia. Rankinį bagažą keleiviai nešasi su savimi į lėktuvo saloną.\r\nJei keliaujate ir su registruotu Ryanair bagažu, jį reikės užregistruoti bagažo skyriuje oro uoste prieš praeinant saugumo patikrą. Ryanair bagažo skyrius atidaromas likus 2 val. iki skrydžio ir užsidaro likus 40 min. iki numatyto skrydžio.', '2016-05-03 11:01:58', '2016-05-03 11:01:58');
INSERT INTO `answers` VALUES ('7', 'Galite užsisakyti registruoto bagažo gabenimą po to, kai jau nusipirkote bilietą arba jau užsiregistravote į skrydį, tik paslaugos kaina bus jau didesnė nei perkant bilietą. Užsakyti paslaugą internetu galima ne vėliau kaip 2 val. iki numatyto skrydžio. Paslaugos kaina priklauso nuo skrydžio datos bei krypties. Nepamirškite iš naujo atsispausdinti įlaipinimo kortelės, kad joje matytųsi įrašas apie registruoto bagažo gabenimo užsakymą. Jei bilietą pirkote ryanair.com svetainėje, tai galite padaryti per „Manage booking“. Jei bilietą pirkote pasirinktoje bilietų rezervavimo sistemoje, dėl registruoto bagažo gabenimo užsakymo kreipkitės į sistemos administratorių.', '2016-05-03 11:02:06', '2016-05-03 11:02:06');
INSERT INTO `answers` VALUES ('8', 'Į lėktuvo saloną priimama ne daugiau kaip 90 rankinio bagažo vienetų. Darbuotojai vietoje įvertina situaciją dėl talpumo ir priima sprendimus vardan keleivių saugumo, kuriuos bagažus perkelti į bagažo skyrių. Tai papildomai nekainuoja. Tokiais atvejais patartina iš bagažo išimti vertingiausius daiktus (kompiuteris, fotoaparatas ir pan.).', '2016-05-03 11:02:23', '2016-05-03 11:02:23');
INSERT INTO `answers` VALUES ('9', 'Pigių skrydžių aviakompanijos, taip pat ir Ryanair, nevykdo jungiamųjų skrydžių, todėl negali perkelti keliautojų ar jų bagažo į kitus skrydžius (tos pačios ar kitų aviakompanijų). Todėl neprisiima atsakomybės už tarpinius skrydžius, kuriuos keleiviai gali praleisti. Į kiekvieną skrydį reikia registruotis atskirai, t.y. kiekviename skrydyje turite turėti atskirą įlaipinimo kortelę. Jei keliaujate su registruotu bagažu, perkant bilietus kiekvienam skrydžiui atskirai reikia bagažą užregistruoti už atitinkamą mokestį. Atvykus į oro uostą bagažą reikia atiduoti į bagažo skyrių, o nusileidus bagažą atsiimti ir vėl registruoti į kitą skrydį. Raginame palikti pakankamai laiko nuo suplanuoto pirmojo skrydžio pabaigos iki kito skrydžio pradžios. Ryanair bagažo registracija baigiama likus 40 min. iki skrydžio.', '2016-05-03 11:02:35', '2016-05-03 11:02:35');
INSERT INTO `answers` VALUES ('10', 'Rankiniame bagaže leidžiama turėti tik nedidelius skysčių kiekius. Skysčiai turi būti atskirose, ne didesnėse nei 100 mililitrų, talpose. Šias talpas turite įdėti į vieną permatomą ir užsegamą plastikinį, ne didesnį nei 1 litro talpos krepšelį; vienas krepšelis – vienam keleiviui (tokius maišelius galite nusipirkti įvairiose parduotuvėse ar oro uostuose (pvz., Kauno oro uoste) arba gauti nemokamai (pvz., Vilniaus oro uoste). Tūrio apribojimai netaikomi vaistams, būtiniems skrydžio metu ir kūdikių maistui, būtiniems skrydžio metu.', '2016-05-03 11:03:59', '2016-05-03 11:03:59');
INSERT INTO `answers` VALUES ('11', 'Išsamią informaciją apie vaistų ar maisto papildų gabenimą rankiniame ar registruotame bagaže rasite Zigzag.lt tinklaraštyje.', '2016-05-03 11:04:06', '2016-05-03 11:04:06');
INSERT INTO `answers` VALUES ('12', 'Jūsų fotoaparatas, nešiojamasis kompiuteris turi būti įdėti į jūsų rankinį bagažą. Rankinis bagažas – 1 bagažo vienetas iki 10 kg (bagažo išmatavimai negali viršyti 55 x 40 x 20 cm) ir maža moteriška rankinė (negali viršyti 35 x 20 x 20 cm išmatavimų). Tad jei jūsų fotoaparatas, kompiuteris neviršija šių dydžio apribojimų, galite juos neštis tiesiog vietoj mažosios rankinės. Antrajam bagažui svorio apribojimai netaikomi.\r\nSaugumo patikros metu kompiuterį ir kitus technikos prietaisus reikia iš bagažo ištraukti ir pateikti atskirai.\r\nĮ registruotą bagažą fotoaparato, kompiuterio nedėkite, nes jie gali būti apgadinti arba bagažas gali vėluoti, dingti.', '2016-05-03 11:04:14', '2016-05-03 11:04:14');
INSERT INTO `answers` VALUES ('13', 'Jei norite į lėktuvo saloną neštis nedidelius muzikos instrumentus, pavyzdžiui, gitarą, smuiką ar altą, perkant bilietą turite užsakyti instrumentui papildomą vietą už papildomą mokestį. Registruotas arba rankinis bagažas papildomai instrumento vietai nepriklauso.\r\nNorėdami tokiam bagažo vienetui užsakyti papildomą sėdimą vietą, pavardės laukelyje įrašykite žodžius ITEM SEAT, o vardo laukelyje įrašykite žodį EXTRA. Tada rezervacijoje ir internetinėje įlaipinimo kortelėje bus nurodyta EXTRA ITEM SEAT. Internetinės registracijos metu būtina įvesti lydinčio keleivio kelionės dokumento išsamią informaciją.\r\nJei instrumentas atitinka rankinio bagažo dydžio ir svorio išmatavimus, galite neštis jį į saloną nemokamai, tačiau daugiau rankinio bagažo su savimi turėti negalite. Arba kitas variantas – atiduoti instrumentą į registruoto bagažo skyrių.', '2016-05-03 11:04:22', '2016-05-03 11:04:22');
INSERT INTO `answers` VALUES ('14', 'Aviakompanija Ryanair į skrydžius gyvūnų nepriima. Daugiau apie keliavimą su gyvūnais skaitykite Zigzag.lt tinklaraštyje straipsnyje „Keliavimas su savo augintiniais“.', '2016-05-03 11:04:30', '2016-05-03 11:04:30');
INSERT INTO `answers` VALUES ('15', 'Didžiosios Britanijos valstybių (Anglijos, Škotijos, Velso, Šiaurės Airijos) bei Europos Sąjungos šalių nustatytas orientacinis leidžiamas tabako gaminių kiekis negali būti didesnis kaip:\r\n– 800 cigarečių (4 blokai)*;\r\n– 400 cigarilių;\r\n– 200 cigarų;\r\n– 1 kg tabako.\r\nAlkoholinių gėrimų vienas asmuo gali įvežti ne daugiau kaip:\r\n– 10 l stipriųjų alkoholinių gėrimų (ne stipresnių nei 70%);\r\n– 20 l spirituoto vyno (pvz., portveino arba chereso);\r\n– 90 l vyno (iš kurio ne daugiau kaip 60 l putojančio vyno);\r\n– 110 l alaus.\r\n* Į Austriją, Airiją, Daniją, Italiją, Kroatiją, Slovėniją, Švediją ir Vokietiją atvykstantys Lietuvos, Latvijos, Vengrijos, Kroatijos, Rumunijos ir Bulgarijos piliečiai asmeniniam naudojimui gali įsivežti tik 300 cigarečių (15 pakelių) be muito mokesčio. Kiti ribojimai, susiję su tabako gaminiais, nesikeičia, jei prekės įsivežamos ne komerciniais, o asmeninio naudojimo tikslais.\r\nĮ Norvegiją asmuo nuo 18 metų gali vežtis iki 200 vnt. cigarečių (1 blokas) arba 250 g kitų tabako gaminių. 18 – 20 m. asmenys gali vežtis ne stipresnių nei 22% alkoholinių gėrimų. Vyresni asmenys gali vežtis:\r\n– 1 l spiritinio gėrimo (22% – 60%);\r\n– 1,5 l vyno (2,5 % – 22 %);\r\n– 2 l (6×0,33 l) alaus.\r\nAlkoholinių gėrimų kombinacijos priklauso nuo to, ar vežami tabako gaminiai (silpnesnius gėrimus keisti į spiritinius negalima):\r\n– 200 vnt. cigarečių atitinka 1,5 l vyno arba 1,5 l alaus;\r\n– 1,5 l vyno atitinka 1,5 l alaus;\r\n– 1 l spiritinių gėrimų atitinka 1,5 l vyno arba 1,5 l alaus.\r\nGalimos kombinacijos:\r\n– 1 l spiritinio gėrimo + 3 l vyno + 2 l alaus (nevežant tabako gaminių);\r\n– 4,5 l vyno + 2 l alaus (nevežant tabako gaminių);\r\n– 6,5 l alaus (nevežant tabako gaminių);\r\n– 1 l spiritinio gėrimo + 1,5 l vyno + 2 l alaus + 200 vnt. cigarečių arba 250 g. tabako (vežant tabako gaminius);\r\n– 3 l vyno + 2 l alaus + 200 vnt. cigarečių arba 250 g. tabako (vežant tabako gaminius);\r\n– 5 l alaus + 200 vnt. cigarečių arba 250 g. tabako (vežant tabako gaminius).\r\nSvarbiausia galiojanti taisyklė – šie daiktai turi būti skirti asmeniniam vartojimui, t.y. keleivis jų neketina perparduoti. Jei šių prekių vežatės daugiau, jums gali tekti įrodyti, kad jos skirtos tik asmeniniam vartojimui paprašant įsigijimo dokumentų, teiraujantis viešnagės laikotarpio, leistino kiekio viršijimo priežasčių. Nesugebėjus įrodyti, alkoholis ir/ar tabako gaminiai (pvz., cigaretės) bus konfiskuojami.\r\nĮ Lietuvą ar kitas ES šalis galima įsivežti iki 200 vnt. (vykstant oro transportu) arba iki 40 vnt. (vykstant sausumos ir jūros transportu) cigarečių iš ne ES šalių (pvz., iš Rusijos, Baltarusijos su rusiškomis banderolėmis). Kiek galima vežtis Lietuvoje prikauptų cigarečių su rusiškomis banderolėmis į atitinkamą ES šalį, reikėtų tikslintis čia >\r\nCigaretes galite vežtis tiek rankiniame, tiek registruotame bagaže.\r\nPabrėžiame, kad nuo 2015.05.01 asmenims iki 18 metų rūkyti (vartoti) tabako gaminius ar juos turėti yra draudžiama. Už nepilnamečių asmenų tabako gaminių ar susijusių gaminių (elektroninių cigarečių) rūkymą (vartojimą) ar tabako gaminių ar susijusių gaminių (elektroninių cigarečių ir pildomųjų talpyklų) turėjimą skiriamos baudos.', '2016-05-03 11:04:42', '2016-05-03 11:04:42');
INSERT INTO `answers` VALUES ('16', 'Elektronines cigaretes vežtis galite, tačiau tik rankiniame bagaže. Papildomus cigarečių skysčius gabenkite pagal skysčių gabenimo rankiniame bagaže taisykles.\r\nElektroninėmis cigaretėmis skrydžio metu naudotis draudžiama.', '2016-05-03 11:04:50', '2016-05-03 11:04:50');
INSERT INTO `answers` VALUES ('17', 'Vaikams nuo 2 metų aviakompanija Ryanair nuolaidų netaiko. Kūdikiams iki 2 metų taikoma fiksuota bilieto kaina.', '2016-05-03 11:06:19', '2016-05-03 11:06:19');
INSERT INTO `answers` VALUES ('18', 'Aviakompanija Ryanair siūlo 50% nuolaidą registruoto bagažo gabenimui, vietos rezervacijai, pirmenybinio įlaipinimo paslaugai ir jaunesnių nei 16 metų vaikų draudimui, jeigu į tą patį užsakymą įtrauktas vaiką lydintis suaugęs keleivis, įsigijęs atitinkamas paslaugas už pilną kainą.\r\n50% nuolaida registruoto bagažo gabenimui, vietos rezervacijai, pirmenybinio įlaipinimo paslaugai ir draudimui taikoma ne daugiau kaip 2 vaikams, kai 1 iš lydinčių suaugusių asmenų yra įtrauktas į tą patį užsakymą ir perka atitinkamas paslaugas už pilną kainą, ir ne daugiau kaip 4 vaikams, kai 2 iš lydinčių suaugusių asmenų yra įtraukti į tą patį užsakymą ir perka atitinkamas paslaugas už pilną kainą.\r\nPapildomos nuolaidos šeimoms siūlomos tada, kai suaugę ir vaikai yra įtraukti į tą patį užsakymą.\r\nKeleiviai, kurie per vienerius kalendorinius metus yra skridę du kartus (pirmyn ir atgal) ir naudojosi Ryanair siūlomomis papildomomis nuolaidomis šeimai, gali kreiptis į bilieto pardavėją dėl „Family Extra“ paslaugos ir 20% nuolaidos trečiajam skrydžiui su vaikais. Jei prašymas bus patvirtintas, nuolaidos kodas bus išsiųstas pirkėjui ir galios 4 savaites nuo jo išdavimo dienos.\r\nŠios nuolaidos taikomos tik užsakymo metu.', '2016-05-03 11:06:25', '2016-05-03 11:06:25');
INSERT INTO `answers` VALUES ('19', 'Aviakompanija Ryanair nepriima į skrydį vaikų iki 16 metų be suaugusiųjų palydos. Jei ir nupirksite nepilnamečiui bilietą kaip suaugusiajam, vaiko nepavyks užregistruoti į skrydį ir gauti įlaipinimo kortelę, jei kartu su juo neskris suaugęs asmuo. Ryanair palydos paslaugų neteikia.', '2016-05-03 11:06:33', '2016-05-03 11:06:33');
INSERT INTO `answers` VALUES ('20', 'Visų pirma reikalingas galiojantis asmens dokumentas – pasas arba asmens tapatybės kortelė. Jei asmens dokumentas negalioja, dingęs, grįžti į savo šalį gali su Asmens grįžimo pažymėjimu. Gimimo liudijimas kertant sieną negalioja.\r\nRyanair ir pasienio tarnybos turi skirtingus reglamentavimus.\r\nAviakompanija Ryanair nepriima į skrydį vaikų iki 16 metų be suaugusiųjų palydos. Vyresni vaikai juos gali lydėti. Ryanair aviakompanijai reikia pateikti tik galiojančius asmens dokumentus ir atspausdintas įlaipinimo korteles.\r\nPasienio tarnybai reikia pateikti papildomus dokumentus, jei vaikas iki 18 metų be tėvų keliauja į valstybes, nepriklausančias Šengeno zonai. ', '2016-05-03 11:07:12', '2016-05-03 11:07:12');
INSERT INTO `answers` VALUES ('21', 'Sistema neleis vaikui iki 16 metų nupirkti bilieto į Ryanair skrydį be suaugusiojo. Tokiu atveju nupirkite nepilnamečiui bilietą kaip suaugusiajam ir iškart paskambinkite į centrinę Ryanair būstinę arba užpildykite šią Ryanair formą (reikia pasirinkti „Comlpaint“ ir būtina nurodyti abiejų rezervacijų numerius bei vaiko asmens dokumento duomenis). Tokiu atveju registracija į Ryanair skrydį bus atliekama oro uoste nemokamai. Jei bilietus pirkote pasirinktoje bilietų rezervavimo sistemoje, susisiekite su administratoriumi, kad vaiko rezervaciją „pririštų“ prie kartu keliaujančio suaugusio keleivio rezervacijos.', '2016-05-03 11:07:24', '2016-05-03 11:07:24');
INSERT INTO `answers` VALUES ('22', 'Aviakompanija Ryanair kūdikių iki 7 dienų amžiaus į skrydį nepriima.\r\nKūdikiai (nuo 8 dienų iki 23 mėnesių imtinai) privalo būti lydimi suaugusiojo asmens nuo 16 metų (vienas suaugęs lydi vieną kūdikį). Perkant bilietą reikia nurodyti, jog skrendama su kūdikiu. Kūdikis turi sėdėti ant suaugusiojo kelių (kūdikio saugos diržu pasirūpins personalas). Kūdikiui skirtu iki 5 kg bagažu rūpinasi lydintis asmuo ir bagažui galioja visos lėktuvo vidaus bendrosios taisyklės. Kūdikiui registruoto bagažo gabenimo paslauga nepriklauso.\r\nKūdikio bilieto kaina yra fiksuota.\r\nJei kūdikiui sukanka dveji metai iki atgalinio skrydžio, jam taikoma pilna, kaip ir suaugusio keleivio, bilieto kaina, mokesčiai, taisyklės ir kt.\r\nYra galimybės pervystyti kūdikį ar pašildyti maistą lėktuve.', '2016-05-03 11:07:30', '2016-05-03 11:07:30');
INSERT INTO `answers` VALUES ('23', 'Kūdikiui atskira vieta nepriklauso, jis turi sėdėti suaugusiam keleiviui (nuo 16 metų) ant kelių (kūdikio saugos diržu pasirūpins personalas).\r\nTačiau yra papildomų sąlygų, kuomet kūdikiui gali būti užsakyta atskira vieta už papildomą mokestį.\r\n1. Papildoma vieta (Extra Seat) gali būti skirta kūdikiams nuo 8 dienų iki 23 mėnesių amžiaus. Kūdikiai turi sėdėti ant suaugusiojo kelių (nuo 16 metų), kai lėktuvas kyla, leidžiasi ir visais atvejais, kai privaloma prisisegti saugos diržus. Kūdikis gali būti perkeltas į jam skirtą papildomą vietą tik tada, kai bus leista atsisegti saugos diržus. Užsakius papildomą vietą kūdikiui lėktuve, rankinio ar registruoto bagažo gabenimo paslauga kūdikiui vis tiek nepriklauso. Jeigu užsakėte atskirą papildomą vietą kūdikiui, turite apie tai pranešti klientus aptarnaujančiajam personalui, kad atliktų rezervaciją ir priskirtų sėdimą vietą.\r\n2. Kūdikiai nuo vienerių metų amžiaus lėktuve gali sėdėti atskiroje kėdėje naudojantis Amsafe CARE saugumo diržais. Tokiu atveju vaiko svoris yra ribojamas – nuo 10 kg iki 20 kg. Norint užsisakyti šią paslaugą, reikia susisiekti su klientus aptarnaujančiu personalu. Jei užsakėte vietą kūdikiui (12 – 23 mėnesių kūdikis naudosis Amsafe CARE saugumo diržais), nemokamai priklausys 10 kg rankinis bagažas, maža rankinė ir galimybė užsisakyti registruojamą bagažą už papildomą mokestį.\r\nJeigu užsisakėte atskirą vietą kūdikiui, kuris naudosis Amsafe CARE saugumo diržais, turite apie tai pranešti klientus aptarnaujančiajam personalui http://www.ryanair.com/ie/questions/contacting-customer-service/ , kad atliktų rezervaciją keleiviams ir priskirtų sėdimą vietą. Šiam užsakymui bus taikomos internetinės svetainės nuolaidos.\r\nJeigu Amsafe CARE saugumo diržais naudosis vaikas vyresnis nei 2 metų amžiaus, keleivių rezervacija gali būti atliekama internetu, tačiau turėsite susisiekti su klientus aptarnaujančiu personalu, kad įtrauktų informaciją dėl saugos diržų ir priskirtų tinkamą vietą.\r\n3. Kūdikiai gali sėdėti automobilinėje kėdutėje, jei jai yra užsakyta atskira vieta ir ji atitinka reikalavimus.\r\nAutomobilinę kėdutę, skirtą sėdėti kūdikiui/vaikui lėktuvo salone, į saloną neštis galima tuomet, jei yra patvirtinta, jog ji gali būti naudojama lėktuve (European car seat – kėdutė turi turėti CE lipduką su užrašu „Certified for use on aircraft“; U.S. car seat – kėdutė turi turėti FAA lipduką su užrašu „Certified for use on aircraft“), turi 5 saugos diržus, telpa 42,5 cm plotyje tarp sėdimos vietos rankenų.\r\nKeleiviams, kurie užsakė atskirą sėdimą vietą kūdikiui ir jis naudosis automobiline kėdute, kuri atitinka keliamus reikalavimus, priklausys 10 kg rankinio bagažo, mažos rankinės gabenimo paslauga nemokamai ir galimybė užsisakyti registruoto bagažo gabenimo paslaugą už papildomą mokestį.\r\nJeigu užsakėte atskirą papildomą vietą kūdikiui (nuo 8 dienų iki 23 mėnesių amžiaus), kuris naudosis automobiline kėdute, atitinkančia keliamus reikalavimus, turite apie tai pranešti klientus aptarnaujančiajam personalui, kad atliktų rezervaciją keleiviams ir priskirtų sėdimą vietą.\r\nJeigu automobiline kėdute lėktuve naudosis vaikas, vyresnis nei 2 metų amžiaus, keleivių rezervacija gali būti atliekama internetu, tačiau turėsite susisiekti su klientus aptarnaujančiu personalu, kad įtrauktų informaciją dėl automobilinės kėdutės ir priskirtų tinkamą vietą.', '2016-05-03 11:07:39', '2016-05-03 11:07:39');
INSERT INTO `answers` VALUES ('24', 'Kūdikiams iki 2 metų (iki 24 mėnesių) priklauso 5 kg bagažas. Vaikui nuo 2 metų (nuo 24 mėnesių) priklauso tiek nemokamas rankinis bagažas bei papildoma maža rankinė, tiek registruoto bagažo gabenimas už papildomą mokestį.\r\nKuomet keliauja kūdikis/vaikas, nemokamai galima vežtis 2 kūdikio/vaiko įrangos vienetus: sudedamą vežimėlį (pushchair) ir automobilinę kėdutę (car seat), kelioninę lovelę (travelcot) arba automobilio sėdynę (booster seat). Nemokamą įrangą galima gabenti vaikams iki 12 metų.\r\nKūdikio/vaiko įranga turi būti užregistruojama oro uoste prie bagažo skyriaus. Registracija baigiama likus 40 min. iki skrydžio. Užregistravus vežimėliu galima naudotis iki laipinimo į lėktuvą. Skrydžio metu juo pasirūpins aptarnaujantis personalas. Išlipus iš lėktuvo vežimėlį atgausite ir galėsite toliau juo naudotis.\r\nAtminkite, kad kūdikių/vaikų vežimėliai registruojami su kitu bagažu ir gabenami nemokamai, jei biliete nurodyta, kad lėktuvu keliauja kūdikis/vaikas. Jei kūdikis/vaikas nekeliauja, šie daiktai gabenami tik kaip specialusis bagažas už papildomą mokestį.\r\nPapildoma kūdikio/vaiko įranga registruojama kaip jūsų registruotas bagažas. Kūdikio/vaiko įranga iki 20 kg registruojama ir kainuoja 10 EUR/GBP užsakant gabenimą iš anksto, 20 EUR/GBP užsakant oro uoste prieš skrydį už 1 vienetą skrydžiui į vieną pusę. Jei kūdikio/vaiko įranga viršija 20 kg, teks mokėti papildomai už kiekvieną viršijamą kilogramą. Registruojamą kūdikio/vaiko įrangą gerai ir saugiai supakuokite.\r\nKūdikio maistui ir gėrimams, reikalingiems skrydžio metu, ribojimai nėra taikomi.', '2016-05-03 11:07:45', '2016-05-03 11:07:45');
INSERT INTO `answers` VALUES ('25', 'Automobilinę kėdutę, skirtą sėdėti kūdikiui/vaikui lėktuvo salone, į saloną neštis galima tuomet, jei yra patvirtinta, jog ji gali būti naudojama lėktuve (European car seat – kėdutė turi turėti CE lipduką su užrašu „Certified for use on aircraft“; U.S. car seat – kėdutė turi turėti FAA lipduką su užrašu „Certified for use on aircraft“), turi 5 saugos diržus, telpa 42,5 cm plotyje tarp sėdimos vietos rankenų.\r\nKeleiviams, kurie užsisakė atskirą sėdimą vietą kūdikiui ir naudosis automobiline kėdute, kuri atitinka keliamus reikalavimus, priklausys 10 kg rankinio bagažo, mažos rankinės gabenimo paslauga nemokamai ir galimybė užsisakyti registruoto bagažo gabenimo paslaugą.\r\nJeigu užsakėte atskirą papildomą vietą kūdikiui (nuo 8 dienų iki 23 mėnesių amžiaus), kuris naudosis automobiline kėdute, atitinkančia keliamus reikalavimus, turite apie tai pranešti klientus aptarnaujančiajam personalui, kad atliktų rezervaciją keleiviams ir priskirtų sėdimą vietą.\r\nJeigu automobiline kėdute lėktuve naudosis vaikas, vyresnis nei 2 metų amžiaus, keleivių rezervacija gali būti atliekama internetu, tačiau turėsite susisiekti su klientus aptarnaujančiu personalu, kad įtrauktų informaciją dėl automobilinės kėdutės ir priskirtų tinkamą vietą.', '2016-05-03 11:07:53', '2016-05-03 11:07:53');
INSERT INTO `answers` VALUES ('26', 'Keliaujant Šengeno zonoje:\r\nJeigu vaiko iki 18 metų kelionės tikslas yra Šengeno valstybė, tai taikomas Šengeno susitarimas ir nesvarbu, ar vaikas vyktų su tėvais, ar su vienu iš tėvų, ar su lydinčiu asmeniui ar net vienas, vieno iš tėvų sutikimo nereikia turėti ir valstybės sienos apsaugos pareigūnas jo nereikalaus. Tokiu atveju vykti pas notarą ir patvirtinti vaiko išvykimo į užsienio valstybę nereikia.\r\nŠengeno zonai priklauso 26 valstybės: Austrija, Belgija, Čekija, Danija, Estija, Graikija, Islandija, Ispanija, Italija, Latvija, Lenkija, Lichtenšteinas, Lietuva, Liuksemburgas, Malta, Nyderlandai, Norvegija,Portugalija, Prancūzija, Slovakija, Slovėnija, Suomija, Švedija, Šveicarija, Vengrija, Vokietija.\r\nKeliaujant ne Šengeno zonoje ir ne Europos Sąjungos ribose:\r\nŠengeno erdvės reikalavimai netaikomi ES valstybėms: Airija, Bulgarija, Didžioji Britanija, Kipras, Kroatija, Rumunija. Vadinasi, jei vaikas vyksta į šias šalis, jo tėvams ar globėjams jau prieš kelionę reikės kreiptis į notarą.\r\nPapildomi dokumentai (lietuvių ar anglų kalba) turi būti pateikti atsižvelgiant į tai, su kuo vaikas vyksta į kitas, ne Šengeno, užsienio valstybes:\r\n–  Jei vaikas vyksta į užsienio valstybę su vienu iš tėvų, pasienio kontrolės punkto pareigūnams reikia pateikti tik vaiko asmens tapatybę patvirtinantį dokumentą. Antrojo iš vaiko tėvų rašytinio sutikimo pateikti nereikia. Tuo atveju, kai vaiko pavardė nesutampa su vieno iš tėvų, su kuriuo vaikas išvyksta į užsienio valstybę, pavarde, Lietuvos Respublikos pasienio kontrolės punkto pareigūnų reikalavimu pateikiamas vaiko gimimo liudijimas.\r\n–  Jei vaikas vyksta į užsienio valstybę su lydinčiu asmeniu, kartu su asmens tapatybę patvirtinančiu dokumentu pasienio kontrolės punkto pareigūnams turi būti pateikiamas bent vieno iš vaiko tėvų arba globėjo (rūpintojo) rašytinis sutikimas, kad vaikas vyktų su jį lydinčiu asmeniu, ir šio sutikimo kopija. Sutikime parašo tikrumas turi būti paliudytas notaro arba Lietuvos Respublikos diplomatinės atstovybės ar konsulinės įstaigos pareigūno, arba seniūno.\r\n–  Jei vaikas vyksta į užsienio valstybę vienas, kartu su asmens tapatybę patvirtinančiu dokumentu pasienio kontrolės punkto pareigūnams turi būti pateikiamas bent vieno iš vaiko tėvų arba globėjo (rūpintojo) rašytinis sutikimas, kad vaikas vyktų vienas, ir šio sutikimo kopija. Sutikime parašo tikrumas turi būti paliudytas notaro arba Lietuvos Respublikos diplomatinės atstovybės ar konsulinės įstaigos pareigūno, arba seniūno.\r\n–  Kai vaikas vyksta į užsienio valstybę su organizuota vaikų grupe į ekskursiją, turistinę kelionę ar kitas organizuotas keliones (su sporto, mokslo, meno ar kitais kolektyvais), kartu su asmens tapatybę patvirtinančiais dokumentais pasienio kontrolės punkto pareigūnų reikalavimu turi būti pateiktas kelionės organizatoriaus parašu ir antspaudu patvirtintas raštas, kuriame turi būti nurodytas išvykstančių vaikų ir juos lydinčių asmenų vardinis sąrašas, ir šio rašto kopija. Už šio sąrašo sudarymą atsakingas kelionės organizatorius. Vaiko duomenys į sąrašą gali būti įtraukiami tik gavus bent vieno iš vaiko tėvų arba globėjo (rūpintojo) rašytinį sutikimą. Sutikime parašo tikrumas turi būti paliudytas notaro arba Lietuvos Respublikos diplomatinės atstovybės ar konsulinės įstaigos pareigūno, arba seniūno. Tėvų, globėjų (rūpintojų) sutikimus turi saugoti kelionės organizatorius.\r\nVaiko, kuriam yra nustatyta globa (rūpyba), globėjas (rūpintojas), vaikų globos (rūpybos) institucijos vadovas ar jo įgaliotas atstovas, likus ne mažiau kaip 3 dienoms iki numatyto vaiko laikino išvykimo į užsienio valstybę, privalo raštu informuoti savivaldybės vaiko teisių apsaugos tarnybą (skyrių) apie numatomą laikiną vaiko išvykimą į užsienio valstybę, nurodydamas kelionės tikslą, trukmę ir šalį, į kurią vykstama.\r\nVaiko, kuris yra Lietuvos Respublikos pilietis, grįžimui į Lietuvos Respubliką reikia tik asmens tapatybės dokumento (paso arba asmens tapatybės kortelės), papildomų sutikimų ar kitų dokumentų pateikti nereikia, nesvarbu, su kuo jis grįžta.', '2016-05-03 11:08:02', '2016-05-03 11:08:02');
INSERT INTO `answers` VALUES ('27', 'Registruojantis į skrydį pažymėkite varnelę, kad registruojatės skrydžiui į vieną pusę, jei turite bilietą skrydžiams į abi puses. Pasirinkite dokumento tipą „Pasas“. Asmens grįžimo pažymėjimas turi savo kodą, kurį sudaro 2 raidės ir 6 skaitmenys, tad šį kodą ir turite vesti į langelį, skirtą dokumento numeriui. Toliau suveskite visus duomenis, kurių jūsų prašo. Jei nepakanka dokumento galiojimo laiko ir neleidžia registruotis, paskambinkite į centrinę Ryanair būstinę.', '2016-05-03 11:08:43', '2016-05-03 11:08:43');
INSERT INTO `answers` VALUES ('28', 'Paskambinkite į centrinę Ryanair būstinę ir pakoreguos jūsų registracijos duomenis. Jei bilietą pirkote per pasirinktą bilietų rezervavimo sistemą, kreipkitės į sistemos administratorių.', '2016-05-03 11:08:49', '2016-05-03 11:08:49');
INSERT INTO `answers` VALUES ('29', 'Prieš registruojantis į skrydį reikia nuspręsti, ar norite sėdėti pasirinktose vietose, ar tiks tokios, kokias paskirs. Pasirinkti norimas vietas už papildomą mokestį galite bilieto pirkimo metu arba dar iki registracijos į skrydį. Atliekant registraciją vietos parenkamos automatiškai ir nemokamai. Jei bilietai pirkti vienu metu, didelė tikimybė, kad sėdėsite šalia, tačiau jei vietų šalia nepakanka, jos gali būti išskirstytos. ', '2016-05-03 11:08:59', '2016-05-03 11:08:59');
INSERT INTO `answers` VALUES ('30', 'Jei keleivis yra užsiregistravęs į skrydį, tačiau pametė įlaipinimo kortelę, nereikia nerimauti. Įlaipinimo kortelę galima perspausdinti iki 2 val. prieš skrydį. Likus mažiau nei 2 val. iki skrydžio, įlaipinimo kortelės perspausdinti nebegalima. Tokiu atveju, įlaipinimo kortelę teiks atsispausdinti oro uoste. Paslauga kainuoja 15 EUR. Likus mažiau nei 40 min. iki skrydžio įlaipinimo kortelės oro uoste atsispausdinti nebegalima.', '2016-05-03 11:10:12', '2016-05-03 11:10:12');
INSERT INTO `answers` VALUES ('31', 'Skrydžio datos, maršruto keitimai galimi (jei yra laisvų vietų) likus ne mažiau nei 4 val. iki skrydžio. Keleivio vardo, pavardės keitimas galimas (jei yra laisvų vietų) likus ne mažiau nei 2 val. iki skrydžio.* Už keitimus mokamas aviakompanijos nustatytas mokestis.\r\n*Jei keleivis jau užsiregistravo į skrydį internetu ir vėliau nori atlikti datos, maršruto ar vardo keitimus, reikia susisiekti su rezervacijų centru likus ne mažiau kaip dienai iki skrydžio ir atšaukti registraciją. Atšaukus registraciją, bilieto keitimai galimi įprasta tvarka – internetu per „Tvarkyti užsakymą“ arba per sistemos, kurioje pirktas bilietas, administratorių.\r\nRyanair suteikia galimybę per parą (24 val.) ištaisyti klaidas parašytuose varduose, pavardėse ar pakoreguoti skrydį, jei apsiriko.\r\nDėl keitimų susisiekite su mūsų konsultantais tel. 8 37 407140, 8 600 26763 arba el.paštu uzsakymai@ryanair-skrydziai.lt.', '2016-05-03 11:10:31', '2016-05-03 11:10:31');
INSERT INTO `answers` VALUES ('32', 'Keleivio vardas ir pavardė turi būti nurodyti taip kaip nurodyta asmens dokumente, su kuriuo registruojamasi į skrydį.\r\nVardo ar pavardės pirmosios 3 raidės privalo būti teisingos. Jei suklydote ir vieną iš pirmųjų raidžių parašėte neteisingai, reikės atlikti keleivio vardo ar pavardės keitimą už atitinkamą mokestį (jei dar neatlikta registracija į skrydį). Jei smulkią klaidą padarėte kitose raidėse, nieko baisaus.\r\nJei asmens dokumente nurodyti du vardai ar pavardės, visi jie turi būti nurodyti ir biliete taip, kaip asmens dokumente, su kuriuo keleivis registruosis į skrydį.\r\nRyanair suteikia galimybę per parą (24 val.) ištaisyti klaidas parašytuose varduose, pavardėse ar pakoreguoti skrydį, jei apsiriko.\r\nKad būtų ramiau laukti skrydžio, galite paskambinti į centrinę Ryanair būstinę ir pakoreguos jūsų vardą ar pavardę. Jei bilietą pirkote per pasirinktą bilietų rezervavimo sistemą, kreipkitės į sistemos administratorių.', '2016-05-03 11:10:38', '2016-05-03 11:10:38');
INSERT INTO `answers` VALUES ('33', 'Perkant bilietą vardą ir pavardę reikia rašyti lotyniškomis raidėmis (be lietuviškų simbolių su taškais, nosinėmis ar varnelėmis, pvz., ė, į, š ir pan.).\r\nJei vis dėlto įrašėte vardą ir pavardę su lietuviškomis raidėmis, pasitikrinkite, ar atsiųstame patvirtinime keleivių vardai ir pavardės nėra iškraipyti. Jei raidės yra iškraipytos ir neperskaitomos, iškart paskambinkite į centrinę Ryanair būstinę ar pasirinktos bilietų rezervavimo sistemos, per kurią pirkote bilietą, administratoriui dėl pakoregavimo.', '2016-05-03 11:10:49', '2016-05-03 11:10:49');
INSERT INTO `answers` VALUES ('34', 'Jei jūsų asmens dokumentai dar nepakeisti ir liko su senąja pavarde ir kitais duomenimis, registruokitės į skrydį pagal turimus galiojančius dokumentus. Jei dokumentus jau pasikeitėte ir juose įrašyta naujoji pavardė ar nauji asmens dokumento duomenys (galiojimo laikas, numeris ir kt.), dėl pakoregavimo kreipkitės į centrinę Ryanair būstinę. Jei bilietą pirkote per pasirinktą bilietų rezervavimo sistemą, kreipkitės į sistemos administratorių.\r\nBiliete ir registracijoje į skrydį nurodyta keleivio pavardė ir duomenys turi sutapti su galiojančiame asmens dokumente, su kuriuo keleivis skrenda, nurodytais duomenimis.\r\nPasak Ryanair, jei užsisakėte skrydį ir įrašyta mergautinė pavardė, bet pasas arba asmens tapatybės kortelė jau su naująja pavarde arba atvirkščiai, Ryanair geranoriškai atliks keleivio pavardės keitimą.', '2016-05-03 11:10:57', '2016-05-03 11:10:57');
INSERT INTO `answers` VALUES ('35', 'Jei keleivis jau užsiregistravo į skrydį internetu ir vėliau nori atlikti datos, maršruto ar vardo keitimus, reikia susisiekti su rezervacijų centru likus ne mažiau kaip dienai iki skrydžio ir atšaukti registraciją. Atšaukus registraciją, bilieto keitimai galimi iki 4 val. prieš skrydį įprasta tvarka – internetu per „Tvarkyti užsakymą“ arba per sistemos, kurioje pirktas bilietas, administratorių.', '2016-05-03 11:11:06', '2016-05-03 11:11:06');
INSERT INTO `answers` VALUES ('36', 'Aviakompanijos Ryanair bilietai yra negrąžinami, išskyrus atvejus dėl keleivio ar jo šeimos narių mirties. Jei negalite skristi, galima keisti bilieto datą arba keleivio vardą ir pavardę už papildomą mokestį. Jei bilietą pirkote ryanair.com svetainėje, bilieto datą ar keleivio vardą ir pavardę galite pakeisti per „Tvarkyti užsakymą“. Jei bilietą pirkote pasirinktoje bilietų rezervavimo sistemoje, kreipkitės į sistemos administratorių.', '2016-05-03 11:11:16', '2016-05-03 11:11:16');
INSERT INTO `answers` VALUES ('37', 'Sąskaitą-faktūrą už Ryanair bilietus galite gauti tik tuo atveju, jei bilietus perkate per pasirinktą bilietų rezervavimo sistemą. Norėdami gauti sąskaitą-faktūrą už aviabilietus, dar prieš perkant bilietus susiekite su mūsų konsultantais  tel. 8 37 407140, 8 600 26763 arba el.paštu uzsakymai@ryanair-skrydziai.lt. PVM sąskaitos faktūros išrašomos ne vėliau kaip iki kito mėnesio 15 dienos po pirkimo.', '2016-05-03 11:11:25', '2016-05-03 11:11:25');
INSERT INTO `answers` VALUES ('38', 'Jei pinigai nuo sąskaitos nuskaičiuoti, vadinasi, bilietas yra nupirktas.\r\nKuomet negaunate laukiamo laiško, visuomet pasitikrinkite savo el.pašto dėžutės SPAM / Šlamštas aplanką. Jei ir čia laiško su bilieto pirkimo patvirtinimu nerandate, gali būti, kad vesdami duomenis padarėte klaidą įrašydami kontaktinį el.pašto adresą. Tokiu atveju, jei pirkote bilietą per Ryanair svetainę, bandykite pakoreguoti el.pašto adresą per „Manage booking“ arba kreipkitės į centrinę Ryanair būstinę. Jei pirkote bilietą per pasirinktą bilietų rezervavimo sistemą, kreipkitės į tos sistemos administratorių.', '2016-05-03 11:11:32', '2016-05-03 11:11:32');
INSERT INTO `answers` VALUES ('39', 'Įsigijus šią paslaugą Ryanair keleiviams priklausys: 20 kg registruoto bagažo gabenimo paslauga, nemokama registracija oro uoste, Premium klasės sėdima vieta (priklausomai nuo laisvų vietų), pirmenybinis įlaipinimas, greitesnė patikra oro uoste*, didesnis lankstumas bilietų keitimui.\r\nŠios paslaugos yra nemokamos tik tuo atveju, jei yra užsakomos bilietų pirkimo metu. „Business Plus“ paslaugos kaina – nuo 59,99 EUR.\r\n* Greitoji patikra vykdoma 25 Europos oro uostuose: Dublino, Belfast (BFS), Londono (LGW, STN, LTN), Birmingamo, Rytų Midlandso, Liverpulio, Mančesterio, Glazgo, Edinburgo, Barselonos (BCN), Malagos, Romos (CIA, FCO), Milano (BGY), Briuselio (CRL, BRU), Atėnų, Budapešto, Stokholmo (NYO), Frankfurto (HHN), Kelno, Hamburgo, Štutgarto, Varšuvos (WMI), Faro, Lisabonos, Porto, Belfast International, Memingenas (Vakarinis Miunchenas) ir Eindhoveno.\r\nJei norite įsigyti šią paslaugą, kreipkitės į bilietų rezervavimo sistemos, kurioje perkate bilietus, administratorių.', '2016-05-03 11:11:41', '2016-05-03 11:11:41');
INSERT INTO `answers` VALUES ('40', 'Skambinant iš Lietuvos: +448712460000/+448712460002 (nauji užsakymai, bendros užklausos, kelionės dokumentai) arba +443301007838 (keitimai po bilietų užsakymo) (skambučio kaina £0.13 už minutę). Skambučiai iš mobiliųjų telefonų ar kitų tinklų gali kainuoti daugiau. Skambučių centro darbo laikas (Didžiosios Britanijos laiku): nuo pirmadienio iki penktadienio 6:00 – 19:00 val., šeštadieniais 09:00 – 18:00 val., sekmadieniais 10.00 – 18.00. Arba turite galimybę kontaktuoti per LiveChat.\r\nJei bilietą pirkote per pasirinktą bilietų rezervavimo sistemą, visais klausimais kreipkitės į sistemos administratorių.', '2016-05-03 11:12:36', '2016-05-03 11:12:36');
INSERT INTO `answers` VALUES ('41', 'Į oro uostą patartina atvykti gerokai anksčiau. Jei keliaujate su registruotu bagažu, jį turėsite užregistruoti bagažo skyriuje. Ryanair bagažo skyrius atidaromas likus 2 val. iki skrydžio ir uždaromas likus 40 min. iki skrydžio. Prie įlaipinimo vartų turėtumėte būti ne vėliau kaip 30 min. iki skrydžio, kadangi vartai uždaromi likus 20 min. iki skrydžio. Pasilikite pakankamai laiko, kadangi gali būti ilgos eilės tiek prie bagažo skyriaus, tiek saugumo patikroje.', '2016-05-03 11:12:43', '2016-05-03 11:12:43');
INSERT INTO `answers` VALUES ('42', 'Nuo 2015.04.01 Ryanair keleiviams jau nereikia mokėti saugumo mokesčio Rygos oro uoste. Daugiau informacijos rasite Rygos oro uosto internetinėje svetainėje http://www.riga-airport.com/en/main/passengers/useful-information/aviation-security-requirements/security-charge', '2016-05-03 11:13:05', '2016-05-03 11:13:05');
INSERT INTO `answers` VALUES ('43', 'Svarbu, kad jūsų asmens dokumentas galiotų jūsų kelionės metu. Jei dokumento galiojimas baigiasi kelionės metu, kreipkitės į vietoje įsikūrusią Lietuvos Respublikos ambasadą arba konsulatą dėl asmens grįžimo pažymėjimo išdavimo.\r\nJei vykstant į jūsų pasirinktą šalį reikalinga viza, tuomet jūsų asmens dokumentas turi galioti mažiausiai 6 mėnesius po jūsų grįžimo.\r\nNuo 2015.03.02 Lietuvos Respublikos piliečiai, esantys užsienyje, gali pasikeisti ar gauti asmens tapatybės kortelę bei pasą Lietuvos Respublikos diplomatinėje atstovybėje ar konsulinėje įstaigoje. http://www.urm.lt/default/lt/struktura-ir-kontaktai-', '2016-05-03 11:13:25', '2016-05-03 11:13:25');
INSERT INTO `answers` VALUES ('44', 'Dažniausiai nuspręsti, keliauti nėštumo metu, ar ne, turi pati nėščioji, atsižvelgdama į savo savijautą, poreikį ir galimybes.\r\nSkrendant su Ryanair, nuo 28 nėštumo savaitės būtina gydytojo pažyma (anglų k., ne senesnė nei 14 d. iki skrydžio), kurioje nurodoma, jog nėštumas yra be komplikacijų, planuojamo gimdymo laikas ir patvirtinama, jog jums leidžiama skristi lėktuvu. Jei moteris, kurios nėštumas yra virš 28 savaičių, nepateikia reikiamos pažymos, Ryanair turi teisę atsisakyti keleivę skraidinti. Pateikus reikiamą pažymą, dvynukų, trynukų ar daugiau vaikų besilaukiančioms moterims leidžiama skristi iki 32 nėštumo savaitės, o besilaukiančioms vieno vaiko – iki 36 nėštumo savaitės. https://www.ryanair.com/doc/conditions/FR-FITTOFLYLETTERS.pdf', '2016-05-03 11:13:43', '2016-05-03 11:13:43');
INSERT INTO `answers` VALUES ('45', 'Gydytojo pažymos dėl kūne esančių nedidelių skeveldrų ar plokštelių nereikia. Tačiau gydytojo pažymos reikia, jeigu keleivis kūne turi didelę metalinę dalį ar implantą, pvz., galūnės protezą ar dirbtinį klubo sąnarį. Rekomenduojama turėti tokią pažymą anglų kalba.\r\nKlausos aparatų saugumo patikros metu nebūtina išsiimti. Reikia tik informuoti oro uosto saugumo patikros darbuotoją. Tolimesnius veiksmus jis pasakys.\r\nPASTABA. Jei turite klausimų, atsakymo paieškokite tarp aukščiau pateiktų.', '2016-05-03 11:13:54', '2016-05-03 11:13:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'Ar į Ryanair bilieto kainą įskaičiuotas bagažas?', 'įskaičiuotas; bagažas; ryanair', '1', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'įskaičiuotas');
INSERT INTO `questions` VALUES ('2', 'Koks yra Ryanair rankinio bagažo svoris vienam keleiviui?', 'keleiviui; rankinio; ryanair', '2', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'keleiviui');
INSERT INTO `questions` VALUES ('3', 'Koks yra Ryanair registruojamo bagažo svoris vienam keleiviui?', 'registruojamo; keleiviui; ryanair', '3', '0000-00-00 00:00:00', '2016-04-25 16:46:24', '3', 'registruojamo');
INSERT INTO `questions` VALUES ('73', 'ar rankinio bagažo dydis turi atitikti visus nurodytus matmenis? ar ratukai skaičiuojami į bendrus bagažo išmatavimus? kas bus, jei rankinis bagažas bus didesnis?', 'skaičiuojami; išmatavimus; nurodytus', '5', '2016-05-03 10:59:29', '2016-05-03 11:14:05', '3', 'skaičiuojami');
INSERT INTO `questions` VALUES ('74', 'ar reikia užregistruoti ryanair bagažą?', 'užregistruoti; bagažą; ryanair', '6', '2016-05-03 11:01:07', '2016-05-03 11:14:05', '3', 'užregistruoti');
INSERT INTO `questions` VALUES ('75', 'ar galiu užsisakyti registruoto bagažo gabenimą po to, kai jau nusipirkau bilietą arba jau užsiregistravau į skrydį? kaip?', 'užsiregistravau; užsisakyti; registruoto', '7', '2016-05-03 11:01:16', '2016-05-03 11:14:05', '3', 'užsiregistravau');
INSERT INTO `questions` VALUES ('76', 'ar tikrai į ryanair lėktuvo saloną priima tik 90 rankinio bagažo vienetų?', 'vienetų; rankinio; lėktuvo', '8', '2016-05-03 11:01:22', '2016-05-03 11:14:05', '3', 'vienetų');
INSERT INTO `questions` VALUES ('77', 'ar galiu užsakyti jungiamuosius skrydžius su aviakompanija ryanair? ar perkelia registruotą bagažą į kitą skrydį?', 'jungiamuosius; aviakompanija; registruotą', '9', '2016-05-03 11:01:28', '2016-05-03 11:14:05', '3', 'jungiamuosius');
INSERT INTO `questions` VALUES ('78', 'kaip gabenti skysčius ryanair rankiniame bagaže?', 'rankiniame; skysčius; ryanair', '10', '2016-05-03 11:02:59', '2016-05-03 11:14:05', '3', 'rankiniame');
INSERT INTO `questions` VALUES ('79', 'ar galiu vežtis vaistus ar maisto papildus rankiniame ar registruotame bagaže?', 'registruotame; rankiniame; papildus', '11', '2016-05-03 11:03:11', '2016-05-03 11:14:05', '3', 'registruotame');
INSERT INTO `questions` VALUES ('80', 'ar galiu neštis fotoaparatą, nešiojamąjį kompiuterį į ryanair lėktuvo saloną?', 'nešiojamąjį; fotoaparatą; kompiuterį', '12', '2016-05-03 11:03:16', '2016-05-03 11:14:05', '3', 'nešiojamąjį');
INSERT INTO `questions` VALUES ('81', 'noriu vežtis kartu su savimi muzikos instrumentą. kaip užsisakyti šią paslaugą perkant lėktuvo bilietą?', 'instrumentą; užsisakyti; paslaugą', '13', '2016-05-03 11:03:21', '2016-05-03 11:14:05', '3', 'instrumentą');
INSERT INTO `questions` VALUES ('82', 'ar galiu ryanair skrydžio metu kartu vežtis gyvūną?', 'skrydžio; gyvūną; vežtis', '14', '2016-05-03 11:03:28', '2016-05-03 11:14:05', '3', 'skrydžio');
INSERT INTO `questions` VALUES ('83', 'kiek cigarečių, alkoholio galima vežtis į angliją, airiją, vokietiją, norvegiją?', 'cigarečių; vokietiją; norvegiją', '15', '2016-05-03 11:03:36', '2016-05-03 11:14:05', '3', 'cigarečių');
INSERT INTO `questions` VALUES ('84', 'ar galima vežtis elektronines cigaretes?', 'elektronines; cigaretes; vežtis', '16', '2016-05-03 11:03:44', '2016-05-03 11:14:05', '3', 'elektronines');
INSERT INTO `questions` VALUES ('85', 'ar ryanair taiko nuolaidas vaikams?', 'nuolaidas; vaikams; ryanair', '17', '2016-05-03 11:05:13', '2016-05-03 11:14:05', '3', 'nuolaidas');
INSERT INTO `questions` VALUES ('86', 'ar ryanair taiko nuolaidas šeimai?', 'nuolaidas; šeimai; ryanair', '18', '2016-05-03 11:05:18', '2016-05-03 11:14:05', '3', 'nuolaidas');
INSERT INTO `questions` VALUES ('87', 'ar gali nepilnamečiai vaikai skristi vieni su ryanair avialinijomis?', 'nepilnamečiai; avialinijomis; skristi', '19', '2016-05-03 11:05:23', '2016-05-03 11:14:06', '3', 'nepilnamečiai');
INSERT INTO `questions` VALUES ('88', 'kokių dokumentų reikia, jei keliauja vaikas?', 'dokumentų; keliauja; vaikas', '20', '2016-05-03 11:05:29', '2016-05-03 11:14:06', '3', 'dokumentų');
INSERT INTO `questions` VALUES ('89', 'turiu ryanair lėktuvo bilietą ir vėliau nutariau, kad kartu skris ir vaikas. kaip jam nupirkti bilietą?', 'nutariau; nupirkti; lėktuvo', '21', '2016-05-03 11:05:33', '2016-05-03 11:14:06', '3', 'nutariau');
INSERT INTO `questions` VALUES ('90', 'ar galiu keliauti su kūdikiu?', 'kūdikiu; keliauti; galiu', '22', '2016-05-03 11:05:38', '2016-05-03 11:14:06', '3', 'kūdikiu');
INSERT INTO `questions` VALUES ('91', 'ar kūdikiui skiriama atskira vieta?', 'kūdikiui; skiriama; atskira', '23', '2016-05-03 11:05:43', '2016-05-03 11:14:06', '3', 'kūdikiui');
INSERT INTO `questions` VALUES ('92', 'koks bagažas priklauso kūdikiui, vaikui, skrendant su ryanair avialinijomis? ar galima vežtis vaiko vežimėlį?', 'avialinijomis; vežimėlį; skrendant', '24', '2016-05-03 11:05:51', '2016-05-03 11:14:06', '3', 'avialinijomis');
INSERT INTO `questions` VALUES ('93', 'ar galima neštis automobilinę kėdutę į lėktuvo saloną?', 'automobilinę; lėktuvo; kėdutę', '25', '2016-05-03 11:05:57', '2016-05-03 11:14:06', '3', 'automobilinę');
INSERT INTO `questions` VALUES ('94', 'ar reikia tėvų sutikimo, jei vaikas iki 18 metų keliauja vienas, su lydinčiu asmeniu ar su vienu iš tėvų?', 'lydinčiu; sutikimo; keliauja', '26', '2016-05-03 11:06:03', '2016-05-03 11:14:06', '3', 'lydinčiu');
INSERT INTO `questions` VALUES ('95', 'kaip registruotis į skrydį su asmens grįžimo pažymėjimu?', 'registruotis; pažymėjimu; grįžimo', '27', '2016-05-03 11:08:19', '2016-05-03 11:14:06', '3', 'registruotis');
INSERT INTO `questions` VALUES ('96', 'padariau klaidą registruojantis į skrydį (pasirinkau neteisingą pilietybę, įvedžiau ne tą numerį ir pan.). ką daryti?', 'registruojantis; neteisingą; įvedžiau', '28', '2016-05-03 11:08:24', '2016-05-03 11:14:06', '3', 'registruojantis');
INSERT INTO `questions` VALUES ('97', 'kaip paskirstomos sėdimos vietos ryanair skrydyje? ar sėdėsime kartu, jei nerezervuojame vietų už papildomą mokestį?', 'nerezervuojame; paskirstomos; sėdėsime', '29', '2016-05-03 11:08:29', '2016-05-03 11:14:06', '3', 'nerezervuojame');
INSERT INTO `questions` VALUES ('98', 'ką daryti, jei pamečiau įlaipinimo kortelę („boarding pass“)?', 'įlaipinimo; pamečiau; kortelę', '30', '2016-05-03 11:09:13', '2016-05-03 11:14:06', '3', 'įlaipinimo');
INSERT INTO `questions` VALUES ('99', 'ar galima keisti skrydžio datą, laiką, maršrutą, pavardę ir vardą? kiek tai kainuoja?', 'maršrutą; skrydžio; pavardę', '31', '2016-05-03 11:09:19', '2016-05-03 11:14:06', '3', 'maršrutą');
INSERT INTO `questions` VALUES ('100', 'ką daryti, jei perkant ryanair  lėktuvo bilietą varde ar pavardėje padaryta klaida, neįrašytas antras vardas ar pavardė?', 'neįrašytas; pavardėje; pavardė', '32', '2016-05-03 11:09:24', '2016-05-03 11:14:06', '3', 'neįrašytas');
INSERT INTO `questions` VALUES ('101', 'ar perkant bilietus vardus ir pavardes reikia rašyti su lietuviškais raidžių simboliais?', 'lietuviškais; simboliais; raidžių', '33', '2016-05-03 11:09:29', '2016-05-03 11:14:06', '3', 'lietuviškais');
INSERT INTO `questions` VALUES ('102', 'ką daryti, jei nusipirkau lėktuvo bilietus su viena pavarde, o dar iki skrydžio ji pasikeitė (ištekėjau arba susigrąžinau mergautinę)? ką daryti, jei į vieną skrydį registravausi su senesniais dokumentais, o prieš skrydį atgal jie pasikeitė ir negaliu pak', 'susigrąžinau; registravausi; mergautinę', '34', '2016-05-03 11:09:34', '2016-05-03 11:14:06', '3', 'susigrąžinau');
INSERT INTO `questions` VALUES ('103', 'ar galima keisti skrydį, jei registracija jau padaryta?', 'registracija; padaryta; skrydį', '35', '2016-05-03 11:09:40', '2016-05-03 11:14:06', '3', 'registracija');
INSERT INTO `questions` VALUES ('104', 'nusipirkau ryanair lėktuvo bilietą ir negaliu skristi. ar galiu susigrąžinti pinigus?', 'susigrąžinti; nusipirkau; lėktuvo', '36', '2016-05-03 11:09:45', '2016-05-03 11:14:06', '3', 'susigrąžinti');
INSERT INTO `questions` VALUES ('105', 'ar galima gauti sąskaitą-faktūrą už ryanair aviabilietus?', 'aviabilietus; sąskaitą; faktūrą', '37', '2016-05-03 11:09:49', '2016-05-03 11:14:06', '3', 'aviabilietus');
INSERT INTO `questions` VALUES ('106', 'pirkau bilietą, pinigai iš sąskaitos nuskaičiuoti, bet bilieto į el.paštą negavau. ką daryti?', 'nuskaičiuoti; sąskaitos; bilietą', '38', '2016-05-03 11:09:54', '2016-05-03 11:14:06', '3', 'nuskaičiuoti');
INSERT INTO `questions` VALUES ('107', 'kas yra „business plus“ paslauga?', 'paslauga; business; plus', '39', '2016-05-03 11:09:58', '2016-05-03 11:14:06', '3', 'paslauga');
INSERT INTO `questions` VALUES ('108', 'koks ryanair telefono numeris, kontaktai?', 'kontaktai; telefono; ryanair', '40', '2016-05-03 11:12:02', '2016-05-03 11:14:06', '3', 'kontaktai');
INSERT INTO `questions` VALUES ('109', 'kada atvykti į oro uostą?', 'atvykti; uostą; kada', '41', '2016-05-03 11:12:05', '2016-05-03 11:14:06', '3', 'atvykti');
INSERT INTO `questions` VALUES ('110', 'kaip galiu sumokėti saugumo mokestį rygos oro uoste?', 'sumokėti; mokestį; saugumo', '42', '2016-05-03 11:12:10', '2016-05-03 11:14:06', '3', 'sumokėti');
INSERT INTO `questions` VALUES ('111', 'ką daryti, jei mano asmens dokumento galiojimas greitai baigsis?', 'galiojimas; dokumento; greitai', '43', '2016-05-03 11:12:14', '2016-05-03 11:14:06', '3', 'galiojimas');
INSERT INTO `questions` VALUES ('112', 'ar gali nėščia skristi su ryanair? iki kelinto mėnesio? kokios pažymos reikalingos?', 'reikalingos; nėščia; pažymos', '44', '2016-05-03 11:12:19', '2016-05-03 11:14:06', '3', 'reikalingos');
INSERT INTO `questions` VALUES ('113', 'ar praeisiu pro patikrą oro uoste, jei po operacijos ar kt. kūne turiu metalinių dalių? ar reikia pažymos?', 'operacijos; metalinių; praeisiu', '45', '2016-05-03 11:12:23', '2016-05-03 11:14:06', '3', 'operacijos');
INSERT INTO `questions` VALUES ('114', 'kas tai pica?', '0', '0', '2016-05-03 11:16:19', '2016-05-03 11:16:19', '0', '0');

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
