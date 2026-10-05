-- =========================================================
-- PROYECTO INTEGRADOR - EMPRESA PIN
-- CREACIÓN DE BASE DE DATOS Y TABLAS
-- =========================================================

-- Crear base de datos
CREATE DATABASE EMPRESA;

-- Seleccionar base de datos
USE EMPRESA;


-- =========================================================
-- TABLA: SUCURSALES
-- =========================================================

CREATE TABLE sucursales (
    SucursalID    VARCHAR(6)   PRIMARY KEY,
    EncargadoID   VARCHAR(7)   NOT NULL,
    Ciudad        VARCHAR(50),
    Pais          VARCHAR(50),
    Actividad     VARCHAR(100),
    FechaApertura DATE         NOT NULL
);


-- =========================================================
-- TABLA: EMPLEADOS
-- =========================================================

CREATE TABLE empleados (
    EmpleadoID      VARCHAR(10)  PRIMARY KEY,
    Nombre          VARCHAR(50)  NOT NULL,
    Apellido        VARCHAR(50)  NOT NULL,
    FechaNacimiento DATE         NOT NULL,
    Telefono        VARCHAR(25)  NOT NULL,
    Mail            VARCHAR(100)  NOT NULL UNIQUE,
    Ciudad          VARCHAR(50),
    Pais            VARCHAR(50),
    Puesto          VARCHAR(50)  NOT NULL,
    SucursalID      VARCHAR(50)  NOT NULL
);


-- =========================================================
-- TABLA: PROVEEDORES
-- =========================================================

CREATE TABLE proveedores (
    ProveedorID    VARCHAR(10)   PRIMARY KEY,
    Nombre         VARCHAR(100)  NOT NULL,
    Tipo           VARCHAR(50),
    Actividad      VARCHAR(50),
    Mail           VARCHAR(100)  NOT NULL UNIQUE,
    Ciudad          VARCHAR(50),
    Pais            VARCHAR(50),
    Representante  VARCHAR(100)
);

