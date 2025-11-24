------------------------------------------------------AVANCE 3--------------------------------------------------------------------------

-- 1. Total de ventas globales: ¿Cuál es el total de ventas (TotalCompra) a nivel global?

SELECT SUM(TotalCompra) AS TotalVentasGlobales
FROM Ordenes;

-- 2. Promedio de precios de productos por categoría:
-- ¿Cuál es el precio promedio de los productos dentro de cada categoría?

SELECT CategoriaID, AVG(Precio) AS PrecioPromedio
FROM Productos
GROUP BY CategoriaID;

-- 3. Orden mínima y máxima por sucursal: ¿Cuál es el valor de la orden mínima y máxima por cada sucursal?

SELECT SucursalID,
       MIN(TotalCompra) AS OrdenMinima,
       MAX(TotalCompra) AS OrdenMaxima
FROM Ordenes
GROUP BY SucursalID;

-- 4.  Mayor número de kilómetros recorridos para entrega:
-- ¿Cuál es el mayor número de kilómetros recorridos para una entrega?

SELECT MAX(KilometrosRecorrer) AS MaxKmEntrega
FROM Ordenes;

-- 5. Promedio de cantidad de productos por orden: ¿Cuál es la cantidad promedio de productos por orden?

SELECT OrdenID, AVG(Cantidad) AS PromedioProducto
FROM DetalleOrdenes
GROUP BY OrdenID

-- 6. Total de ventas por tipo de pago:
-- ¿Cómo se distribuye la Facturación Total del Negocio de acuerdo a los métodos de pago?

SELECT TipoPagoID, SUM(TotalCompra) AS TotalVentas
FROM Ordenes 
GROUP BY TipoPagoID;

-- 7. Sucursal con la venta promedio más alta: ¿Cuál Sucursal tiene el ingreso promedio más alto?

SELECT  TOP 1 SucursalID, 
        AVG(TotalCompra) AS PromedioVentas
FROM Ordenes 
GROUP BY SucursalID
ORDER BY PromedioVentas DESC;

-- 8. Sucursal con la mayor cantidad de ventas por encima de un umbral:
-- ¿Cuáles son las sucursales que han generado ventas totales por encima de $ 1000?

SELECT SucursalID, SUM(TotalCompra) AS TotalVentas
FROM Ordenes
GROUP BY SucursalID
HAVING SUM(TotalCompra) > 1000
ORDER BY TotalVentas DESC;

-- 9. Comparación de ventas promedio antes y después de una fecha específica:
-- ¿Cómo se comparan las ventas promedio antes y después del 1 de julio de 2023?

SELECT
    (SELECT AVG(TotalCompra) AS PromedioVentas
    FROM Ordenes
    WHERE FechaOrdenTomada < '20230701') AS PrimerSemestre
,
    (SELECT AVG(TotalCompra) AS PromedioVentas
    FROM Ordenes
    WHERE FechaOrdenTomada >= '20230701') AS SegundoSemestre

select FechaOrdenTomada, TotalCompra from Ordenes

/*10. Análisis de actividad de ventas por horario: ¿Durante qué horario del día (mañana, tarde, noche) 
se registra la mayor cantidad de ventas, cuál es el ingreso promedio de estas ventas, y cuál ha sido el importe 
máximo alcanzado por una orden en dicha jornada?*/

SELECT HorarioVenta,
       COUNT(OrdenID) AS CantidadVentas,
       AVG(TotalCompra) AS PromedioCompra,
       MAX(TotalCompra) AS MaxCompra
FROM Ordenes
GROUP BY HorarioVenta
ORDER BY CantidadVentas DESC, PromedioCompra DESC;