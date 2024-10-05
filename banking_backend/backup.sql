-- MySQL dump 10.13  Distrib 8.3.0, for Linux (aarch64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `auths`
--

DROP TABLE IF EXISTS `auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auths` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` float NOT NULL DEFAULT '0',
  `profilePublicId` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cccd` varchar(255) DEFAULT NULL,
  `isAdmin` int DEFAULT NULL,
  `homeAddress` varchar(255) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `emailVerificationToken` varchar(255) DEFAULT NULL,
  `emailVerified` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `passwordResetExpires` datetime NOT NULL DEFAULT '2024-05-07 05:00:05',
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `auths_phone` (`phone`),
  UNIQUE KEY `auths_email` (`email`),
  UNIQUE KEY `auths_email_verification_token` (`emailVerificationToken`),
  KEY `auths_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auths`
--

LOCK TABLES `auths` WRITE;
/*!40000 ALTER TABLE `auths` DISABLE KEYS */;
INSERT INTO `auths` VALUES ('0feed943-0c4f-4c01-833b-80b4a33fb89a','Golda72','kXdxxLQpEkqBtVw',0,'c7d42591-01f0-4daa-9fa9-2f7cc0ceb259','Icie49@hotmail.com','488.721.4295 x6151','989981491010',0,'13226 Woodland Road','https://avatars.githubusercontent.com/u/11630697','29bba38cdd8022e7442dd56ed2f5c1fa50f2084f',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('114caa09-88e9-4559-828e-ec3c6b1176fd','Lucile.Veum','HdD03PItf1a951k',0,'933315f3-4daa-4476-b747-9e876dfefec7','Jaylan.Dooley71@gmail.com','(334) 496-9529 x8970','393932161117',0,'43686 Tremblay Ridge','https://avatars.githubusercontent.com/u/192520','e5e6c9514ca277ce0421a4702b55a38a7af269de',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('551ec8fe-767b-4122-84e0-171f258fbc7d','Laverne.Harvey','bDdwAsfU76xR3z7',0,'5aad62e0-8283-4423-ade4-1baa0759a6b3','Melba90@gmail.com','1-718-201-8776 x5257','938604762142',0,'928 Bay Street','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/822.jpg','31184682c5679bcba741a5abd83cafc4bae59939',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('64afb48f-6339-4631-8e1d-dbcfcc3ec121','Jason.Runolfsson59','MILiYQWCz3Sy7aC',0,'92895e07-f2e1-44b6-bd77-a6091d7089c1','Otis_Mayer@hotmail.com','496-586-8547','397105441940',0,'362 W North Street','https://avatars.githubusercontent.com/u/15518899','eb7e2d0065321366fc1aac8cbef250628845a725',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('80101396-273b-4637-9b17-b39fdf9c1540','quan0401','$2a$10$wpw.ZIPWu4RyPzY2p9Q4lOSB9GtMLHBINxYcCe.QnA6QLw0tXc0rK',0,'2d7da422-e45f-47c7-a569-08acdeac5d82','dongminhquan2004@gmail.com','09385055050','079027608',1,'q12 HCM','http://res.cloudinary.com/dg3fsapzu/image/upload/v1717566384/bank/qflzb8ty7wo3vqtdemvv.jpg','71994cd48e30a6fff70b933a5e445e4c869e6856',1,'2024-06-05 05:46:24',NULL,'2024-06-05 04:55:19','2024-06-05 05:46:24'),('83ece86a-018d-43b8-b422-a5f78b61fc91','test0401','$2a$10$77nsoCa6Jh9M8rqw4/10/.tPQ.BeC9ZbKA..o/vv0jrZmW/4cSTTi',0,'57f22928-18fb-4f05-aa3c-b98ad0ca493f','test@gmail.com','09385555505','079204027608',0,'52 Nguyen Van Cu, Long Bien, Ha Noi','http://res.cloudinary.com/dg3fsapzu/image/upload/v1717681780/bank/aa44ka8favua6knxplbk.jpg','aaede32543225b0825b5ed97762693577b4aa68b',0,'2024-06-06 13:49:41',NULL,'2024-06-06 07:31:23','2024-06-06 13:49:41'),('8b53dcee-b575-4d36-9ef8-fb83b027f200','Mckenna9','2hUGI0UiLTAaHKW',0,'c9c9f1d2-7180-46ae-a9ab-fe47ca6d88c5','Annamarie.Homenick@hotmail.com','1-797-405-9819 x1454','510746255747',0,'104 Pietro Points','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/569.jpg','b0141d4c96c7af4cf9fc922160f429b214aeb22f',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('a51893a9-44ba-423b-bd8f-a10f6247dda0','Skylar.Boyle','t126SGpvSDnZbas',0,'0e67e83b-b40f-4290-a332-c6b40f425f55','Ova_Wilkinson@yahoo.com','(408) 316-7647 x481','458728979647',0,'961 Cross Lane','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/754.jpg','87c9649d1a165a3b714fba73bb7e88efcc329af5',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('e5a06b6b-af1f-4b40-b4b6-7b58a262948d','Samson.Krajcik42','fbVv3Ab5Lb6lJHA',0,'deaa8893-784e-4b6b-810a-f70b5a6fd5a0','Unique.Hoppe72@hotmail.com','(817) 983-0494','712866295934',0,'555 Church Street','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1180.jpg','d84446a37a2e7876b5c38426b000616925c5a14d',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('e7ce16e7-c658-4959-82df-326ad8c46900','Michael.Prohaska22','sJmxXjK2dKW0Rql',0,'48ea6362-bf1d-4b8d-a2fd-ac41222e002a','Eloisa.Kilback@hotmail.com','906.618.6356 x3806','101125886479',0,'966 Lindgren Expressway','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/218.jpg','b657030fb14d9eb3ca6d2879e9de73271883cbbd',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('fb8073c1-eb71-4da1-8152-fef889ad0db1','Lou_Little','IDOmMloif93TvVe',0,'c8c4dc52-7d62-4c76-9a1a-f0a41db45dc3','Judson18@hotmail.com','995-252-6943','519015948656',0,'259 Ash Close','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/142.jpg','032e5bdc59679254e9d27d0ed8627d6b65f02fc4',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32'),('fbce35e0-da09-4d28-b31e-db254991906e','Richard.Simonis17','WzNEgS0CBRgYlnC',0,'a309d200-eb6d-4023-ba84-2d06b33c925d','Celestino.Kiehn@hotmail.com','1-880-996-4444','273335057164',0,'812 Muller View','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1209.jpg','fee725cb8fe2a5c7ee6d887628328717a9111389',0,'2024-07-02 10:17:32',NULL,'2024-07-02 10:17:20','2024-07-02 10:17:32');
/*!40000 ALTER TABLE `auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankAccounts`
--

DROP TABLE IF EXISTS `bankAccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankAccounts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `accountHolder` varchar(255) NOT NULL,
  `bankName` varchar(255) NOT NULL,
  `accountNumber` varchar(255) NOT NULL,
  `ownerAddress` varchar(255) DEFAULT NULL,
  `ownerContact` varchar(255) DEFAULT NULL,
  `accountType` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'VND',
  `branch` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankAccounts`
--

LOCK TABLES `bankAccounts` WRITE;
/*!40000 ALTER TABLE `bankAccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankAccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savingPlans`
--

DROP TABLE IF EXISTS `savingPlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savingPlans` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `termPeriod` int NOT NULL,
  `minimumBalance` float NOT NULL,
  `maximumBalance` float NOT NULL,
  `minimumEachTransaction` float NOT NULL,
  `maximumEachTransaction` float DEFAULT NULL,
  `interestRate` float NOT NULL,
  `interestRateBeforeDueDate` float NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `basicDescription` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'VND',
  `image` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `version` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savingPlans`
--

LOCK TABLES `savingPlans` WRITE;
/*!40000 ALTER TABLE `savingPlans` DISABLE KEYS */;
INSERT INTO `savingPlans` VALUES ('0f7ef53e-1e5d-4342-ba0e-6a6dcdc3f842',3,50000,50000000,50000,1000000,3.3,1,'High Interest Saving','High Interest Saving Plan for everyone','High Interest ',1,'2024-07-02 05:46:11','2024-07-02 05:46:11','VND','#5b2b64','2024-07-02 05:46:28','2024-07-02 05:46:28',0),('26f947d0-180e-4d45-866c-4ab799f339d7',3,10000,1000000000,50000,1000000000,5.7,1,'3 month saving package','3 month saving package is a saving plan for 3 months. Bringing attractive profit for the customers in the short period of time.','Flexible saving plan.',1,'2024-05-07 00:00:00',NULL,'VND','#007BFF','2024-06-05 07:16:04','2024-06-05 07:16:04',0),('5f51d137-c9e5-4a9b-a680-d42c8686e296',5,50000,50000000,50000,1000000,9,1,'High Interest Saving','High Interest Saving Plan for everyone','High Interest ',1,'2024-07-02 05:42:52','2024-07-02 05:42:52','VND','#5d5952','2024-07-02 05:43:04','2024-07-02 05:43:04',0),('80f54ea3-29e2-43e9-8d88-457ce207e685',0,10000,1000000000,50000,1000000000,3.5,1,'No due date saving package','No due date month saving package is the most versitile a saving plan. Bringing attractive profit for the customers in the short period of time.','Most Flexible',1,'2024-05-07 00:00:00',NULL,'VND','#00C49F','2024-06-05 07:21:00','2024-06-05 07:21:00',0),('a924c8f7-a8ce-4dab-8b48-9ec349baedde',12,50000,50000000,50000,1000000,4,1,'High Interest Saving','High Interest Saving Plan for everyone','High Interest ',1,'2024-07-02 05:43:23','2024-07-02 05:43:23','VND','#ebb08c','2024-07-02 05:43:59','2024-07-02 05:43:59',0),('b98b3aee-3001-4128-a7b1-3ecca8776ce6',1,10000,1000000000,50000,1000000000,4.7,1,'1 month saving package','1 month saving package is a saving plan for 1 months. Bringing attractive profit for the customers in the short period of time.','Should use',1,'2024-05-07 00:00:00',NULL,'VND','#8884d8','2024-06-05 07:17:18','2024-06-05 07:17:18',0),('cfeaccd8-0559-4a33-b2e1-88a03b4024b9',5,10000,1000000000,50,1000000000,6.3,1,'5 month saving package','5 month saving package is a saving plan for 5 months. Bringing attractive profit for the customers in the short period of time.','Attractive interest rate.',1,'2024-05-07 00:00:00',NULL,'VND','#FFBB28','2024-06-05 07:13:35','2024-06-05 07:13:35',0);
/*!40000 ALTER TABLE `savingPlans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bankAccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `savingPlanId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `amount` float NOT NULL,
  `isSuccessful` tinyint NOT NULL,
  `transactionDate` datetime NOT NULL,
  `scheduledDate` datetime DEFAULT NULL,
  `transactionType` tinyint NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('01b627df-9c56-43dd-a4de-d3c3e7f25afa','80101396-273b-4637-9b17-b39fdf9c1540','momo','cfeaccd8-0559-4a33-b2e1-88a03b4024b9',100000,1,'2024-07-02 02:32:31',NULL,1,'2024-07-02 02:32:32','2024-07-02 02:32:32'),('38bcdf19-4402-4f3f-8acd-81d0b7136fcd','80101396-273b-4637-9b17-b39fdf9c1540','momo','cfeaccd8-0559-4a33-b2e1-88a03b4024b9',10000,1,'2024-07-02 04:42:10',NULL,1,'2024-07-02 04:42:10','2024-07-02 04:42:10'),('49da804a-4b8a-47e1-9f39-85f639a9eb58','80101396-273b-4637-9b17-b39fdf9c1540','momo','b98b3aee-3001-4128-a7b1-3ecca8776ce6',100000,1,'2024-07-02 04:41:54',NULL,1,'2024-07-02 04:41:54','2024-07-02 04:41:54'),('58715e20-6c12-416e-8970-9c1d6e250c4c','80101396-273b-4637-9b17-b39fdf9c1540','momo','0f7ef53e-1e5d-4342-ba0e-6a6dcdc3f842',50000,1,'2024-07-03 04:35:53',NULL,1,'2024-07-03 04:35:53','2024-07-03 04:35:53'),('5ef830e3-e604-4e7c-8b93-81f37b8df0b7','80101396-273b-4637-9b17-b39fdf9c1540','momo','80f54ea3-29e2-43e9-8d88-457ce207e685',50000,1,'2024-06-11 07:55:51',NULL,1,'2024-06-11 07:55:51','2024-06-11 07:56:47'),('6a816336-2c0a-4a92-97cd-9c90fc3f8a17','80101396-273b-4637-9b17-b39fdf9c1540','momo','80f54ea3-29e2-43e9-8d88-457ce207e685',50000,1,'2024-07-02 04:42:00',NULL,1,'2024-07-02 04:42:00','2024-07-02 04:42:00'),('6e74ea09-c500-4a64-ae21-4c58e9ea22e3','80101396-273b-4637-9b17-b39fdf9c1540','momo','80f54ea3-29e2-43e9-8d88-457ce207e685',50000,1,'2015-06-30 05:22:08',NULL,1,'2015-06-30 05:22:08','2024-06-11 05:22:40'),('7e0eaa49-1ce3-433f-af5c-cc0231939cfd','80101396-273b-4637-9b17-b39fdf9c1540','momo','b98b3aee-3001-4128-a7b1-3ecca8776ce6',1000000,1,'2024-06-11 12:52:39',NULL,1,'2024-06-11 12:52:39','2024-06-11 12:53:00'),('9992d991-3f81-4345-8797-1cc55389c2ec','80101396-273b-4637-9b17-b39fdf9c1540','momo','b98b3aee-3001-4128-a7b1-3ecca8776ce6',50000,1,'2024-07-02 05:24:55',NULL,1,'2024-07-02 05:24:55','2024-07-02 05:24:55'),('9c3707ec-5e8e-4a7b-be5d-bf5f2f3fc4a1','80101396-273b-4637-9b17-b39fdf9c1540','momo','26f947d0-180e-4d45-866c-4ab799f339d7',100000,1,'2024-07-02 04:33:09',NULL,1,'2024-07-02 04:33:10','2024-07-02 04:33:10');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userSavings`
--

DROP TABLE IF EXISTS `userSavings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userSavings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `savingPlanId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `totalAmount` float NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT '2024-06-11 05:18:52',
  `currency` varchar(255) NOT NULL DEFAULT 'VND',
  `targetAmount` float DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `version` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`userId`,`savingPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userSavings`
--

LOCK TABLES `userSavings` WRITE;
/*!40000 ALTER TABLE `userSavings` DISABLE KEYS */;
INSERT INTO `userSavings` VALUES ('56abd8c4-aa11-4cc7-9a3b-be7f625d28c6','80101396-273b-4637-9b17-b39fdf9c1540','26f947d0-180e-4d45-866c-4ab799f339d7',100000,'2024-07-01 17:05:01','VND',NULL,'2024-07-02 04:33:10',1),('8caf4d9e-c0f4-4b95-ab38-56cde38796fe','80101396-273b-4637-9b17-b39fdf9c1540','cfeaccd8-0559-4a33-b2e1-88a03b4024b9',110000,'2024-07-01 17:05:01','VND',NULL,'2024-07-02 04:42:10',2),('a871e93e-d8ca-4b12-b71a-9a23584a8ccf','80101396-273b-4637-9b17-b39fdf9c1540','0f7ef53e-1e5d-4342-ba0e-6a6dcdc3f842',50000,'2024-07-03 03:42:17','VND',NULL,'2024-07-03 04:35:53',1),('c36fb46b-4eca-40aa-a6ba-36956dbe7e02','80101396-273b-4637-9b17-b39fdf9c1540','80f54ea3-29e2-43e9-8d88-457ce207e685',150000,'2015-06-30 12:19:43','VND',NULL,'2024-07-02 04:42:00',3),('e3c720ca-4185-4dab-ad69-26c9ebeb50b3','80101396-273b-4637-9b17-b39fdf9c1540','b98b3aee-3001-4128-a7b1-3ecca8776ce6',1150000,'2024-06-11 08:25:08','VND',NULL,'2024-07-02 05:24:55',3);
/*!40000 ALTER TABLE `userSavings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-03 10:50:13
