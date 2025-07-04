-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: online_store
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `phono` varchar(15) DEFAULT NULL,
  `Address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (0,NULL,NULL,NULL,NULL),(101,'Vamsi','besthavamsi91@gmail.com','9346622695','Anantapur'),(102,'Ravi Kumar','ravi.kumar@gmail.com','9876543210','Hyderabad'),(103,'Priya Sharma','priya.sharma@gmail.com','9876501234','Mumbai'),(104,'Amit Verma','amit.verma@gmail.com','9876512345','Delhi'),(105,'Sneha Reddy','sneha.reddy@gmail.com','9876523456','Bangalore'),(106,'Kiran Rao','kiran.rao@gmail.com','9876534567','Chennai'),(107,'Anjali Mehta','anjali.mehta@gmail.com','9876545678','Pune'),(108,'Vikram Singh','vikram.singh@gmail.com','9876556789','Kolkata'),(109,'Divya Patil','divya.patil@gmail.com','9876567890','Ahmedabad'),(110,'Rahul Das','rahul.das@gmail.com','9876578901','Jaipur'),(111,'Pooja Nair','pooja.nair@gmail.com','9876589012','Lucknow'),(112,'Arjun Yadav','arjun.yadav@gmail.com','9876590123','Surat'),(113,'Neha Joshi','neha.joshi@gmail.com','9876601234','Bhopal'),(114,'Siddharth Jain','siddharth.jain@gmail.com','9876612345','Indore'),(115,'Meena Iyer','meena.iyer@gmail.com','9876623456','Nagpur'),(116,'Rohit Shetty','rohit.shetty@gmail.com','9876634567','Vijayawada'),(117,'Tanya Paul','tanya.paul@gmail.com','9876645678','Visakhapatnam'),(118,'Ashok Menon','ashok.menon@gmail.com','9876656789','Trivandrum'),(119,'Lakshmi Rao','lakshmi.rao@gmail.com','9876667890','Mysore'),(120,'Surya Teja','surya.teja@gmail.com','9876678901','Warangal');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-04 10:38:44
