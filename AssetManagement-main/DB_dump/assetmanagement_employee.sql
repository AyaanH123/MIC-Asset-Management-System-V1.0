-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assetmanagement
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` varchar(15) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `municipality_id` smallint NOT NULL,
  `last_mod_by` varchar(45) NOT NULL,
  `last_mod_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_municipality_idx` (`municipality_id`),
  KEY `fk_status_idx` (`status`),
  CONSTRAINT `fk_municipality` FOREIGN KEY (`municipality_id`) REFERENCES `municipality` (`municipality_id`),
  CONSTRAINT `fk_status` FOREIGN KEY (`status`) REFERENCES `employee_status` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Stores employee details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('00-2111716','Dilly','Rodell','a','A','Librarian','drodell13@house.gov','591-963-1111',6,'dba','2021-06-23 15:59:26',NULL),('00-5196710','Purcell','Ghiraldi','a','A','Food Chemist','pghiraldi2c@ucoz.com','472-167-5715',6,'dba','2021-06-23 15:59:26',NULL),('00-7113322','Milt','Cristoferi','a','A','Software Test Engineer III','mcristoferi2q@ycombinator.com','989-955-0651',6,'dba','2021-06-23 15:59:26',NULL),('03-5747014','Stanislaus','Phelp','a','A','Dental Hygienist','sphelp6@xinhuanet.com','536-728-4639',6,'dba','2021-06-23 15:59:26',NULL),('03-7782452','Myrlene','Yakutin','a','A','Structural Analysis Engineer','myakutin14@ft.com','620-608-5787',6,'dba','2021-06-23 15:59:26',NULL),('04-4388136','Brandy','Swinden','a','A','Nurse','bswinden2b@blogger.com','919-256-5716',6,'dba','2021-06-23 15:59:26',NULL),('04-5211578','Chloris','Jowsey','a','A','Legal Assistant','cjowsey2d@addthis.com','244-568-8588',6,'dba','2021-06-23 15:59:26',NULL),('05-5729985','Lydon','Spurrett','a','A','Project Manager','lspurrett1k@sphinn.com','451-243-1945',2,'dba','2021-06-23 15:59:26',NULL),('07-8792943','Conway','Mehmet','a','A','VP Sales','cmehmet10@mlb.com','462-966-6170',6,'dba','2021-06-23 15:59:26',NULL),('09-5790909','Rolfe','Mingo','a','A','Environmental Specialist','rmingoy@redcross.org','309-720-8950',6,'dba','2021-06-23 15:59:26',NULL),('09-7814678','Wilt','Dunton','a','A','Web Developer I','wdunton15@apple.com','180-532-4860',6,'dba','2021-06-23 15:59:26',NULL),('09-8549865','Sherlock','Garcia','a','A','Project Manager','sgarcia1d@intel.com','555-277-9144',6,'dba','2021-06-23 15:59:26',NULL),('10-0538957','Olenka','Faulks','a','A','Analyst Programmer','ofaulks2m@dailymotion.com','373-880-8150',6,'dba','2021-06-23 15:59:26',NULL),('10-9453266','Thedric','Carden','a','A','Occupational Therapist','tcarden1c@taobao.com','642-304-9128',6,'dba','2021-06-23 15:59:26',NULL),('16-3483810','Dallas','Dyde','a','A','Junior Executive','ddyder@drupal.org','990-858-1208',6,'dba','2021-06-23 15:59:26',NULL),('16-7005535','Darell','Deas','a','A','Software Test Engineer II','ddeas9@tamu.edu','665-147-8686',6,'dba','2021-06-23 15:59:26',NULL),('18-4748128','Marylin','Garric','a','A','Staff Accountant III','mgarric19@sphinn.com','523-689-3098',6,'dba','2021-06-23 15:59:26',NULL),('18-5479095','Amerigo','Fussey','a','A','Community Outreach Specialist','afussey1g@cmu.edu','969-159-5555',6,'dba','2021-06-23 15:59:26',NULL),('22-3900335','Licha','Godsafe','a','A','Social Worker','lgodsafe26@over-blog.com','622-237-0279',6,'dba','2021-06-23 15:59:26',NULL),('22-9904719','Merrill','Strass','a','A','Pharmacist','mstrasss@blogs.com','793-952-2112',6,'dba','2021-06-23 15:59:26',NULL),('23-7323562','Tiff','Kolodziejski','a','A','Accountant I','tkolodziejskio@nih.gov','801-785-4553',6,'dba','2021-06-23 15:59:26',NULL),('23-7359976','Kirsten','O\' Molan','a','A','Biostatistician IV','komolan23@istockphoto.com','829-227-4071',6,'dba','2021-06-23 15:59:26',NULL),('24-4081737','Cullin','Addy','a','A','Health Coach IV','caddy20@economist.com','336-988-1913',6,'dba','2021-06-23 15:59:26',NULL),('24-8346967','Jackquelin','Fitchell','a','A','VP Marketing','jfitchell2n@deviantart.com','382-407-5902',6,'dba','2021-06-23 15:59:26',NULL),('27-3399469','Teddi','Misk','a','A','Data Coordiator','tmisk3@cnbc.com','601-977-5091',6,'dba','2021-06-23 15:59:26',NULL),('31-2643011','Marcello','Witcher','a','A','Senior Cost Accountant','mwitcher1x@sfgate.com','737-733-6643',6,'dba','2021-06-23 15:59:26',NULL),('31-7644792','Hilton','Beauchop','a','A','Design Engineer','hbeauchop1m@cbsnews.com','941-539-0996',1,'dba','2021-06-23 15:59:26',NULL),('31-9894765','Raimundo','Corkhill','a','A','Research Associate','rcorkhill18@businessinsider.com','905-885-9807',6,'dba','2021-06-23 15:59:26',NULL),('32-6784498','Nataniel','Keyzor','a','A','Mechanical Systems Engineer','nkeyzor17@miibeian.gov.cn','329-402-5197',6,'dba','2021-06-23 15:59:26',NULL),('33-7345138','Mel','Alexandrescu','a','A','Paralegal','malexandrescu1z@hatena.ne.jp','127-710-0388',6,'dba','2021-06-23 15:59:26',NULL),('34-3727883','Bobbie','Cosgry','a','A','Actuary','bcosgry1s@bluehost.com','326-992-0757',6,'dba','2021-06-23 15:59:26',NULL),('34-6420966','Alejandro','Dannell','a','A','Paralegal','adannellp@toplist.cz','623-871-1389',6,'dba','2021-06-23 15:59:26',NULL),('34-6620512','Denni','Kingsnorth','a','A','Safety Technician II','dkingsnorthd@icq.com','221-661-9407',6,'dba','2021-06-23 15:59:26',NULL),('34-9435272','Gerianne','Hairsnape','a','A','Payment Adjustment Coordinator','ghairsnape2r@ameblo.jp','919-255-1291',6,'dba','2021-06-23 15:59:26',NULL),('35-6076409','Helaina','Pulham','a','A','Director of Sales','hpulham2h@ehow.com','869-874-1904',6,'dba','2021-06-23 15:59:26',NULL),('36-8989687','Misha','Gartside','a','A','Senior Financial Analyst','mgartside2g@bloglovin.com','114-877-3296',6,'dba','2021-06-23 15:59:26',NULL),('39-1597104','Anton','Lambdon','a','A','Accounting Assistant I','alambdonq@dropbox.com','546-963-2858',6,'dba','2021-06-23 15:59:26',NULL),('39-8268415','Gianina','Pulfer','a','A','Recruiting Manager','gpulfer2f@dailymail.co.uk','203-673-7127',6,'dba','2021-06-23 15:59:26',NULL),('39-9845478','Gunilla','Wagen','a','A','Budget/Accounting Analyst IV','gwagenj@mit.edu','478-364-1399',6,'dba','2021-06-23 15:59:26',NULL),('40-2920960','Kimbra','Phonix','a','A','Community Outreach Specialist','kphonix22@who.int','684-486-4167',6,'dba','2021-06-23 15:59:26',NULL),('40-6067269','Connor','Josse','a','A','Payment Adjustment Coordinator','cjosseg@wikispaces.com','785-822-3007',6,'dba','2021-06-23 15:59:26',NULL),('40-6391763','Sibel','Sayle','a','A','Sales Representative','ssayle25@xing.com','271-658-8763',6,'dba','2021-06-23 15:59:26',NULL),('41-2868121','Joli','Norrie','a','A','Analog Circuit Design manager','jnorrie1q@walmart.com','345-633-7928',2,'dba','2021-06-23 15:59:26',NULL),('44-6722346','Estella','Riatt','a','A','Software Engineer II','eriatth@whitehouse.gov','830-546-9725',6,'dba','2021-06-23 15:59:26',NULL),('45-2798116','Rheba','Renvoys','a','A','Actuary','rrenvoysx@ask.com','669-428-4015',6,'dba','2021-06-23 15:59:26',NULL),('47-1743025','Viv','Rooney','a','A','Software Engineer III','vrooney2e@stanford.edu','340-406-5122',6,'dba','2021-06-23 15:59:26',NULL),('48-1934567','Jacinda','Zieme','a','A','Nurse','jziemea@oaic.gov.au','779-541-9280',6,'dba','2021-06-23 15:59:26',NULL),('50-3284619','Nedi','Shaughnessy','a','A','Research Assistant I','nshaughnessy1t@answers.com','371-626-9634',6,'dba','2021-06-23 15:59:26',NULL),('51-0781034','Carley','Jerche','a','A','Community Outreach Specialist','cjerche21@merriam-webster.com','427-474-6958',6,'dba','2021-06-23 15:59:26',NULL),('51-5719514','Web','Stuehmeier','a','A','Programmer I','wstuehmeier1f@blogspot.com','512-673-5885',6,'dba','2021-06-23 15:59:26',NULL),('52-0397290','Caroljean','Finden','a','A','Help Desk Operator','cfinden2l@com.com','686-582-2456',6,'dba','2021-06-23 15:59:26',NULL),('52-3358701','Andras','Flew','a','A','Teacher','aflew2p@aboutads.info','788-663-8393',6,'dba','2021-06-23 15:59:26',NULL),('53-6921102','Paolina','Dimitriou','a','A','Project Manager','pdimitrioum@bluehost.com','271-837-9309',6,'dba','2021-06-23 15:59:26',NULL),('53-8649452','Barnett','Coupman','a','A','Assistant Media Planner','bcoupman1@squidoo.com','501-455-5110',6,'dba','2021-06-23 15:59:26',NULL),('54-0272741','Annmaria','Hundell','a','A','Structural Engineer','ahundelle@amazon.de','614-828-9693',6,'dba','2021-06-23 15:59:26',NULL),('54-4947410','Orel','Parvin','a','A','Community Outreach Specialist','oparvin2a@google.cn','885-942-0019',6,'dba','2021-06-23 15:59:26',NULL),('55-3150193','Herschel','Ballance','a','A','Programmer Analyst IV','hballance1r@tripod.com','386-786-2282',3,'dba','2021-06-23 15:59:26',NULL),('56-8369044','Dorthea','Dunridge','a','A','Geologist IV','ddunridge1w@census.gov','504-964-4645',6,'dba','2021-06-23 15:59:26',NULL),('57-4533314','Hercules','Bettington','a','A','Product Engineer','hbettington29@exblog.jp','651-411-0326',6,'dba','2021-06-23 15:59:26',NULL),('57-4561487','Gunner','Firmage','a','A','Sales Representative','gfirmage16@bravesites.com','849-332-9877',6,'dba','2021-06-23 15:59:26',NULL),('57-5856081','Way','Winslett','a','A','Nurse','wwinslett4@cbsnews.com','512-633-4610',6,'dba','2021-06-23 15:59:26',NULL),('58-8540227','Sally','Magrane','a','A','Teacher','smagrane1l@i2i.jp','427-547-5789',3,'dba','2021-06-23 15:59:26',NULL),('59-5173388','Wendel','Matveyev','a','A','Assistant Manager','wmatveyevz@usgs.gov','654-196-9388',6,'dba','2021-06-23 15:59:26',NULL),('60-0660491','Lanna','Sherborn','a','A','Speech Pathologist','lsherborn1v@theatlantic.com','464-874-2983',6,'dba','2021-06-23 15:59:26',NULL),('60-3017827','Reggi','Osichev','a','A','Media Manager I','rosichev2o@biglobe.ne.jp','462-252-2916',6,'dba','2021-06-23 15:59:26',NULL),('61-2687408','Orel','Sent','a','A','Web Developer II','osent8@t-online.de','917-932-4100',6,'dba','2021-06-23 15:59:26',NULL),('61-2861065','Alexandr','Kirckman','a','A','Senior Financial Analyst','akirckman1p@theatlantic.com','425-437-2724',1,'dba','2021-06-23 15:59:26',NULL),('62-3998413','Elmore','Dimmer','a','A','Assistant Media Planner','edimmer1a@bbc.co.uk','650-152-1494',6,'dba','2021-06-23 15:59:26',NULL),('62-4084838','Fionnula','Bunny','a','A','Accountant II','fbunny1u@sfgate.com','242-523-5571',6,'dba','2021-06-23 15:59:26',NULL),('63-0381563','Nathanial','Pudsey','a','A','Information Systems Manager','npudseyk@ifeng.com','395-982-4922',6,'dba','2021-06-23 15:59:26',NULL),('64-5578727','Alyson','Priter','a','A','VP Product Management','apriteru@army.mil','604-352-1141',6,'dba','2021-06-23 15:59:26',NULL),('66-2898974','Jamie','McTeague','a','A','Environmental Specialist','jmcteagueb@nyu.edu','274-780-9315',6,'dba','2021-06-23 15:59:26',NULL),('69-3251436','Arvie','Raywood','a','A','Database Administrator I','araywoodi@zdnet.com','395-932-4122',6,'dba','2021-06-23 15:59:26',NULL),('71-6832094','Sandye','Holehouse','a','A','Community Outreach Specialist','sholehouse11@nydailynews.com','108-975-6969',6,'dba','2021-06-23 15:59:26',NULL),('71-9634879','Rosemaria','Tenant','a','A','Senior Developer','rtenant1n@lycos.com','499-596-2889',2,'dba','2021-06-23 15:59:26',NULL),('72-0590118','Vanya','Gyngell','a','A','Web Developer IV','vgyngellc@ask.com','966-584-4361',6,'dba','2021-06-23 15:59:26',NULL),('73-2152396','Gwenore','Skeldon','a','A','Physical Therapy Assistant','gskeldon2i@buzzfeed.com','611-794-9593',6,'dba','2021-06-23 15:59:26',NULL),('74-3284839','Sarette','Bradneck','a','A','General Manager','sbradneckf@mysql.com','742-509-4134',6,'dba','2021-06-23 15:59:26',NULL),('75-7183785','Killie','Wormleighton','a','A','Design Engineer','kwormleighton27@bbc.co.uk','639-520-2312',6,'dba','2021-06-23 15:59:26',NULL),('78-2233210','Babbette','Halpeine','a','A','Junior Executive','bhalpeine1h@csmonitor.com','613-676-6989',6,'dba','2021-06-23 15:59:26',NULL),('79-6489856','Linea','Matuszinski','a','A','Information Systems Manager','lmatuszinski2@squidoo.com','719-202-1725',6,'dba','2021-06-23 15:59:26',NULL),('79-7058475','Melinda','Boller','a','A','Programmer III','mboller0@foxnews.com','275-890-0763',6,'dba','2021-06-23 15:59:26',NULL),('79-7738607','Donielle','Evill','a','A','Social Worker','devill12@nytimes.com','850-836-0507',6,'dba','2021-06-23 15:59:26',NULL),('79-8759206','Alfie','McClaren','a','A','Nurse','amcclaren1e@epa.gov','512-630-9516',6,'dba','2021-06-23 15:59:26',NULL),('82-1995169','Sharlene','Crottagh','a','A','Web Developer IV','scrottagh28@timesonline.co.uk','705-499-7670',6,'dba','2021-06-23 15:59:26',NULL),('82-6855576','Vannie','Ornelas','a','A','Quality Engineer','vornelas1o@prweb.com','955-356-4873',3,'dba','2021-06-23 15:59:26',NULL),('84-8476168','Rozina','Veryan','a','A','Marketing Assistant','rveryan5@reverbnation.com','848-994-5920',6,'dba','2021-06-23 15:59:26',NULL),('85-5280347','Wendye','Gaveltone','a','A','Clinical Specialist','wgaveltonel@php.net','309-620-9393',6,'dba','2021-06-23 15:59:26',NULL),('86-4780785','Sly','Blaszczyk','a','A','Office Assistant III','sblaszczyk2k@cdc.gov','191-432-3260',6,'dba','2021-06-23 15:59:26',NULL),('86-8493913','Ariel','Syrie','a','A','Teacher','asyrie1j@unicef.org','106-177-9227',1,'dba','2021-06-23 15:59:26',NULL),('87-0341507','Sheila','Goodie','a','A','Graphic Designer','sgoodie24@comsenz.com','167-140-8796',6,'dba','2021-06-23 15:59:26',NULL),('87-8571867','Delmar','Bracknell','a','A','VP Quality Control','dbracknell7@flickr.com','510-211-4914',6,'dba','2021-06-23 15:59:26',NULL),('88-7220465','Dame','Abbie','a','A','Programmer Analyst III','dabbie1i@paypal.com','246-343-4852',6,'dba','2021-06-23 15:59:26',NULL),('89-6615261','Cross','Spriggen','a','A','Media Manager IV','cspriggent@csmonitor.com','551-501-8129',6,'dba','2021-06-23 15:59:26',NULL),('90-3981162','Geri','Camblin','a','A','Systems Administrator II','gcamblin2j@feedburner.com','520-984-9275',6,'dba','2021-06-23 15:59:26',NULL),('92-0024661','Aron','Reburn','a','A','Librarian','areburnv@mozilla.com','698-292-6784',6,'dba','2021-06-23 15:59:26',NULL),('92-2632824','Kristoffer','Lovett','a','A','Electrical Engineer','klovettw@theglobeandmail.com','223-788-7464',6,'dba','2021-06-23 15:59:26',NULL),('92-9949447','Tillie','Vernay','a','A','Engineer I','tvernay1y@intel.com','400-510-4348',6,'dba','2021-06-23 15:59:26',NULL),('99-3014809','Stephana','Cawsey','a','A','Marketing Assistant','scawseyn@hibu.com','202-638-4476',6,'dba','2021-06-23 15:59:26',NULL),('99-8730697','Twila','Taborre','a','A','Graphic Designer','ttaborre1b@squarespace.com','292-177-6150',6,'dba','2021-06-23 15:59:26',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-16 15:33:21