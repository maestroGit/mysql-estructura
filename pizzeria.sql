
CREATE SCHEMA IF NOT EXISTS `pizzeria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pizzeria` ;

CREATE TABLE IF NOT EXISTS `pizzeria`.`empleado` (  `id_empleado` INT NOT NULL AUTO_INCREMENT,  `nombre` VARCHAR(25) NOT NULL,  `apellido1` VARCHAR(25) NOT NULL,  `apellido2` VARCHAR(25) NOT NULL,  `nif` INT NULL DEFAULT NULL,  `telefono` INT NULL DEFAULT NULL,  `tipo` VARCHAR(25) NOT NULL,  PRIMARY KEY (`id_empleado`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`producto` (  `id_producto` INT NOT NULL AUTO_INCREMENT,  `nombre` VARCHAR(25) NOT NULL,  `descripcion` VARCHAR(25) NULL DEFAULT NULL,  `precio` FLOAT NULL DEFAULT NULL,  PRIMARY KEY (`id_producto`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`pizza` (  `id_producto` INT NOT NULL ,  `nombre` VARCHAR(25) NOT NULL, `id_categoria` INT NOT NULL, PRIMARY KEY (`id_producto`), FOREIGN KEY (`id_producto`)    REFERENCES `pizzeria`.`producto` (`id_producto`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`categoria` (  `id_categoria` INT NOT NULL AUTO_INCREMENT,  `nombre` VARCHAR(25) NOT NULL, `id_producto` INT NOT NULL, PRIMARY KEY (`id_categoria`), FOREIGN KEY (`id_producto`)    REFERENCES `pizzeria`.`pizza` (`id_producto`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`provincia` (  `id_provincia` INT NOT NULL AUTO_INCREMENT,  `nombre` VARCHAR(25) NOT NULL,  PRIMARY KEY (`id_provincia`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`poblacion` (  `id_poblacion` INT NOT NULL AUTO_INCREMENT,  `nombre` VARCHAR(25) NOT NULL,  `id_provincia` INT NOT NULL,  PRIMARY KEY (`id_poblacion`),  INDEX `id_provincia` (`id_provincia` ASC),  CONSTRAINT `poblacion_ibfk_1`    FOREIGN KEY (`id_provincia`)    REFERENCES `pizzeria`.`provincia` (`id_provincia`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`tienda` (  `id_tienda` INT NOT NULL AUTO_INCREMENT,  `direccion` VARCHAR(25) NOT NULL,  `cod_postal` INT NULL DEFAULT NULL, `id_poblacion` INT NOT NULL,  PRIMARY KEY (`id_tienda`), FOREIGN KEY (`id_poblacion`)    REFERENCES `pizzeria`.`poblacion` (`id_poblacion`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`cliente` (  `id_cliente` INT NOT NULL AUTO_INCREMENT,  `nombre` VARCHAR(25) NOT NULL, `apellido1` VARCHAR(25) NOT NULL,  `apellido2` VARCHAR(25) NOT NULL,  `direccion` VARCHAR(25) NULL DEFAULT NULL, `codigo_postal` INT NULL DEFAULT NULL, `telefono` INT NULL DEFAULT NULL, `id_poblacion` INT NOT NULL,  PRIMARY KEY (`id_cliente`), FOREIGN KEY (`id_poblacion`)    REFERENCES `pizzeria`.`poblacion` (`id_poblacion`));
CREATE TABLE IF NOT EXISTS `pizzeria`.`pedido` (  `id_pedido` INT NOT NULL AUTO_INCREMENT,  `fecha` DATETIME NULL DEFAULT NULL,  `id_repartidor` INT NOT NULL,  `fecha_entrega` DATETIME NULL DEFAULT NULL,  `precio_total` FLOAT NULL DEFAULT NULL,  `tipo` VARCHAR(25) NULL DEFAULT NULL,  `id_cliente` INT NULL DEFAULT NULL,  `id_tienda` INT NULL DEFAULT NULL, FOREIGN KEY (`id_cliente`)    REFERENCES `pizzeria`.`cliente` (`id_cliente`), FOREIGN KEY (`id_tienda`)    REFERENCES `pizzeria`.`tienda` (`id_tienda`), FOREIGN KEY (`id_cliente`)    REFERENCES `pizzeria`.`cliente` (`id_cliente`), FOREIGN KEY (`id_repartidor`)    REFERENCES `pizzeria`.`empleado` (`id_empleado`), PRIMARY KEY (`id_pedido`));

-- INSERT INTO provincia (id_provincia, nombre) VALUES (1, 'Barcelona'),(2, 'Tarragona'),(3, 'Gerona'),(4, 'Lerida');
-- INSERT INTO poblacion (id_poblacion, nombre, id_provincia) VALUES (1, 'Barcelona',1), (2, 'Granollers',1),(3, 'Reus',2),(4, 'Gerona',3),(5, 'Mollerusa',4);
-- INSERT INTO cliente (id_cliente, nombre, apellido1, apellido2, codigo_postal, telefono, id_poblacion) VALUES (1, 'Javier','Maestro','Rodríguez', 08026, 669895369,1);
-- INSERT INTO empleado (id_empleado, nombre, apellido1, apellido2, nif, telefono, tipo) VALUES (1, 'Juan', 'López', 'Serrano', 52589625, 659825896, 'cocinero'),(2, 'Luis', 'Pérez', 'Sol', 256958254, 625988957, 'repartidor');
-- INSERT INTO producto ( id_producto,  nombre,  descripcion,  precio) VALUES ( 1,  'margarita',  'piza de tomate y queso',  10.2), ( 2,  'big-burguer',  'hamburguesa doble', 9.5);
-- INSERT INTO pizza (id_categoria, nombre, id_producto) VALUES (1, 'pizza', 1);

