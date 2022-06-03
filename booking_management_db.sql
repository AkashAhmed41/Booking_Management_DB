-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: booking_management_final
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `billpage`
--

DROP TABLE IF EXISTS `billpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billpage` (
  `formID` int(11) NOT NULL,
  `payMethod` varchar(30) NOT NULL,
  `trxID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`formID`),
  CONSTRAINT `billpage_ibfk_1` FOREIGN KEY (`formID`) REFERENCES `bookingform` (`formID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billpage`
--

LOCK TABLES `billpage` WRITE;
/*!40000 ALTER TABLE `billpage` DISABLE KEYS */;
INSERT INTO `billpage` VALUES (1,'Bkash','9EL387BXUJ'),(2,'Nagad','8XL387BSUQ'),(3,'Bkash','6WS999BXSL'),(4,'Bkash','9EG317SPUJ'),(5,'Bkash','7EK387BXNN'),(6,'Bkash','9XA387SUVJ'),(7,'Bkash','8SL487BXVL'),(8,'Bkash','9QL387SWSE'),(9,'Bkash','7IL667XCUJ'),(10,'Bkash','6EL387XICG'),(11,'Bkash','5BJ697RVUJ'),(12,'Nagad','9EG317SPUJ'),(13,'Rocket','9EF917SZUL'),(14,'Upay','1UG3T8SPUJ'),(15,'BKash','2KN8P7SKHJ'),(16,'Nagad','4RT3178TYH'),(17,'Nagad','GHY6J7PUSR'),(18,'Rocket','2HJYR7SPKH'),(19,'Nagad','2HJ7HJ8FDS'),(20,'Upay','6HJU8JHG8H'),(21,'Rocket','Q98GH10OKJ'),(22,'Upay','QKJ8HG6KJF'),(23,'Rocket','Q8XCV8HF9I'),(24,'Rocket','VG89BVH8TY'),(25,'Upay','KJ09ASOI8H'),(26,'BKash','GH76JVX0CD'),(27,'Rocket','LK78D09JHG'),(28,'BKash','JHG45T6Y7F'),(29,'Nagad','KI98GG7R7T'),(30,'BKash','KJ56AF09HF'),(31,'Rocket','MN09VC54XS'),(32,'Upay','AS98FT43H8'),(33,'Rocket','QA98HG67DS'),(34,'BKash','HG55FG98TG'),(35,'Nagad','GTHG8734G7'),(36,'BKash','KJ45ASD8GF'),(37,'Rocket','LK098ASD5V'),(38,'BKash','WQ35HG98VC'),(39,'Upay','VC09FT34C9'),(40,'BKash','XCG789HVDK'),(41,'Nagad','VB90YH12JH'),(42,'Rocket','JI89GFRT6K'),(43,'BKash','KJ87DR56VB'),(44,'Nagad','NM09FG34FT'),(45,'BKash','QA45FT87GV'),(46,'Nagad','6VL387MOJA'),(47,'Upay','5CX569JAAX'),(48,'Nagad','6VN679AZPI'),(49,'Nagad','9XZ549XOHI'),(50,'Nagad','9KC123ZAMT');
/*!40000 ALTER TABLE `billpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingform`
--

DROP TABLE IF EXISTS `bookingform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookingform` (
  `formID` int(11) NOT NULL AUTO_INCREMENT,
  `numNID` bigint(20) NOT NULL,
  `adult` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  PRIMARY KEY (`formID`),
  KEY `numNID` (`numNID`),
  CONSTRAINT `bookingform_ibfk_1` FOREIGN KEY (`numNID`) REFERENCES `guestlist` (`numNID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingform`
--

LOCK TABLES `bookingform` WRITE;
/*!40000 ALTER TABLE `bookingform` DISABLE KEYS */;
INSERT INTO `bookingform` VALUES (1,6253496797,2,0),(2,7103352752,2,1),(3,8103376726,2,2),(4,8103496725,2,0),(5,8103496728,2,0),(6,8103499222,2,0),(7,8803196321,2,0),(8,8903596933,2,0),(9,9103536796,2,0),(10,9205496554,2,0),(11,9205496554,2,0),(12,5353496599,2,2),(13,5392496537,2,3),(14,6653496654,1,0),(15,7493222590,1,2),(16,5392496537,2,3),(17,7893496999,2,1),(18,8103496619,2,2),(19,8593966333,2,0),(20,8883495492,1,1),(21,8953496537,1,0),(22,9983496645,1,1),(23,1258493706,1,0),(24,3215649875,2,2),(25,4529310629,1,0),(26,8901263478,2,2),(27,5689217402,1,1),(28,2456981702,2,2),(29,1526038445,2,1),(30,1256320298,2,0),(31,1862470256,2,3),(32,3641259870,1,0),(33,9521483017,2,0),(34,8521036417,2,1),(35,4325698175,2,2),(36,3547102650,1,0),(37,6023145890,1,1),(38,5632014920,2,3),(39,1872563028,2,0),(40,9563214080,2,1),(41,5962140837,2,1),(42,9854701236,1,0),(43,6231458970,2,0),(44,4562130890,2,2),(45,8562134720,2,3),(46,5353496599,2,2),(47,4529310629,2,1),(48,9103536796,2,2),(49,7103352752,1,0),(50,1258493706,2,2);
/*!40000 ALTER TABLE `bookingform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingroom`
--

DROP TABLE IF EXISTS `bookingroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookingroom` (
  `formID` int(11) NOT NULL,
  `roomID` int(11) NOT NULL,
  `checkinDate` date NOT NULL,
  `checkoutDate` date NOT NULL,
  KEY `formID` (`formID`),
  KEY `roomID` (`roomID`),
  CONSTRAINT `bookingroom_ibfk_1` FOREIGN KEY (`formID`) REFERENCES `bookingform` (`formID`),
  CONSTRAINT `bookingroom_ibfk_2` FOREIGN KEY (`roomID`) REFERENCES `room` (`roomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingroom`
--

LOCK TABLES `bookingroom` WRITE;
/*!40000 ALTER TABLE `bookingroom` DISABLE KEYS */;
INSERT INTO `bookingroom` VALUES (1,101,'2022-05-20','2022-05-25'),(2,103,'2022-05-22','2022-05-24'),(3,401,'2022-05-20','2022-05-28'),(4,103,'2022-05-25','2022-05-27'),(5,201,'2022-05-20','2022-05-22'),(6,204,'2022-05-21','2022-05-22'),(7,103,'2022-05-29','2022-05-31'),(8,202,'2022-05-20','2022-05-24'),(9,202,'2022-05-26','2022-05-29'),(10,301,'2022-05-27','2022-05-30'),(11,302,'2022-05-20','2022-05-30'),(12,402,'2022-05-25','2022-05-29'),(17,101,'2022-05-26','2022-05-28'),(19,303,'2022-05-22','2022-05-31'),(20,102,'2022-05-20','2022-05-23'),(17,501,'2022-05-23','2022-05-31'),(21,601,'2022-05-28','2022-05-31'),(14,602,'2022-05-25','2022-05-30'),(18,701,'2022-05-20','2022-05-29'),(13,801,'2022-05-23','2022-05-28'),(15,701,'2022-05-30','2022-05-31'),(16,801,'2022-05-15','2022-05-20'),(22,502,'2022-05-14','2022-05-19'),(23,901,'2022-05-15','2022-05-19'),(24,701,'2022-05-14','2022-05-19'),(25,901,'2022-05-09','2022-05-14'),(26,701,'2022-05-10','2022-05-13'),(27,303,'2022-05-16','2022-05-22'),(28,403,'2022-05-20','2022-05-25'),(29,503,'2022-05-18','2022-05-21'),(30,203,'2022-05-10','2022-05-14'),(31,802,'2022-05-05','2022-05-11'),(32,902,'2022-05-11','2022-05-13'),(33,1001,'2022-05-07','2022-05-12'),(34,303,'2022-05-12','2022-05-15'),(35,404,'2022-05-08','2022-05-12'),(36,104,'2022-05-13','2022-05-17'),(37,105,'2022-05-10','2022-05-13'),(38,803,'2022-05-15','2022-05-19'),(39,1002,'2022-05-08','2022-05-11'),(40,502,'2022-05-20','2022-05-23'),(41,104,'2022-05-18','2022-05-21'),(42,902,'2022-05-14','2022-05-18'),(43,602,'2022-05-20','2022-05-24'),(44,702,'2022-05-11','2022-05-15'),(45,802,'2022-05-12','2022-05-15'),(46,803,'2022-05-08','2022-05-13'),(47,304,'2022-05-01','2022-05-08'),(48,402,'2022-05-15','2022-05-20'),(49,903,'2022-05-03','2022-05-09'),(50,703,'2022-05-05','2022-05-12');
/*!40000 ALTER TABLE `bookingroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestlist`
--

DROP TABLE IF EXISTS `guestlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestlist` (
  `firstName` varchar(15) DEFAULT NULL,
  `lastName` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `numNID` bigint(20) NOT NULL,
  `phnNo` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`numNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestlist`
--

LOCK TABLES `guestlist` WRITE;
/*!40000 ALTER TABLE `guestlist` DISABLE KEYS */;
INSERT INTO `guestlist` VALUES ('Shah','Newaz','newazshah123@gmail.com',1256320298,'01965458448'),('Mohammad','Abdullah','mdabdullah90@gmail.com',1258493706,'01786492654'),('Bakhtiar','Galib','bktgalib96@gmail.com',1526038445,'01512269548'),('Noyon','Chowdhury','noyon786@gmail.com',1862470256,'01887296541'),('Abdul','Bari','abdulbari78@yahoo.com',1872563028,'01932100230'),('Mohammad','Yousuf','mdyousuf78@gmail.com',2456981702,'01365484518'),('Rejaul','Karim','mrk8989@yahoo.com',3215649875,'01326481532'),('Rakib','Miah','rakibmia008@gmail.com',3547102650,'01623105060'),('Kashem','Rahman','kashemrahman8@gmail.com',3641259870,'01665484253'),('Kamal','Bhuiyan','kamalbh76@yahoo.com',4325698175,'01523641783'),('Abdur','Rahman','abdurrahman123@gmail.com',4529310629,'01589217835'),('Tomal','Ray','tomalray292@gmail.com',4562130890,'01426541023'),('Azraf','Ahmed','azrafsec@gmail.com',5353496599,'01790235771'),('Kaptaan','Miaah','kaptaanmiaah@gmail.com',5392496537,'01870236584'),('Smriti','Kunda','smritimand564@gmail.com',5632014920,'01732001950'),('Joy','Ahmed','joyahmed1999@gmail.com',5689217402,'01856492301'),('Moshiur','Utso','moshiurutso44@gmail.com',5962140837,'01923561472'),('Lina','Begum','linabegum334@gmail.com',6023145890,'01323987150'),('Usman','Miah','usmanmia420@gmail.com',6231458970,'01732654123'),('Zahin','Nasif','nasifop@gmail.com',6253496797,'01611621687'),('Zarin','Tasnim','zt1999@gmail.com',6653496654,'01744602801'),('Fazlul','Safkat','fsafkat88@gmail.com',7103352752,'01625749653'),('Nihal','Shahria','nihal33@student.sust.edu',7493222590,'01646767354'),('Ahmed','Boshir','kingbosh@live.in',7893496999,'01890236781'),('Rafid','Hasan','hmnrafid999@gmail.com',8103376726,'01790574063'),('Jamilur','Rahman','jamilur35@student.sust.edu',8103496619,'01518758535'),('Ahmed','Arafath','ahmedarafath@gmail.com',8103496725,'01682293925'),('Samadul','Islam','samadulislam@gmail.com',8103496728,'01711983678'),('Mubasshir','Hossain','mhossain@gmail.com',8103499222,'01742889764'),('Rakibul','Islam','rakibulislam99@gmail.com',8521036417,'01723651479'),('Kawsar','Khan','kawsarkata2@yahoo.com',8562134720,'01632154809'),('Prottya','Roy','prottya01@student.sust.edu',8593966333,'01718117174'),('Shahriar','Kabir','shahkabir@gmail.com',8803196321,'01976038365'),('Shamsul','Arafat','sarafat2001@yahoo.com',8883495492,'01849672081'),('Adil','Rahman','adilrahman88@yahoo.com',8901263478,'01514492356'),('Touhid','Sajid','tsajid@gmail.com',8903596933,'01621692816'),('Redwan','Hossain','rhsylhet@live.in',8953496537,'01890236781'),('Naimul','Islam','naimulislamanik@gmail.com',9103536796,'01746398339'),('Abrar','Rahman','rahmanlomru@gmail.com',9205496554,'01623685508'),('Sahadat','Hossen','sahadathosen34@gmail.com',9521483017,'01823651478'),('Wadud','Sakib','wadudsakib1997@gmail.com',9563214080,'01602356410'),('Akash','Ahmed','akashmiah@gmail.com',9605799924,'01995713756'),('Kabir','Khan','kabirkhan77@yahoo.com',9854701236,'01823987415'),('Raisul','Islam','raisul05@student.sust.edu',9983496645,'01884777066');
/*!40000 ALTER TABLE `guestlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `roomTypeID` int(11) DEFAULT NULL,
  `roomID` int(11) NOT NULL,
  `roomFare` int(11) DEFAULT NULL,
  PRIMARY KEY (`roomID`),
  KEY `roomTypeID` (`roomTypeID`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomTypeID`) REFERENCES `roomdetails` (`roomTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,101,2268),(1,102,2268),(1,103,2268),(1,104,2268),(1,105,2268),(2,201,4000),(2,202,4000),(2,203,4000),(2,204,4000),(3,301,2772),(3,302,2772),(3,303,2772),(3,304,2772),(4,401,4200),(4,402,4200),(4,403,4200),(4,404,4200),(5,501,3528),(5,502,3528),(5,503,3528),(6,601,4032),(6,602,4032),(7,701,5000),(7,702,5000),(7,703,5000),(8,801,4410),(8,802,4410),(8,803,4410),(9,901,5500),(9,902,5500),(9,903,5500),(10,1001,5500),(10,1002,5500);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomdetails`
--

DROP TABLE IF EXISTS `roomdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomdetails` (
  `roomType` varchar(30) NOT NULL,
  `adultPerson` int(5) NOT NULL,
  `Children` int(5) NOT NULL,
  `roomTypeID` int(11) NOT NULL,
  PRIMARY KEY (`roomTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomdetails`
--

LOCK TABLES `roomdetails` WRITE;
/*!40000 ALTER TABLE `roomdetails` DISABLE KEYS */;
INSERT INTO `roomdetails` VALUES ('Super Deluxe AC',2,1,1),('Executive AC',2,0,2),('Super Deluxe AC',2,1,3),('Twin Deluxe AC',2,2,4),('Super Deluxe Twin AC',2,1,5),('Premium Deluxe Twin AC',2,0,6),('Family Deluxe Twin AC',2,2,7),('Super Deluxe Family AC',2,3,8),('Executive Suite AC',1,0,9),('Britannia Suite AC',2,0,10);
/*!40000 ALTER TABLE `roomdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-03 15:53:38
