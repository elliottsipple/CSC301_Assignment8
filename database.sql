-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: csweb.hh.nku.edu    Database: db_spring17_sipplee1
-- ------------------------------------------------------
-- Server version	5.5.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_categories` (
  `isbn` varchar(45) NOT NULL,
  `categoryid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_categories`
--

LOCK TABLES `book_categories` WRITE;
/*!40000 ALTER TABLE `book_categories` DISABLE KEYS */;
INSERT INTO `book_categories` VALUES ('0-672-31509-2',1),('0-672-31509-2',2);
/*!40000 ALTER TABLE `book_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_reviews`
--

DROP TABLE IF EXISTS `book_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_reviews` (
  `isbn` char(13) NOT NULL,
  `review` text,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_reviews`
--

LOCK TABLES `book_reviews` WRITE;
/*!40000 ALTER TABLE `book_reviews` DISABLE KEYS */;
INSERT INTO `book_reviews` VALUES ('0-672-31697-8','Morgan\'s book is clearly written and goes well beyond \n                     most of the basic Java books out there.');
/*!40000 ALTER TABLE `book_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `isbn` char(13) NOT NULL,
  `author` char(50) DEFAULT NULL,
  `title` char(100) DEFAULT NULL,
  `price` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('0-672-31509-2','Pruitt, et al.','Teach Yourself GIMP in 24 Hours',24.99),('0-672-31697-8','Michael Morgan','Java 2 for Professional Developers',34.99),('0-672-31745-1','Thomas Down','Installing Debian GNU/Linux',24.99),('0-672-31769-9','Thomas Schenk','Caldera OpenLinux System Administration Unleashed',49.99);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_cities`
--

DROP TABLE IF EXISTS `car_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_cities` (
  `carid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_cities`
--

LOCK TABLES `car_cities` WRITE;
/*!40000 ALTER TABLE `car_cities` DISABLE KEYS */;
INSERT INTO `car_cities` VALUES (9,3),(9,5),(9,10);
/*!40000 ALTER TABLE `car_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `year` int(4) NOT NULL,
  `miles` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Chevy','Silverado','blackish',2011,129687,'truck',8500,'/images/cars/silverado2011.jpg'),(2,'Toyota','Prius','blue',2008,256754,'car',4700,'/images/cars/prius2008.jpg'),(3,'Honda','Accord','grey',2010,67889,'car',8200,'/images/cars/accord2010.jpg'),(4,'Toyota','Highlander','blue',2006,211123,'suv',3500,'/images/cars/highlander2006.jpg'),(5,'Mazda','6','red',2006,179821,'car',3750,'/images/cars/mazda62006.jpg'),(6,'Ford','F-150','white',2013,45211,'truck',17500,'/images/cars/f1502013.jpg'),(9,'toyota','prius','blue',2008,234423,'car',3423,NULL);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Technology'),(2,'English'),(3,'Science');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `state` varchar(2) NOT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Cincinnati','OH'),(2,'Covington','KY'),(3,'Fort Thomas','KY'),(4,'Lawrenceburg','IN'),(5,'Alexandria','KY'),(6,'Florence','KY'),(7,'Erlanger','KY'),(8,'Mason','OH'),(9,'Independence','KY'),(10,'Newport','KY');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `address` char(100) NOT NULL,
  `city` char(30) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Julie Smith','25 Oak Street','Airport West','smithj1','password'),(2,'Alan Wong','1/47 Haines Avenue','Box Hill',NULL,NULL),(3,'Michelle Arthur','357 North Road','Yarraville',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `orderid` int(10) unsigned NOT NULL,
  `isbn` char(13) NOT NULL,
  `quantity` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`orderid`,`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,'0-672-31697-8',2),(2,'0-672-31769-9',1),(3,'0-672-31509-2',1),(3,'0-672-31769-9',1),(4,'0-672-31745-1',3);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerid` int(10) unsigned NOT NULL,
  `amount` float(6,2) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,69.98,'2000-04-02'),(2,1,49.99,'2000-04-15'),(3,2,74.98,'2000-04-19'),(4,3,24.99,'2000-05-01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `cityid` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('adamsj1','password','John Adams',2),('franklinb1','password','Benjamin Franklin',3),('hamiltona1','password','Alexander Hamilton',4),('jacksona1','password','Andrew Jackson',5),('jeffersont1','password','Thomas Jefferson',1),('lincolna1','password','Abraham Lincoln',2),('washingtong1','password','George Washington',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-26 16:54:13
