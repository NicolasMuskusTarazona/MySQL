-- Active: 1748518169470@@127.0.0.1@3309@familia

/* Borrar todos los datos*/
DELETE FROM Integrantes;

/* DATOS Integrantes*/
INSERT INTO `Integrantes` (`id`,`nacimiento`,`name`) VALUES
(1, '2008-02-15', 'Nicolas Muskus Tarazona'),
(2, '2008-02-15', 'Danilo Muskus Tarazona'),
(3, '1965-12-10', 'Orlando Manuel Muskus'),
(4, '1973-06-16', 'Yojana Tarazona Vanegas');

-- Borrar datos Nombre
-- UPDATE `Integrantes`
-- SET `name` = ''

INSERT INTO `Integrantes` (`name`) VALUES
('idk')

/* Eliminar un dato especifico*/
DELETE FROM Integrantes
WHERE id = 5;

/* Eliminar varios datos especificos*/
DELETE FROM Integrantes
WHERE id IN (1,3,4);
