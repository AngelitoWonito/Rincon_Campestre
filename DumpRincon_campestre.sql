-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: rincon_campestre
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
-- Table structure for table `abastecedor`
--

DROP TABLE IF EXISTS `abastecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abastecedor` (
  `Id_Abastecedor` int NOT NULL AUTO_INCREMENT,
  `Nombre_empresa` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Correo_electronico` varchar(45) DEFAULT NULL,
  `Tipo_productos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Abastecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abastecedor`
--

LOCK TABLES `abastecedor` WRITE;
/*!40000 ALTER TABLE `abastecedor` DISABLE KEYS */;
INSERT INTO `abastecedor` VALUES (1,'Semillas.INC','+56928140406','Valparaiso','SemillassallimeS@gmail.com','Semillas'),(2,'Acme','+56978956324','Viña del mar','ACME-INC@gmail.com','Diversos accesorios'),(3,'Insumos Jose','+56965986857','Iquique','ElPepe@gmail.com','Flores'),(4,'Joja-cola','+56929685748','Talca','Joja-Cola-business@gmail.com','Consumibles');
/*!40000 ALTER TABLE `abastecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `Id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(45) DEFAULT NULL,
  `descripcion_categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Accesorios','Articulos variados de utilidad para el ambito de la agricultura'),(2,'Cultivo verano','Variedad de semillas y cultivos para la estacion de verano'),(3,'Cultivo otoño','Variedad de semillas y cultivos para la estacion de otoño'),(4,'Cultivo primavera','Variedad de semillas y cultivos para la estacion de primavera');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Id_cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre_completo` varchar(45) DEFAULT NULL,
  `Correo_electronico` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Angelito Pino','angapicar@gmail.com','+56928140406','Valparaiso','2002-07-12'),(2,'Thean Orlandi','thinMOG@gmail.com','+56992611021','Nueva Dirección 123','2018-03-05'),(3,'Limo Dev','limo@outlook.com','+56947711689','Machu pichu','2012-06-12'),(4,'Ariel Miranda','Tigrefurioso69@alumnos.uv.cl','+56946589687','Valparaiso','2020-07-19'),(5,'Emma Watson','Harrypotter@gmail.com','+56931567845','Quilpue','2022-05-21');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `Id_detalle_pedido` int NOT NULL AUTO_INCREMENT,
  `Id_Producto_detalle_pedido` int DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Precio_Unitario` int DEFAULT NULL,
  `Subtotal` int DEFAULT NULL,
  PRIMARY KEY (`Id_detalle_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,5,5,1000,5000),(2,4,10,800,8000),(3,3,45,1200,54000),(4,2,13,700,9100),(5,1,45,200,9000);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_pedido`
--

DROP TABLE IF EXISTS `info_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_pedido` (
  `Id_pedido_info` int NOT NULL,
  `Id_detalle_info` int NOT NULL,
  PRIMARY KEY (`Id_pedido_info`,`Id_detalle_info`),
  KEY `Id_detalle_info` (`Id_detalle_info`),
  CONSTRAINT `info_pedido_ibfk_1` FOREIGN KEY (`Id_pedido_info`) REFERENCES `pedido` (`Id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `info_pedido_ibfk_2` FOREIGN KEY (`Id_detalle_info`) REFERENCES `detalle_pedido` (`Id_detalle_pedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_pedido`
--

LOCK TABLES `info_pedido` WRITE;
/*!40000 ALTER TABLE `info_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Id_pedido` int NOT NULL AUTO_INCREMENT,
  `Fecha_pedido` date DEFAULT NULL,
  `Estado_pedido` varchar(45) DEFAULT NULL,
  `Metodo_pago` varchar(45) DEFAULT NULL,
  `Total_Pedido` decimal(10,2) DEFAULT NULL,
  `Id_cliente_pedido` int DEFAULT NULL,
  PRIMARY KEY (`Id_pedido`),
  KEY `Id_cliente_pedido` (`Id_cliente_pedido`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Id_cliente_pedido`) REFERENCES `cliente` (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2024-09-11','Enviado','Tarjeta de Debito',12000.00,5),(2,'2023-12-12','Completado','Efectivo',6000.00,4),(3,'2021-02-11','Completado','Tarjeta de Credito',45000.00,3),(4,'2024-09-21','Procesando','Tarjeta de Debito',1200.00,2),(5,'2024-08-11','Completado','Tarjeta de Credito',30450.00,1);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `Id_producto` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `Precio` int DEFAULT NULL,
  `Cantidad_stock` int DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Fecha_Creacion` date DEFAULT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Semillas de amapola','Plántalas en Verano. Tardan 7 días en producir una flor de color rojo vivo.',200,100,'Cultivo verano','2024-09-20',NULL),(2,'Fertilizante básico','Mejora un poco la calidad del suelo y hace más fácil conseguir cultivos de calidad',1000,50,'Accesorios','2024-08-20',NULL),(3,'Semillas de maíz','Tardan 14 días en madurar, y siguen produciendo tras la primera cosecha.',400,100,'Cultivo verano/otoño','2024-09-20',NULL),(4,'Semillas de girasol','Tardan 8 días en producir un gran girasol. Al cosecharlo deja caer más semillas.',400,150,'Cultivo verano/otoño','2024-08-20',NULL),(5,'Ramo de flores','Un regalo que demuestra interés amoroso.',800,50,'Flores','2024-09-20',NULL),(6,'Manzanas','Fruta fresca',200,50,'Frutas','2024-09-25',NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `Id_vendedor` int NOT NULL AUTO_INCREMENT,
  `Nombre_completo` varchar(45) DEFAULT NULL,
  `Correo_electronico` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Fecha_contratacion` date DEFAULT NULL,
  `Comision_Venta` int DEFAULT NULL,
  PRIMARY KEY (`Id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Carlos Herrera','angapicar@gmail.com','+56928140406','Valparaiso','2020-11-08',2000),(2,'Juan Soto','sotootos@gmail.com','+56948657984','Valparaiso','2024-07-12',4568),(3,'Pedro Sanchez','mexicofdw@gmail.com','+56924563859','Puerto montt','2009-12-12',1658),(4,'Carolina Valdivia','epilepsiapower@gmail.com','+56996857412','Valdivia','2011-11-11',7895),(5,'Millaray Lobos','felipetkm@gmail.com','+56934976158','Viña del mar','2013-02-13',3615);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 20:32:26
