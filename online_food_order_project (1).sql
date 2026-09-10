CREATE DATABASE  IF NOT EXISTS `online_food_orders` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `online_food_orders`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: online_food_orders
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int NOT NULL,
  `registration_date` date NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Rahul','Sharma','rahul.sharma@gmail.com','9123456780','Rahul@123','12 MG Road','Bengaluru',560001,'2026-01-10'),(2,'Priya','Reddy','priya.reddy@gmail.com','9345678120','Priya@123','45 Gandhi Nagar','Hyderabad',500001,'2026-01-15'),(3,'Arjun','Kumar','arjun.kumar@gmail.com','8765432190','Arjun@123','23 Station Road','Chennai',600001,'2026-02-05'),(4,'Sneha','Patel','sneha.patel@gmail.com','9988776655','Sneha@123','78 Park Street','Mumbai',400001,'2026-02-12'),(5,'Mohammed','Ali','mohammed.ali@gmail.com','9090901234','Mohammed@123','34 Clock Tower Road','Kurnool',518001,'2026-02-20'),(6,'Ananya','Das','ananya.das@gmail.com','8899776655','Ananya@123','56 Lake View Road','Kolkata',700001,'2026-03-01'),(7,'Vikram','Singh','vikram.singh@gmail.com','9567891234','Vikram@123','89 Civil Lines','Delhi',110001,'2026-03-10'),(8,'Pooja','Nair','pooja.nair@gmail.com','9871234560','Pooja@123','21 Marine Road','Kochi',682001,'2026-03-18'),(9,'Karthik','Rao','karthik.rao@gmail.com','9012345678','Karthik@123','67 Residency Road','Mysuru',570001,'2026-03-25'),(10,'Ayesha','Khan','ayesha.khan@gmail.com','7894561230','Ayesha@123','90 Market Road','Pune',411001,'2026-04-02');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_item`
--

DROP TABLE IF EXISTS `food_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_item` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_id` int NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `vegetarian` tinyint(1) NOT NULL,
  `food_rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `food_item_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_item`
--

LOCK TABLES `food_item` WRITE;
/*!40000 ALTER TABLE `food_item` DISABLE KEYS */;
INSERT INTO `food_item` VALUES (2,1,'Chicken Biryani','Main Course','Fragrant basmati rice with chicken and spices',250.00,0,4.5),(3,1,'Paneer Biryani','Main Course','Basmati rice cooked with paneer and spices',220.00,1,4.3),(4,2,'Masala Dosa','Breakfast','Crispy dosa served with potato masala and chutney',100.00,1,4.6),(5,2,'Idli Sambar','Breakfast','Soft idlis served with hot sambar',80.00,1,4.2),(6,3,'Chicken Burger','Fast Food','Grilled chicken burger with vegetables and sauce',180.00,0,4.4),(7,3,'Veg Burger','Fast Food','Vegetable patty burger with fresh vegetables',140.00,1,4.1),(8,4,'Paneer Tikka','Starter','Grilled paneer cubes marinated with Indian spices',200.00,1,4.5),(9,4,'Butter Chicken','Main Course','Chicken cooked in creamy tomato gravy',280.00,0,4.7),(10,5,'Veg Fried Rice','Main Course','Fried rice with mixed vegetables and sauces',160.00,1,4.2),(11,5,'Chicken Noodles','Main Course','Stir-fried noodles with chicken and vegetables',190.00,0,4.4),(12,6,'Andhra Chicken Curry','Main Course','Spicy chicken curry prepared with traditional Andhra spices',260.00,0,4.5),(13,6,'Gongura Rice','Main Course','Flavourful rice prepared with gongura leaves and spices',150.00,1,4.3),(14,7,'Mutton Biryani','Main Course','Aromatic basmati rice cooked with tender mutton and spices',320.00,0,4.7),(15,7,'Chicken Biryani','Main Course','Fragrant basmati rice cooked with chicken and traditional spices',260.00,0,4.6),(16,8,'Veg Thali','Main Course','Complete vegetarian meal served with rice, curry, dal and bread',220.00,1,4.4),(17,8,'Paneer Curry','Main Course','Soft paneer cooked in a rich tomato and onion gravy',190.00,1,4.5),(18,9,'Hakka Noodles','Main Course','Stir-fried noodles with fresh vegetables and sauces',170.00,1,4.2),(19,9,'Chicken Manchurian','Main Course','Crispy chicken pieces tossed in spicy Manchurian sauce',240.00,0,4.3),(20,10,'Butter Naan','Bread','Soft naan brushed with butter and cooked in a tandoor',60.00,1,4.4),(21,10,'Tandoori Chicken','Main Course','Chicken marinated with spices and roasted in a tandoor',290.00,0,4.6);
/*!40000 ALTER TABLE `food_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `food_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `special_instruction` varchar(200) DEFAULT NULL,
  `item_status` varchar(30) NOT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,1,2,1,250.00,0.00,12.50,262.50,'Less spicy','Delivered'),(2,2,4,2,100.00,0.00,10.00,210.00,'Extra chutney','Delivered'),(3,3,6,1,180.00,0.00,9.00,189.00,'Extra sauce','Preparing'),(4,4,8,2,200.00,0.00,20.00,420.00,'No onions','Delivered'),(5,5,10,3,160.00,0.00,24.00,504.00,'Less oil','Out for Delivery'),(6,6,12,1,260.00,0.00,13.00,273.00,'Normal spice','Delivered'),(7,7,14,2,320.00,0.00,32.00,672.00,'Extra sambar','Preparing'),(8,8,16,3,220.00,0.00,33.00,693.00,'Extra cheese','Delivered'),(9,9,18,1,170.00,0.00,8.50,178.50,'Well cooked','Pending'),(10,10,20,2,60.00,0.00,6.00,126.00,'Less spicy','Delivered');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status` varchar(30) NOT NULL,
  `delivery_address` varchar(200) NOT NULL,
  `delivery_charge` decimal(10,2) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2026-04-05','12:30:00',292.50,'Delivered','12 MG Road, Bengaluru',30.00,'Paid'),(2,2,2,'2026-04-06','13:15:00',235.00,'Delivered','45 Gandhi Nagar, Hyderabad',25.00,'Paid'),(3,3,3,'2026-04-07','19:30:00',219.00,'Preparing','23 Station Road, Chennai',30.00,'Paid'),(4,4,4,'2026-04-08','20:00:00',450.00,'Delivered','78 Park Street, Mumbai',30.00,'Paid'),(5,5,5,'2026-04-09','14:00:00',529.00,'Out for Delivery','34 Clock Tower Road, Kurnool',25.00,'Paid'),(6,6,6,'2026-04-10','19:15:00',303.00,'Delivered','56 Lake View Road, Kolkata',30.00,'Paid'),(7,7,7,'2026-04-11','20:30:00',702.00,'Preparing','89 Civil Lines, Delhi',30.00,'Paid'),(8,8,8,'2026-04-12','13:00:00',718.00,'Delivered','21 Marine Road, Kochi',25.00,'Paid'),(9,9,9,'2026-04-13','18:45:00',208.50,'Pending','67 Residency Road, Mysuru',30.00,'Pending'),(10,10,10,'2026-04-14','21:00:00',156.00,'Delivered','90 Market Road, Pune',30.00,'Paid');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_status` varchar(30) NOT NULL,
  `refund_amount` decimal(10,2) DEFAULT '0.00',
  `refund_status` varchar(30) DEFAULT 'No',
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'2026-04-05','12:35:00',292.50,'UPI','TXN10001','Paid',0.00,'No'),(2,2,'2026-04-06','13:20:00',235.00,'Credit Card','TXN10002','Paid',0.00,'No'),(3,3,'2026-04-07','19:35:00',219.00,'UPI','TXN10003','Paid',0.00,'No'),(4,4,'2026-04-08','20:05:00',450.00,'Debit Card','TXN10004','Paid',0.00,'No'),(5,5,'2026-04-09','14:05:00',529.00,'Cash on Delivery','TXN10005','Paid',0.00,'No'),(6,6,'2026-04-10','19:20:00',303.00,'UPI','TXN10006','Paid',0.00,'No'),(7,7,'2026-04-11','20:35:00',702.00,'Credit Card','TXN10007','Paid',0.00,'No'),(8,8,'2026-04-12','13:05:00',718.00,'UPI','TXN10008','Paid',0.00,'No'),(9,9,'2026-04-13','18:50:00',208.50,'UPI','TXN10009','Pending',0.00,'No'),(10,10,'2026-04-14','21:05:00',156.00,'Debit Card','TXN10010','Paid',0.00,'No');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(100) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `opening_time` time NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `restaurant_chk_1` CHECK ((`rating` between 0 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Spice Garden','Rajesh Kumar','9876500001','spicegarden@gmail.com','25 Brigade Road','Bengaluru','Indian',4.5,'10:00:00'),(2,'South Indian Hub','Suresh Reddy','9876500002','southhub@gmail.com','45 Gandhi Nagar','Hyderabad','South Indian',4.3,'08:00:00'),(3,'Burger House','Amit Patel','9876500003','burgerhouse@gmail.com','42 Linking Road','Mumbai','Fast Food',4.2,'11:00:00'),(4,'Royal Kitchen','Mohammed Ahmed','9876500004','royalkitchen@gmail.com','16 Nandyal Road','Kurnool','Mughlai',4.6,'12:00:00'),(5,'Tasty Treat','Vijay Rao','9876500005','tastytreat@gmail.com','33 Devaraja Urs Road','Mysuru','Chinese',4.1,'10:30:00'),(6,'Andhra Spice','Ravi Naidu','9876500006','andhraspice@gmail.com','14 Benz Circle Road','Vijayawada','Andhra',4.4,'11:00:00'),(7,'Biryani Palace','Imran Khan','9876500007','biryanipalace@gmail.com','27 Charminar Road','Hyderabad','Biryani',4.7,'11:30:00'),(8,'Green Leaf','Meena Rao','9876500008','greenleaf@gmail.com','51 Anna Salai','Chennai','Vegetarian',4.2,'08:30:00'),(9,'Food Junction','Kiran Sharma','9876500009','foodjunction@gmail.com','39 FC Road','Pune','Multi Cuisine',4.0,'10:00:00'),(10,'Urban Tadka','Neha Singh','9876500010','urbantadka@gmail.com','22 Connaught Place','Delhi','North Indian',4.5,'12:00:00');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-10 20:30:46
