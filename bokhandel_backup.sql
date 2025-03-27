-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: Bookshop_adv
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Stock` int NOT NULL,
  PRIMARY KEY (`BookID`),
  UNIQUE KEY `ISBN` (`ISBN`),
  UNIQUE KEY `Title` (`Title`),
  CONSTRAINT `books_chk_1` CHECK ((`Price` > 0)),
  CONSTRAINT `check_price` CHECK ((`Price` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'978-0-13-110362-7','Brian Kernighan & Dennis Ritchie','The C Programming Language',45.99,10),(2,'978-1-491-95479-3','Alan Beaulieu','Learning SQL',39.99,15),(3,'978-0-321-87758-1','Silberschatz, Korth & Sudarshan','Database System Concepts',59.99,8),(4,'978-0-13-235088-4','Robert C. Martin','Clean Code',42.99,12),(5,'978-0-262-03384-8','Michael Sipser','Introduction to the Theory of Computation',64.99,5),(6,'978-0-596-52068-7','Douglas Crockford','JavaScript: The Good Parts',34.99,20),(7,'978-1-59327-584-6','Al Sweigart','Automate the Boring Stuff with Python',29.99,18),(8,'978-0-07-352332-3','Kurose & Ross','Computer Networking: A Top-Down Approach',69.99,7),(9,'978-0-321-71463-3','Erich Gamma et al.','Design Patterns: Elements of Reusable Object-Oriented Software',54.99,9),(10,'978-1-59327-599-0','Eric Matthes','Python Crash Course',37.99,14),(11,'978-0-321-83435-5','Stuart Russell & Peter Norvig','Artificial Intelligence: A Modern Approach',79.99,6),(12,'978-1-449-35936-2','Kyle Simpson','You Don’t Know JS: Scope & Closures',24.99,25),(13,'978-0-13-597444-5','Harold Abelson & Gerald Jay Sussman','Structure and Interpretation of Computer Programs',49.99,10);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alice Johnson','alice@example.com','123-456-7890','123 Main St, Cityville'),(2,'Bob Smith','newbob@example.com','987-654-3210','456 Oak St, Townsville'),(3,'Charlie Brown','charlie@example.com','555-123-4567','789 Pine St, Villagetown'),(4,'David Wilson','david@example.com','111-222-3333','101 Maple St, Lakeside'),(5,'Emma Davis','emma@example.com','444-555-6666','202 Birch St, Hillsborough'),(6,'Frank Miller','frank@example.com','777-888-9999','303 Cedar St, Riverside'),(7,'Grace Lee','grace@example.com','222-333-4444','404 Spruce St, Meadowtown'),(8,'Henry Clark','henry@example.com','666-777-8888','505 Willow St, Brookfield'),(9,'Ivy Martinez','ivy@example.com','999-000-1111','606 Aspen St, Greenfield'),(10,'Jack White','jack@example.com','123-321-4567','707 Redwood St, Sunnyside'),(11,'Karen Scott','karen@example.com','789-456-1230','808 Cherry St, Northville'),(12,'Leo Adams','leo@example.com','234-567-8901','909 Dogwood St, Southtown'),(13,'Mia Harris','mia@example.com','345-678-9012','1010 Magnolia St, Eastwood'),(14,'Noah Carter','noah@example.com','456-789-0123','1111 Fir St, Westlake'),(15,'Olivia Baker','olivia@example.com','567-890-1234','1212 Cypress St, Midtown'),(16,'Paul Rogers','paul@example.com','678-901-2345','1313 Hickory St, Fairview'),(17,'Quinn Foster','quinn@example.com','789-012-3456','1414 Sycamore St, Springfield'),(18,'Rachel Evans','rachel@example.com','890-123-4567','1515 Sequoia St, Riverdale'),(19,'Sam Turner','sam@example.com','901-234-5678','1616 Olive St, Pinewood'),(20,'Tina Walker','tina@example.com','012-345-6789','1717 Poplar St, Maplewood'),(21,'Umar Patel','umar@example.com','123-555-6789','1818 Chestnut St, Willowbrook'),(22,'Victoria Bennett','victoria@example.com','234-666-7890','1919 Elm St, Lakeshore'),(23,'William Parker','william@example.com','345-777-8901','2020 Bay St, Brookside');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `LogNewCustomer` AFTER INSERT ON `customer` FOR EACH ROW INSERT INTO CustomerLog (CustomerID) VALUES (NEW.CustomerID) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customerlog`
--

DROP TABLE IF EXISTS `customerlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerlog` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerlog`
--

LOCK TABLES `customerlog` WRITE;
/*!40000 ALTER TABLE `customerlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderrows`
--

DROP TABLE IF EXISTS `orderrows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderrows` (
  `OrderrowsID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `BookID` int NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `Amount` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderrowsID`),
  KEY `OrderID` (`OrderID`),
  KEY `BookID` (`BookID`),
  CONSTRAINT `orderrows_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderrows_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  CONSTRAINT `orderrows_chk_1` CHECK ((`Amount` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderrows`
--

LOCK TABLES `orderrows` WRITE;
/*!40000 ALTER TABLE `orderrows` DISABLE KEYS */;
INSERT INTO `orderrows` VALUES (1,1,1,'978-0-13-110362-7',1,45.99),(2,1,2,'978-1-491-95479-3',1,39.99),(3,2,2,'978-1-491-95479-3',1,39.99),(4,3,3,'978-0-321-87758-1',1,59.99),(5,4,1,'978-0-13-110362-7',1,45.99),(6,4,4,'978-0-13-235088-4',1,51.99),(7,5,5,'978-0-262-03384-8',1,64.99),(8,6,6,'978-0-596-52068-7',2,34.99),(9,6,7,'978-1-59327-584-6',1,59.99),(10,7,8,'978-0-07-352332-3',1,69.99),(11,7,9,'978-0-321-71463-3',1,4.99),(12,8,10,'978-1-59327-599-0',2,74.99),(13,8,11,'978-0-321-83435-5',1,59.99),(14,9,12,'978-1-449-35936-2',1,24.99),(15,9,13,'978-0-13-597444-5',1,69.99),(16,10,1,'978-0-13-110362-7',1,45.99),(17,10,3,'978-0-321-87758-1',1,43.99);
/*!40000 ALTER TABLE `orderrows` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ReduceStock` AFTER INSERT ON `orderrows` FOR EACH ROW UPDATE Books SET Stock = Stock - New.amount WHERE BookID = New.BookID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `OrderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,85.98,'2024-03-10 00:00:00'),(2,2,39.99,'2024-03-11 00:00:00'),(3,3,59.99,'2024-03-12 00:00:00'),(4,4,97.98,'2024-03-13 00:00:00'),(5,5,64.99,'2024-03-14 00:00:00'),(6,6,129.97,'2024-03-15 00:00:00'),(7,7,74.98,'2024-03-16 00:00:00'),(8,8,149.97,'2024-03-17 00:00:00'),(9,9,94.98,'2024-03-18 00:00:00'),(10,10,89.98,'2024-03-19 00:00:00'),(11,1,85.98,'2024-03-10 00:00:00'),(12,2,39.99,'2024-03-11 00:00:00'),(13,3,59.99,'2024-03-12 00:00:00'),(14,4,97.98,'2024-03-13 00:00:00'),(15,5,64.99,'2024-03-14 00:00:00'),(16,6,129.97,'2024-03-15 00:00:00'),(17,7,74.98,'2024-03-16 00:00:00'),(18,8,149.97,'2024-03-17 00:00:00'),(19,9,94.98,'2024-03-18 00:00:00'),(20,10,89.98,'2024-03-19 00:00:00'),(21,3,29.99,'2025-03-12 00:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 12:43:31
