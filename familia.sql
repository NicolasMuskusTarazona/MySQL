-- Active: 1748445201108@@127.0.0.1@3307@familia
DROP DATABASE IF EXISTS `familia`;
CREATE DATABASE `familia`;
USE `familia`;

CREATE TABLE `Integrantes`(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    `nacimiento` DATE,
    name VARCHAR(255)
) COMMENT '';

DROP TABLE IF EXISTS `Mascotas`;
CREATE TABLE `Mascotas`(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    `nacimiento` DATE,
    name VARCHAR(255)
) COMMENT '';

DROP TABLE IF EXISTS `Ubicacion`;
CREATE TABLE `Ubicacion`(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    `barrio_id`int NOT NULL,
    `calle` VARCHAR(255),
    `diagonal` VARCHAR(255),
    `tipo` VARCHAR(255)
)