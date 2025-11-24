-----------------------------------------------AVANCE 4-------------------------------------------------------------------------------

/* 1. Listar todos los productos y sus categorías:
¿Cómo puedo obtener una lista de todos los productos junto con sus categorías?*/

SELECT p.Nombre AS Producto, c.Nombre AS Categorias
FROM Productos AS p
INNER JOIN Categorias AS c
	ON c.CategoriaID = p.CategoriaID

/* 2. Obtener empleados y su sucursal asignada:
¿Cómo puedo saber a qué sucursal está asignado cada empleado?*/

SELECT s.Nombre AS Sucursales, e.Nombre AS Empleados
FROM Empleados AS e
INNER JOIN Sucursales AS s
	ON s.SucursalID = e.SucursalID

/* 3. Identificar productos sin categoría asignada:
¿Existen productos que no tienen una categoría asignada?*/

SELECT *
FROM Productos AS p
LEFT JOIN Categorias AS c
	ON p.CategoriaID = c.CategoriaID
WHERE p.CategoriaID IS NULL

/* 4. Detalle completo de órdenes:
¿Cómo puedo obtener un detalle completo de las órdenes, incluyendo el Nombre del cliente, 
Nombre del empleado que tomó la orden, y Nombre del mensajero que la entregó?*/

SELECT	o.*,
		c.Nombre AS Clientes,
		e.Nombre AS Empleados,
		m.Nombre AS Mensajeros
FROM Ordenes AS o
INNER JOIN Clientes AS c
	ON o.CLienteID = c.ClienteID
INNER JOIN Empleados AS e
	ON o.EmpleadoID = e.EmpleadoID
INNER JOIN  Mensajeros AS m
	ON o.MensajeroID = m.MensajeroID

/* 5. Productos vendidos por sucursal:
¿Cuántos artículos correspondientes a cada Categoría de Productos se han vendido en cada sucursal?*/

SELECT	c.Nombre AS Categoria,
		s.Nombre AS Sucursal,
		SUM(do.Cantidad) AS 'Articulos Vendidos'
FROM Ordenes AS o
INNER JOIN DetalleOrdenes AS do
	ON o.OrdenID = do.OrdenID
INNER JOIN Productos AS p
	ON do.ProductoID = p.ProductoID
INNER JOIN Categorias AS c
	ON p.CategoriaID = c.CategoriaID
INNER JOIN Sucursales AS s
	ON o.SucursalID = s.SucursalID
GROUP BY c.Nombre, s.Nombre

