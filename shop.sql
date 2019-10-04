CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `id_usuario` int(11) NOT NULL,
  `cantidad_carrito` int(10) NOT NULL,
  `id_carrito` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_carrito`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_producto`
--

DROP TABLE IF EXISTS `carrito_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito_producto` (
  `id_carrito` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  KEY `id_carrito` (`id_carrito`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `carrito_producto_ibfk_1` FOREIGN KEY (`id_carrito`) REFERENCES `carrito` (`id_carrito`),
  CONSTRAINT `carrito_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_producto`
--

LOCK TABLES `carrito_producto` WRITE;
/*!40000 ALTER TABLE `carrito_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `id_categoria` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  KEY `id_categoria` (`id_categoria`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `categoria_producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `categoria_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deseos`
--

DROP TABLE IF EXISTS `deseos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deseos` (
  `id_usuario` int(11) NOT NULL,
  `id_deseos` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_deseos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deseos`
--

LOCK TABLES `deseos` WRITE;
/*!40000 ALTER TABLE `deseos` DISABLE KEYS */;
/*!40000 ALTER TABLE `deseos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deseos_producto`
--

DROP TABLE IF EXISTS `deseos_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deseos_producto` (
  `id_deseos` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  KEY `id_producto` (`id_producto`),
  KEY `id_deseos` (`id_deseos`),
  CONSTRAINT `deseos_producto_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `deseos_producto_ibfk_2` FOREIGN KEY (`id_deseos`) REFERENCES `deseos` (`id_deseos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deseos_producto`
--

LOCK TABLES `deseos_producto` WRITE;
/*!40000 ALTER TABLE `deseos_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `deseos_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `id_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) NOT NULL,
  `codigo_postal` int(6) NOT NULL,
  `direccion1` varchar(100) NOT NULL,
  `direccion2` varchar(100) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_prov_esta` int(11) NOT NULL,
  PRIMARY KEY (`id_direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_envio`
--

DROP TABLE IF EXISTS `direccion_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion_envio` (
  `id_direccion_envio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_receptor` varchar(20) NOT NULL,
  `direccion1` varchar(100) NOT NULL,
  `direccion2` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `prov_est` varchar(50) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `instruccion_entrega` varchar(100) DEFAULT NULL,
  `codigo_seguridad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_direccion_envio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_envio`
--

LOCK TABLES `direccion_envio` WRITE;
/*!40000 ALTER TABLE `direccion_envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_producto`
--

DROP TABLE IF EXISTS `estado_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_producto` (
  `id_estado_producto` int(11) NOT NULL AUTO_INCREMENT,
  `estado_producto` varchar(10) NOT NULL,
  PRIMARY KEY (`id_estado_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_producto`
--

LOCK TABLES `estado_producto` WRITE;
/*!40000 ALTER TABLE `estado_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `total` float NOT NULL,
  `fecha_enviado` date NOT NULL,
  `id_direccion_envio` int(11) NOT NULL,
  `id_velocidad_envio` int(11) NOT NULL,
  `id_metodo_pago` int(11) NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_direccion_envio` (`id_direccion_envio`),
  KEY `id_velocidad_envio` (`id_velocidad_envio`),
  KEY `id_metodo_pago` (`id_metodo_pago`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_direccion_envio`) REFERENCES `direccion_envio` (`id_direccion_envio`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_velocidad_envio`) REFERENCES `velocidad_envio` (`id_velocidad_envio`),
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identificacion`
--

DROP TABLE IF EXISTS `identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identificacion` (
  `id_identificacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_identificacion` int(2) NOT NULL,
  `numero_identificacion` varchar(20) NOT NULL,
  `fecha_caducidad` date NOT NULL,
  PRIMARY KEY (`id_identificacion`),
  KEY `id_tipo_identificacion` (`id_tipo_identificacion`),
  CONSTRAINT `identificacion_ibfk_1` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `tipo_identificacion` (`id_tipo_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificacion`
--

LOCK TABLES `identificacion` WRITE;
/*!40000 ALTER TABLE `identificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `id_imagenes` int(11) NOT NULL AUTO_INCREMENT,
  `dir_imagen` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_imagenes`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodo_pago`
--

DROP TABLE IF EXISTS `metodo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tarjeta` varchar(20) NOT NULL,
  `numero_tarjeta` varchar(30) NOT NULL,
  `fecha_expiracion` date NOT NULL,
  `cvc_tarjeta` int(5) NOT NULL,
  PRIMARY KEY (`id_metodo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_pago`
--

LOCK TABLES `metodo_pago` WRITE;
/*!40000 ALTER TABLE `metodo_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negocio`
--

DROP TABLE IF EXISTS `negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negocio` (
  `id_negocio` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nombre_comercial` varchar(100) NOT NULL,
  PRIMARY KEY (`id_negocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negocio`
--

LOCK TABLES `negocio` WRITE;
/*!40000 ALTER TABLE `negocio` DISABLE KEYS */;
/*!40000 ALTER TABLE `negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_contacto`
--

DROP TABLE IF EXISTS `persona_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_contacto` (
  `id_persona_Contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre1` varchar(20) NOT NULL,
  `nombre2` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_telefono` int(11) NOT NULL,
  `id_identidad` int(11) NOT NULL,
  PRIMARY KEY (`id_persona_Contacto`),
  KEY `id_identidad` (`id_identidad`),
  CONSTRAINT `persona_contacto_ibfk_1` FOREIGN KEY (`id_identidad`) REFERENCES `identificacion` (`id_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_contacto`
--

LOCK TABLES `persona_contacto` WRITE;
/*!40000 ALTER TABLE `persona_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_proveedor`
--

DROP TABLE IF EXISTS `plan_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_proveedor` (
  `id_plan_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(40) NOT NULL,
  `precio` float NOT NULL,
  `detalles` varchar(100) NOT NULL,
  PRIMARY KEY (`id_plan_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_proveedor`
--

LOCK TABLES `plan_proveedor` WRITE;
/*!40000 ALTER TABLE `plan_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prefijo_telefono`
--

DROP TABLE IF EXISTS `prefijo_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prefijo_telefono` (
  `id_prefijo_telefono` int(11) NOT NULL AUTO_INCREMENT,
  `prefijo_telefono` int(4) NOT NULL,
  `id_pais` int(11) NOT NULL,
  PRIMARY KEY (`id_prefijo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prefijo_telefono`
--

LOCK TABLES `prefijo_telefono` WRITE;
/*!40000 ALTER TABLE `prefijo_telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefijo_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `precio_envio` float NOT NULL,
  `detalles` varchar(225) NOT NULL,
  `stock_total` int(10) DEFAULT '0',
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `id_plan_proveedor` int(11) NOT NULL,
  `id_direccion_proveedor` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_telefono` int(11) NOT NULL,
  `id_persona_contacto` int(11) NOT NULL,
  `num_registro` int(20) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `id_usuario` (`id_usuario`),
  KEY `id_negocio` (`id_negocio`),
  KEY `id_telefono` (`id_telefono`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`),
  CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`id_telefono`) REFERENCES `telefono` (`id_telefono`),
  CONSTRAINT `proveedor_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(20) NOT NULL,
  `descripcion_rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_proveedor`
--

DROP TABLE IF EXISTS `stock_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_proveedor` (
  `id_stock_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `stock_proveedor` int(10) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_estado_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_stock_proveedor`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_producto` (`id_producto`),
  KEY `id_estado_producto` (`id_estado_producto`),
  CONSTRAINT `stock_proveedor_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  CONSTRAINT `stock_proveedor_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `stock_proveedor_ibfk_4` FOREIGN KEY (`id_estado_producto`) REFERENCES `estado_producto` (`id_estado_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_proveedor`
--

LOCK TABLES `stock_proveedor` WRITE;
/*!40000 ALTER TABLE `stock_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL AUTO_INCREMENT,
  `numero_telefono` varchar(20) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_prefijo_telefono` int(11) NOT NULL,
  PRIMARY KEY (`id_telefono`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_prefijo_telefono` (`id_prefijo_telefono`),
  CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `telefono_ibfk_2` FOREIGN KEY (`id_prefijo_telefono`) REFERENCES `prefijo_telefono` (`id_prefijo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_identificacion`
--

DROP TABLE IF EXISTS `tipo_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_identificacion` (
  `id_tipo_identificacion` int(2) NOT NULL AUTO_INCREMENT,
  `tipo_identificacion` varchar(20) NOT NULL,
  PRIMARY KEY (`id_tipo_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_identificacion`
--

LOCK TABLES `tipo_identificacion` WRITE;
/*!40000 ALTER TABLE `tipo_identificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(20) NOT NULL,
  `clave_usuario` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `velocidad_envio`
--

DROP TABLE IF EXISTS `velocidad_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `velocidad_envio` (
  `id_velocidad_envio` int(11) NOT NULL AUTO_INCREMENT,
  `velocidad_envio` varchar(20) NOT NULL,
  PRIMARY KEY (`id_velocidad_envio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `velocidad_envio`
--

LOCK TABLES `velocidad_envio` WRITE;
/*!40000 ALTER TABLE `velocidad_envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `velocidad_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-04 10:53:55
