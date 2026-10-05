-- =========================================================
-- PROYECTO INTEGRADOR - EMPRESA PIN
-- CONSULTAS SQL
-- =========================================================

USE EMPRESA;


-- =========================================================
-- 1. CANTIDAD DE EMPLEADOS POR SUCURSAL
-- =========================================================

-- select count(*) from empleados;

  select SucursalID,
	count(EmpleadoID) as Cantidad_Empleados
  from empleados
  group by SucursalID
  order by Cantidad_Empleados desc;


-- =========================================================
-- 2. ANTIGÜEDAD DE CADA SUCURSAL
-- =========================================================

-- select * from sucursales;
   select sucursalID,
          FechaApertura,
          timestampdiff(year, FechaApertura, curdate()) as Antiguedad_En_Anios
   from sucursales
   order by FechaApertura ASC;


-- =========================================================
-- 3. CANTIDAD DE PROVEEDORES POR TIPO EN ESPAÑA
-- =========================================================

-- select * from proveedores;
   select tipo,
          count(ProveedorID) as Cantidad_Proveedores
   from proveedores
   where Pais = 'España'
   group by Tipo
   order by Cantidad_Proveedores desc;clientes
