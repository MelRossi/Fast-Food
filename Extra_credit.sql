-----------------------------------------------EXTRA CREDIT-----------------------------------------------------------------

-- Se procede a cargar datos en las siguientes tablas:
--Tabla DetalleOrdenes
INSERT INTO DetalleOrdenes (OrdenID, ProductoID, Cantidad, Precio)
VALUES
(2, 1, 2, 23.44),
(2, 3, 4, 46.37),
(2, 4, 3, 42.34),
(2, 5, 1, 18.25),
(2, 6, 3, 20.08),
(2, 8, 5, 20.96),
(2, 9, 2, 30.13),
(2, 10, 4, 38.34),
(3, 1, 5, 23.44),
(3, 2, 2, 45.14),
(3, 3, 1, 46.37),
(3, 4, 4, 42.34),
(3, 5, 2, 18.25),
(3, 6, 1, 20.08),
(3, 7, 3, 13.31),
(3, 9, 1, 30.13),
(3, 10, 2, 38.34),
(4, 1, 3, 23.44),
(4, 2, 1, 45.12),
(4, 3, 2, 46.37),
(4, 4, 2, 42.34),
(4, 5, 4, 18.25),
(4, 6, 3, 20.08),
(4, 8, 4, 20.96),
(4, 7, 5, 13.31),
(4, 9, 2, 30.13),
(4, 10, 2, 38.34);

SELECT * FROM DetalleOrdenes

--Tabla Empleados
INSERT INTO Empleados (Nombre, Posicion, Departamento, SucursalID, Rol)
VALUES
('Carlos Pérez', 'Cajero', 'Ventas', 2, 'Vendedor'),
('Mariana López', 'Barista', 'Cafetería', 2, 'Vendedor'),
('Javier Torres', 'Chef', 'Cocina', 2, 'Vendedor'),
('Valeria Gómez', 'Repartidor', 'Logística', 3, 'Mensajero'),
('Federico Ramos', 'Atención al Cliente', 'Servicio', 3, 'Vendedor'),
('Laura Benítez', 'Subgerente', 'Administración', 3, 'Vendedor'),
('Pablo Herrera', 'Mesero', 'Restaurante', 4, 'Vendedor'),
('Sofía Fernández', 'Auxiliar de Limpieza', 'Mantenimiento', 4, 'Vendedor'),
('Diego Castro', 'Encargado de Turno', 'Administración', 5, 'Vendedor'),
('Natalia Cabrera', 'Cajero', 'Ventas', 5, 'Vendedor'),
('Ricardo Molina', 'Gerente de Turno', 'Administración', 6, 'Vendedor'),
('Paula Sánchez', 'Chef de Pastelería', 'Cocina', 6, 'Vendedor'),
('Martín Ruiz', 'Cajero Senior', 'Ventas', 7, 'Vendedor'),
('Daniela Herrera', 'Barista', 'Cafetería', 7, 'Vendedor'),
('Gonzalo Díaz', 'Repartidor', 'Logística', 8, 'Mensajero'),
('Florencia Silva', 'Atención al Cliente', 'Servicio', 8, 'Vendedor'),
('Javier Morales', 'Mesero', 'Restaurante', 8, 'Vendedor'),
('Camila Ortega', 'Encargada de Turno', 'Administración', 9, 'Vendedor'),
('Marcos Fernández', 'Auxiliar de Limpieza', 'Mantenimiento', 9, 'Vendedor'),
('Julieta Ramos', 'Subgerente', 'Ventas', 9, 'Vendedor');

SELECT * FROM Empleados

-- Tabla Ordenes
INSERT INTO Ordenes (ClienteID, EmpleadoID, SucursalID, MensajeroID, TipoPagoID, OrigenID, HorarioVenta, TotalCompra, KilometrosRecorrer, 
FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista) 
VALUES
(3, 8, 2, 2, 7, 1, 'Tarde', 1125.00, 6.00, '20231015 14:30:00', '20231015 15:20:00', '20231015 14:00:00', '20231015 14:15:00'),
(9, 4, 1, 3, 3, 3, 'Mañana', 980.00, 4.50, '20231005 09:10:00', '20231005 09:50:00', '20231005 08:30:00', '20231005 08:50:00'),
(5, 7, 3, 4, 4, 4, 'Noche', 875.00, 1.20, '20231103 19:30:00', '20231103 20:00:00', '20231103 19:00:00', '20231103 19:10:00'),
(8, 3, 3, 4, 1, 2, 'Mañana', 1250.50, 5.80, '20231118 08:30:00', '20231118 09:15:00', '20231118 08:00:00', '20231118 08:15:00'),
(2, 9, 1, 5, 2, 1, 'Tarde', 1340.00, 9.00, '20231125 15:20:00', '20231125 16:10:00', '20231125 14:50:00', '20231125 15:05:00'),
(7, 1, 2, 6, 1, 3, 'Noche', 990.00, 3.80, '20231205 20:00:00', '20231205 20:45:00', '20231205 19:30:00', '20231205 19:40:00'),
(4, 6, 2, 1, 3, 2, 'Mañana', 1025.00, 7.50, '20231212 09:10:00', '20231212 09:50:00', '20231212 08:40:00', '20231212 08:55:00'),
(6, 5, 4, 4, 2, 4, 'Tarde', 1185.75, 8.20, '20231220 16:00:00', '20231220 16:40:00', '20231220 15:30:00', '20231220 15:45:00'),
(1, 8, 2, 1, 1, 1, 'Noche', 890.00, 2.90, '20240108 20:30:00', '20240108 21:00:00', '20240108 20:00:00', '20240108 20:15:00'),
(9, 2, 1, 5, 3, 3, 'Mañana', 1320.00, 10.00, '20240115 08:50:00', '20240115 09:45:00', '20240115 08:20:00', '20240115 08:35:00'),
(3, 6, 4, 2, 6, 1, 'Tarde', 950.00, 4.70, '20240213 19:30:00', '20240113 20:00:00', '20240113 19:00:00', '20240113 19:15:00'),
(2, 5, 9, 5, 7, 3, 'Noche', 1020.00, 8.00, '20240224 09:50:00', '20240124 10:45:00', '20240124 09:20:00', '20240124 09:35:00'),
(4, 6, 5, 6, 3, 2, 'Mañana', 875.00, 7.00, '20240312 09:10:00', '20240312 09:50:00', '20240312 08:40:00', '20240312 08:55:00'),
(5, 5, 9, 4, 2, 4, 'Tarde', 1185.75, 5.20, '20240320 16:00:00', '20240320 16:40:00', '20240320 15:30:00', '20240320 15:45:00');

SELECT * FROM Ordenes

---------------------------------------------NUEVAS CONSULTAS----------------------------------------------------------------

--Producto más vendido por sucursal
SELECT 
    s.Nombre AS Sucursal,
    p.Nombre AS Producto,
    SUM(do.Cantidad) AS TotalVendido
FROM Ordenes AS o
INNER JOIN DetalleOrdenes AS do ON o.OrdenID = do.OrdenID
INNER JOIN Productos p ON do.ProductoID = p.ProductoID
INNER JOIN Sucursales s ON o.SucursalID = s.SucursalID
GROUP BY s.Nombre, p.Nombre
ORDER BY s.Nombre, TotalVendido DESC;

------------------------------------------------------------------------------------------------------------------------------
--¿Qué horarios tienen más pedidos?
SELECT 
    HorarioVenta,
    COUNT(*) AS CantidadPedidos
FROM Ordenes
GROUP BY HorarioVenta
ORDER BY CantidadPedidos DESC;

-- Se realizan más pedidos en los turnos mañana y tarde, aunque no es nada significativa la diferencia respecto al turno noche.

------------------------------------------------------------------------------------------------------------------------------
-- ¿En qué sucursal se venden más pizzas vs. comida rápida?
SELECT 
    o.SucursalID,
    c.Nombre,
    COUNT(*) AS CantidadVendida
FROM Ordenes AS o
INNER JOIN DetalleOrdenes AS do ON o.OrdenID = do.OrdenID
INNER JOIN Productos AS p ON do.ProductoID = p.ProductoID
INNER JOIN Categorias AS c ON p.CategoriaID = c.CategoriaID
WHERE c.Nombre IN ('Pizzas', 'Comida Rápida')
GROUP BY o.SucursalID, c.Nombre
ORDER BY o.SucursalID, c.Nombre;

----------------------------------------------------------------------------------------------------------------------------

-- ¿En qué sucursal se venden más ensaladas vs. comida rápida?
SELECT 
    o.SucursalID,
    c.Nombre,
    COUNT(*) AS CantidadVendida
FROM Ordenes AS o
INNER JOIN DetalleOrdenes AS do ON o.OrdenID = do.OrdenID
INNER JOIN Productos AS p ON do.ProductoID = p.ProductoID
INNER JOIN Categorias AS c ON p.CategoriaID = c.CategoriaID
WHERE c.Nombre IN ('Ensaladas', 'Comida Rápida')
GROUP BY o.SucursalID, c.Nombre
ORDER BY o.SucursalID, c.Nombre;

-- Podemos concluir que la distribución de las ventas de estos productos es similar en todos los casos.

---------------------------------------------------------------------------------------------------------------------------

--Patrones de consumo estacional
SELECT 
    YEAR(FechaOrdenTomada) AS Anio,
    MONTH(FechaOrdenTomada) AS Mes,
    SUM(TotalCompra) AS VentasTotales,
    COUNT(OrdenID) AS CantidadOrdenes
FROM Ordenes
GROUP BY YEAR(FechaOrdenTomada), MONTH(FechaOrdenTomada)
ORDER BY Anio, Mes;

---------------------------------------------------------------------------------------------------------------------------
-------------------------------------------CONSULTAS DEL INFORME-----------------------------------------------------------

--¿Cuál es el tiempo promedio desde el despacho hasta la entrega de los pedidos gestionados por todo el equipo de mensajería?

SELECT AVG(ABS(DATEDIFF(MINUTE, FechaDespacho, FechaEntrega))) AS TiempoPromedioEntrega
FROM Ordenes
WHERE MensajeroID IS NOT NULL;

/* Esta consulta arroja un número demasiado alto. En este caso se supone que error puede venir de las fechas en la carga de nuevos 
datos de la tabla Ordenes, ya que se tuvo que cargar bajo el formato ISO porque arrojaba error al relazarla con los guines.*/
----------------------------------------------------------------------------------------------------------------------------------

-- ¿Qué canal de ventas genera más ingresos?

SELECT TOP 1
    ori.Descripcion AS CanalVenta,
    SUM(o.TotalCompra) AS TotalIngresos
FROM Ordenes AS o
INNER JOIN OrigenesOrden AS ori 
    ON o.OrigenID = ori.OrigenID
GROUP BY ori.Descripcion
ORDER BY TotalIngresos DESC;

/* Aquí podemos obserbar que con la nueva carga de registros pasamos de tener el canal de ventas "Presencial" como top 1, 
al canal de venta por Teléfono. */
-----------------------------------------------------------------------------------------------------------------------------------

--¿Cuál es el nivel de ingreso generado por Empleado?

SELECT 
    e.Nombre AS Empleado,
    SUM(o.TotalCompra) AS IngresosGenerados
FROM Ordenes AS o
INNER JOIN Empleados e 
    ON o.EmpleadoID = e.EmpleadoID
GROUP BY e.Nombre
ORDER BY IngresosGenerados DESC;

/* Como podemos observar, los empleados con mayores ventas son otros respecto a la consulta realizada antes de 
la carga de nuevos datos. Ahora encontramos a Tom Brown, Emma Davis como los 2 con mayores ingresos generados. */
-----------------------------------------------------------------------------------------------------------------------------------

-- ¿Cómo varía la demanda de productos a lo largo del día? 

SELECT o.HorarioVenta, SUM(do.Cantidad) AS ProductosVendidos
FROM Ordenes AS o
INNER JOIN DetalleOrdenes AS do
    ON o.OrdenID = do.OrdenID
GROUP BY o.HorarioVenta;

/* En este caso, también notamos una diferencia con los resultados obtenidos anteriormente, los cuales correspondían solo al
turno mañana con 32 ventas. Si bien la demanda sigue siendo más fuerte durante turno mañana, encontramos datos sobre los 
horarios tarne y noche, siendo estos considerablemente menores respecto a los productos vendidos. */
-----------------------------------------------------------------------------------------------------------------------------------

-- ¿Cuál es la tendencia de los ingresos generados en cada periodo mensual?

SELECT  YEAR(FechaOrdenTomada) AS Anio,
        DATENAME(MONTH,FechaOrdenTomada) AS Mes,
        SUM(TotalCompra) AS IngresoTotal
FROM Ordenes
GROUP BY YEAR(FechaOrdenTomada), MONTH(FechaOrdenTomada), DATENAME(MONTH,FechaOrdenTomada)
ORDER BY MONTH(FechaOrdenTomada);

/* Aquí también observamos nuevos datos, que en este caso representarían un aumento de las ganancias 
por mes, respecto al año anterior.
