-- =========================================================
-- PROYECTO INTEGRADOR - EMPRESA PIN
-- CARGA DE DATOS DESDE ARCHIVOS CSV
-- =========================================================

USE EMPRESA;


-- =========================================================
-- CARGA DE PROVEEDORES
-- =========================================================

LOAD DATA LOCAL INFILE 'C:/'ruta/al/archivo.csv''
INTO TABLE proveedores
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- =========================================================
-- CARGA DE EMPLEADOS
-- =========================================================

LOAD DATA LOCAL INFILE 'C:/'ruta/al/archivo.csv''
INTO TABLE empleados
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- =========================================================
-- CARGA DE SUCURSALES
-- =========================================================

LOAD DATA LOCAL INFILE 'C:/'ruta/al/archivo.csv''
INTO TABLE sucursales
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
