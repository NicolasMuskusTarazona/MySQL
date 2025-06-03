-- Active: 1748951070270@@127.0.0.1@3307@empresa
DROP DATABASE IF EXISTS `empresa`;
CREATE DATABASE `empresa`;
USE `empresa`;

DROP TABLES IF EXISTS `clientes`;

CREATE TABLE `clientes`(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    `FullName`VARCHAR(255),
    `Address`VARCHAR(255),
    `Phone`VARCHAR(20),
    `Credit`BIGINT
);

INSERT INTO `clientes` (`id`, `FullName`, `Address`, `Phone`, `Credit`) VALUES
(1, 'Nicolas Muskus Tarazona', 'Cra 12 #34-56, Bogota', '3104567890', 15000),
(2, 'Nicolas Muskus Tarazona', 'Cra 12 #34-56, Bogota', '3104567890', 15000),
(3, 'Danilo Muskus Tarazona', 'Av Siempre Viva 123, Medellin','3112345678', 200000),
(4, 'Orlando Manuel Muskus', 'Calle 8 #45-67, Cali', '3001122334', 34000),
(5, 'Yojana Tarazona Vanegas', 'Carrera 7 #23-45, Bucaramanga', '3023344556', 170000);

SELECT * FROM clientes WHERE Credit BETWEEN 45000 AND 200000;

/* Mayor a menor */
SELECT * FROM clientes
ORDER BY `Credit` DESC;

/* Menor a mayor */
SELECT * FROM clientes
ORDER BY `Credit` ASC;

-- Suma entre todos los creditos
SELECT SUM(`Credit`) FROM `clientes`;

-- Filtrar nombre -> la segunda letra con r 
SELECT `FullName` FROM `clientes` WHERE `FullName` LIKE '_r%' ORDER BY `FullName` DESC;

SELECT DISTINCT `FullName` FROM clientes;

/*
Diferencias entre Group By && DISTINCT
*/

-- Promedio
SELECT AVG(Credit) AS PromedioCredito FROM clientes;
