-- MySQL dump 10.13  Distrib 8.0.12, for osx10.13 (x86_64)
--
-- Host: localhost    Database: openinternet
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filings`
--

DROP TABLE IF EXISTS `filings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filings` (
  `name` varchar(300) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filings`
--

LOCK TABLES `filings` WRITE;
/*!40000 ALTER TABLE `filings` DISABLE KEYS */;
INSERT INTO `filings` VALUES ('Justin Tardio','...Preserve Net Neutrality and Title 2...','https://www.fcc.gov/ecfs/filing/1115051176643',121),('Travis','...The definition of neutraility: the state of not...','https://www.fcc.gov/ecfs/filing/1114252729177',122),('Alex Clark','...Title 2 should not go away. Any changes to net...','https://www.fcc.gov/ecfs/filing/111402186303',123),('Carson McGowen','...Keep title 2 net neutrality...','https://www.fcc.gov/ecfs/filing/111025307290',124),('Diana Riordan','...I cannot express how imperative it is that this...','https://www.fcc.gov/ecfs/filing/11132848723597',125),('Fred\nNet Neutrality.docx  \n1','','https://www.fcc.gov/ecfs/filing/111050037595',126),('Jackson Davis','...To whom it may concern, I believe net neutrality...','https://www.fcc.gov/ecfs/filing/1110056916536',127),('joey singfield','...I think net neutrality is vital to the improvement...','https://www.fcc.gov/ecfs/filing/11092368818828',128),('Troy Turner','...Without this act the internet would be subject to...','https://www.fcc.gov/ecfs/filing/11090447228680',129),('Tyler Mack','...I support Strong Net Neutrality. Keep the Internet...','https://www.fcc.gov/ecfs/filing/110846609130',130),('KC Ratekin','...I support strong net neutrality backed by title 10...','https://www.fcc.gov/ecfs/filing/1107683629536',131),('Elijah Olachea','...I strongly support Net Neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/1106506222567',132),('John Quinn','...Please re-establish net neutrality so that we do...','https://www.fcc.gov/ecfs/filing/11062886825402',133),('Joshua Kowis','...Please do not make any changes to the FCC net...','https://www.fcc.gov/ecfs/filing/1106688104051',134),('Alique Derderian','...I strongly support net neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/11060470705874',135),('Sidne Allinger','...\"I strongly support net neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/1105937929604',136),('William Walker','...I specifically support strong net neutrality...','https://www.fcc.gov/ecfs/filing/1105618418396',137),('Christie Shinn','...I strongly support net neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/11052495307725',138),('S. Cook','...I strongly support net neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/11051653400102',139),('William C. Murphy','...I support Title 2 oversight of ISPs. I also...','https://www.fcc.gov/ecfs/filing/110497488281',140),('Fritz Amtsberg, Olinda Amtsberg','...\"I strongly support net neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/1104761325517',141),('Wendy E. Cooper','...I strongly support net neutrality backed by Title...','https://www.fcc.gov/ecfs/filing/110466335750',142),('Bradley Roth','...I am in strong support of net neutrality and the...','https://www.fcc.gov/ecfs/filing/110460766605',143),('Taylor Sartoris','...I support strong net neutrality backed my Title II...','https://www.fcc.gov/ecfs/filing/1101098888912',144),('David','...We support strong Net Neutrality with Title 2...','https://www.fcc.gov/ecfs/filing/11010337026845',145),('Dante Ray','...This is a horrible replacement for the repealed...','https://www.fcc.gov/ecfs/filing/103106189112',146),('Lisa Kaempf','...Support Net Neutrality and Title II...','https://www.fcc.gov/ecfs/filing/103094430288',147),('Dane Swanson','...Net Neutrality should remain untouched...','https://www.fcc.gov/ecfs/filing/1030838201001',148),('joseph mah','...Dear Mr. Pai, Please restore net neutrality and...','https://www.fcc.gov/ecfs/filing/103075489398',149),('Erica Lavik','...I’m fcc’ing myself, thx John...','https://www.fcc.gov/ecfs/filing/103063709739',150),('Jenna','...Support net neutrality and title 2...','https://www.fcc.gov/ecfs/filing/1030616613943',151),('Chloe Tanega','...Support Net Neutrality and support Title 2...','https://www.fcc.gov/ecfs/filing/103057320481',152),('Michelle','...Preserve net neutrality and title 2...','https://www.fcc.gov/ecfs/filing/1030281245964',153),('Jeffrey Braccia','...Net neutrality should still be a thing you made a...','https://www.fcc.gov/ecfs/filing/10302659322331',154),('Allie Breiling','...Support Net Neutrality and Title II...','https://www.fcc.gov/ecfs/filing/10302408810864',155),('Reghan Pukis','...Support strong net neutrality under title ii...','https://www.fcc.gov/ecfs/filing/1030184590845',156),('Josh Mcswiggan','...I support NET Neutrality under the Title II of the...','https://www.fcc.gov/ecfs/filing/103017336545',157),('Emily Critchley','...I support net neutrality under Title II of the of...','https://www.fcc.gov/ecfs/filing/1030151016097',158),('Jillian Giorgio','...I support Net Neutrality and strong regulation...','https://www.fcc.gov/ecfs/filing/1030100153644',159),('Erica Lavik','...I’m fcc’ing myself, thx John...','https://www.fcc.gov/ecfs/filing/10300564400862',160),('Monica Cable','...I am a strong supporter of preserving Net...','https://www.fcc.gov/ecfs/filing/1029154508110',161),('Seth Beltran','...I support strong Net Neutrality backed by Title II...','https://www.fcc.gov/ecfs/filing/10290635412635',162),('Dorothy','...I support strong net neutrality backed by title II...','https://www.fcc.gov/ecfs/filing/10280266111499',163),('Strong, Net, Nuetrality','...I am in support strong net nuetrality backed by...','https://www.fcc.gov/ecfs/filing/10272047921157',164),('Reid Baugh','...I support strong net neutrality backed by title 2...','https://www.fcc.gov/ecfs/filing/102668805740',165),('Ms. Marie Delahoussaye-Diaz','...I am commenting to oppose the proposed change to...','https://www.fcc.gov/ecfs/filing/1026690117242',166),('Vaughn Forrester','...I want Net Neutrality to remain under Title II...','https://www.fcc.gov/ecfs/filing/1029298228733',167),('net, neutrality, title2','...I support net neutrality and support title 2. Give...','https://www.fcc.gov/ecfs/filing/1024012853671',168),('Brian Ruggles','...Please preserve strong Net Neutrality backed by...','https://www.fcc.gov/ecfs/filing/10242209206237',169),('13','...epic epic epic epic epic epic epic...','https://www.fcc.gov/ecfs/filing/10241638322434',170),('Branden Stockton','...Keep net neutrality...','https://www.fcc.gov/ecfs/filing/1024932002766',171),('Amanda Pesklevy','...I support a strong net neutrality and the title 2...','https://www.fcc.gov/ecfs/filing/102451212754',172),('Carter Josef','...Net neutrality is great and there is no possible...','https://www.fcc.gov/ecfs/filing/10231799214465',173),('Cheyenne Ubiera','...Please support any amendment that would strike out...','https://www.fcc.gov/ecfs/filing/1022712926516',174),('Steven Horneman','...The internet needs Net Neutrality. Do not remove...','https://www.fcc.gov/ecfs/filing/1022290953333',175),('Joseph Tejan','...america needs net neutrality and title 2. it is...','https://www.fcc.gov/ecfs/filing/1022172927170',176),('Celina Reppond','...I strongly support title II and its regulations on...','https://www.fcc.gov/ecfs/filing/1022024877056',177),('Glen McIntosh','...Dont destroy net neutrality, keep ISPs under title...','https://www.fcc.gov/ecfs/filing/10211439122468',178),('jo a walters','...Do not roll back net neutrality...','https://www.fcc.gov/ecfs/filing/10202988904548',179),('Sean Harry','...Just wanted to thank the FCC for completely...','https://www.fcc.gov/ecfs/filing/10200332730957',180),('Sara Rose','...I support Net Neutrality under Title II and anyone...','https://www.fcc.gov/ecfs/filing/1019352206250',181),('Laurence Brett Glass d/b/a LARIAT\n2018-10-17 Leamer.pdf  \n2','','https://www.fcc.gov/ecfs/filing/1019819109066',182),('Olivia Oravec','...Please just keep net neutrality under the title II...','https://www.fcc.gov/ecfs/filing/1019072032201',183),('Alexander Fisher','...I support strong net neutrality regulation backed...','https://www.fcc.gov/ecfs/filing/1018794023144',184),('umm','...Dont take away our net neutrality...','https://www.fcc.gov/ecfs/filing/101838838056',185),('Lara Agnew','...I support strong net neutrality and will vote for...','https://www.fcc.gov/ecfs/filing/1018184742310',186),('Michael Romero','...As a daily active user of the internet, please...','https://www.fcc.gov/ecfs/filing/1018003364881',187),('Meggin Sullivan','...Dear FCC Chairman Ajit Pai, I support the...','https://www.fcc.gov/ecfs/filing/1018184494249',188),('Isabel McGaugh','...ISPs should continue to be classified under title...','https://www.fcc.gov/ecfs/filing/1018512622479',189),('Daniel Shin','...To the FCC: I strongly support Net Neutrality and...','https://www.fcc.gov/ecfs/filing/10172279707945',190),('David H. Aretsky','...I am not a bot I am a real American! Just so there...','https://www.fcc.gov/ecfs/filing/10173055525766',191),('Marc Freeman-Sheehy','...Why have you done this Ajit. I hate you and...','https://www.fcc.gov/ecfs/filing/1017179841576',192),('Laurence Brett Glass, d/b/a LARIAT\n2018-10-16 McGrath.pdf  \n2','','https://www.fcc.gov/ecfs/filing/10172325507884',193),('Ruud van Loon','...I kindly request the FCC to preserve net...','https://www.fcc.gov/ecfs/filing/1016117675086',194),('Jeffrey M. Dreyer','...Please preserve net neutrality and keep internet...','https://www.fcc.gov/ecfs/filing/1016215867724',195),('Whit Dent','...I demand that you strengthen protection for &...','https://www.fcc.gov/ecfs/filing/1016038510142',196),('Zachay Robert Kellogg','...I am strongly in favor of net neutrality and title...','https://www.fcc.gov/ecfs/filing/1015473402036',197),('Rebecca Taylor','...i support strong regulation under title II...','https://www.fcc.gov/ecfs/filing/10152620423019',198),('Finn','...The FCC needs to keep net neutrality so we don\'t...','https://www.fcc.gov/ecfs/filing/1014698919490',199),('Ryan Hughes','...I support strong net neutrality backed by title 2...','https://www.fcc.gov/ecfs/filing/101136204364',200),('Jon Ashby','...I support strong net neutrality through Title 2...','https://www.fcc.gov/ecfs/filing/1011970100461',201),('Patrick MacCubbin','...As the internet has become a part of the...','https://www.fcc.gov/ecfs/filing/1011237278174',202),('Daltan Sweet','...please preserve Net Neutrality and Title II to...','https://www.fcc.gov/ecfs/filing/101196456654',203),('Laurence Brett Glass, d/b/a LARIAT\n2018-10-10 Adams.pdf  \n2','','https://www.fcc.gov/ecfs/filing/101192440470',204),('Nathaniel Watson, Mitchell Green, Sabastian Dela Vega','...I am in support of stronger net neutrality, backed...','https://www.fcc.gov/ecfs/filing/101194551972',205),('Jesus of Nazareth','...What am I doughing here? I doughnut belong here...','https://www.fcc.gov/ecfs/filing/101080856117',206),('Sarah Dirksen','...I want the US Congress to ensure net neutrality...','https://www.fcc.gov/ecfs/filing/1010373827770',207),('Ericsson\nChairman Pai ex parte October 3 2018 FINAL.pdf  \n2','','https://www.fcc.gov/ecfs/filing/1009541523718',208),('Christopher Bowlin','...I support strong net neutrality backed by title II...','https://www.fcc.gov/ecfs/filing/100908276855',209),('Tess Fewell','...I support strong net neutrality backed by title 2...','https://www.fcc.gov/ecfs/filing/10091674505276',210),('Jacky Li','...I support STRONG NET NEUTRALITY backed by TITLE...','https://www.fcc.gov/ecfs/filing/100891984571',211),('Mike Haukeness','...Obama’s Title II order has diminished broadband...','https://www.fcc.gov/ecfs/filing/1006061247547',212),('Hendrik','...Under the condition of preserving the constitution...','https://www.fcc.gov/ecfs/filing/1005220530267',213),('Christian Thompson','...I support the repeal of net neutrality laws. I...','https://www.fcc.gov/ecfs/filing/1003165036011',214),('Linda Buckardt','...Obama’s Title II order has diminished broadband...','https://www.fcc.gov/ecfs/filing/1003179228796',215),('james','...The FCC Should reinstate Net Neutrality to its...','https://www.fcc.gov/ecfs/filing/100370452160',216),('Jay Kingsly\nPlease support.docx  \n1','','https://www.fcc.gov/ecfs/filing/1002804722055',217),('Eric Hirschberg','...I support strong net neutrality backed by title 2...','https://www.fcc.gov/ecfs/filing/100209883358',218),('Sarah Perez','...I completely support net neutrality...','https://www.fcc.gov/ecfs/filing/1002899516973',219),('Gavin Moore','...I support strong Net Neutrality backed by title 2...','https://www.fcc.gov/ecfs/filing/100255979396',220);
/*!40000 ALTER TABLE `filings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-19 11:30:15
