-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'Udara Ekanayake ','0769652995','udaraekanayake1@gmail.com','16-03-2022','540','admin1@gmail.com'),(2,'Sathya Dissanayake','0762105454','sathyaneth89@gmail.com','16-03-2022','1200','admin1@gmail.com'),(3,'Ravishka Madushan','0785676456','ravishkamadu97@gmail.com','16-03-2022','640','admin1@gmail.com');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tea'),(2,'Coffee'),(3,'Chicken Soup'),(4,'Sandwiche'),(5,'Salad'),(6,'Pastrie'),(7,'Pizza'),(8,'Espresso'),(9,'Donuts'),(10,'Cupcake'),(11,'Macaron'),(12,'Soft Drink');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Creamy','Chicken Soup','450'),(2,'Apple','Tea','220'),(4,'Ice','Tea','500'),(5,'Green','Tea','350'),(6,'Ice','Coffee','270'),(7,'Hot & Spicy','Chicken Soup','600'),(8,'Italian','Chicken Soup','320'),(9,'Nestcafe','Coffee','130'),(10,'Con Panna','Espresso','300'),(11,'Vanilla Latte','Espresso','530'),(12,'Macchiato','Espresso','600'),(13,'Cafe Latte','Espresso','450'),(14,'Classic Cappuccino','Espresso','700'),(15,'Cafe Miel','Espresso','560'),(16,'Cafe Americano','Espresso','340'),(17,'Mozzarella','Pizza','1100'),(18,'Bacon','Pizza','1400'),(19,'Chili Pepper','Pizza','1250'),(20,'Mushroom','Pizza','1000'),(21,'Vegie','Pizza','900'),(22,'Shrimp','Pizza','1600'),(23,'Salami','Pizza','1700'),(24,'Chicago','Pizza','1900'),(25,'Classic Greek','Salad','400'),(26,'New Potato','Salad','290'),(27,'Garlicky Tomato','Salad','370'),(28,'Apple','Salad','600'),(29,'Asian Chicken','Salad','500'),(30,'Lobster','Salad','760'),(31,'Broccoli','Salad','480'),(32,'Detox','Salad','300'),(33,'Tuna','Salad','490'),(34,'Croissant','Pastrie','200'),(35,'Pie','Pastrie','320'),(36,'Cannoli','Pastrie','240'),(37,'Tart','Pastrie','390'),(38,'Strudel','Pastrie','530'),(39,'Egg','Sandwiche','150'),(40,'Seafood','Sandwiche','400'),(41,'Ham','Sandwiche','500'),(42,'Beef','Sandwiche','520'),(43,'Chicken','Sandwiche','490'),(44,'UBE','Donuts','400'),(45,'Wonut','Donuts','270'),(46,'Coconut','Donuts','430'),(47,'ButterMilk','Donuts','355'),(48,'Vanilla','Cupcake','100'),(49,'Chocolate','Cupcake','120'),(50,'Coca-Cola','Soft Drink','80'),(51,'Cream-Soda','Soft Drink','60'),(52,'Cheese','Macaron','340'),(53,'Vegie','Macaron','250');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Udara Ekanayake','udaraekanayake1@gmail.com','0769652995','No.6 12 th lane,kandy','19960904','What is your pet name ?','puppy','true'),(2,'admin1','admin1@gmail.com','0111234567','No.12,Magampitiya road,Kaluthara','add123','My pet name ?','puppy','true'),(3,'Sathya Dissanayake','sathyaneth99@gmail.com','0762105454','temple road,Daladagama','kitty123','what is your pet name?','tooby','true');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-16 16:23:45
