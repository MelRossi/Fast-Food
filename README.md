# 💻 Proyecto Integrador: Fast Food

## 📝 Descripción del Proyecto
Este proyecto se desarrolló asumiendo el rol de Data Analyst para la empresa Fast Food, una marca en crecimiento dentro del competitivo sector de comida rápida.

Aunque la empresa avanzaba rápidamente con nuevas sucursales, enfrentaba un problema clave:
La información estaba distribuida en múltiples archivos de Google Sheets y documentos manuales, dificultando la operación y la toma de decisiones.

El propósito principal fue migrar la información a una base de datos relacional en SQL Server, desarrollar consultas analíticas y generar insights clave para mejorar los procesos comerciales, operativos y estratégicos.

El trabajo se completó en cuatro avances progresivos, cada uno profundizando en el diseño, implementación y análisis de la base de datos.

---

## 📌 Objetivos del Proyecto

✔ Crear una base de datos relacional con integridad referencial
✔ Estructurar tablas limpias, normalizadas y relacionadas
✔ Insertar, modificar y eliminar datos para validar funcionamiento
✔ Realizar consultas SQL analíticas y de negocio
✔ Responder preguntas clave sobre ventas, clientes, empleados y productos
✔ Obtener insights accionables para la gerencia

---

## 📂 Datos Utilizados

La información proviene de múltiples archivos proporcionados por la empresa, los cuales incluyen:

- Órdenes

- Productos y categorías

- Clientes

- Empleados y mensajeros

- Sucursales

- Tipos de pago y origen de órdenes

Todos estos datos fueron integrados en un modelo relacional dentro de SQL Server.

---

## 🧱 Diseño de la Base de Datos

Se creó la base de datos FastFood con las siguientes tablas principales:

- Ordenes

- DetalleOrdenes (tabla puente entre Ordenes y Productos)

- Productos

- Categorias

- Clientes

- Empleados

- Mensajeros

- Sucursales

- TiposPago

OrigenesOrden

### 🔗 Relaciones implementadas

- PK y FK correctamente asignadas

- Modelo totalmente normalizado

- Integridad referencial asegurada

---

## 🧹 Limpieza y Preparación de Datos

Se realizaron tareas específicas para garantizar la calidad de la base:

### 🧽 1. Creación de tablas y normalización

- Estructuras definidas con CREATE TABLE

- Claves primarias y foráneas asignadas

- Normalización para evitar redundancia

### ✏️ 2. Inserción y mantenimiento de datos

- Carga de registros con INSERT INTO

- Pruebas de UPDATE y DELETE para validar el modelo

### 🌀 3. Verificación de relaciones

- Se probaron joins entre todas las tablas

- La base respondió correctamente a consultas complejas

---

## 🔎 Consultas Avanzadas (SQL)

Se desarrollaron numerosas consultas orientadas al análisis del negocio:

📊 1. Ventas y facturación

- Total de ventas → $9123.51

- Ventas por tipo de pago

- Ventas por sucursal

- Comparación antes/después del 1/07/2023

💰 2. Precios y promedios

- Precio promedio por categoría

- Máximo y mínimo por sucursal

- Cantidad promedio de productos por orden

🚚 3. Logística

- Máxima distancia recorrida en entregas → 12.5 km

- Tiempo promedio de entrega: 30 minutos

🧑‍💼 4. Empleados

- Productividad por empleado

- Asignación de empleados por sucursal

🍕 5. Mix de productos

- Productos con y sin categoría

- Productos más vendidos por categoría

- Productos por sucursal

---

## 💡 Insights Principales

⭐ 1. Facturación total: La empresa registró $9123.51 en ventas, útil como referencia para análisis temporales.

⭐ 2. Categorías más destacadas: Los precios promedio por categoría reflejan consistencia con el tipo de producto (pizzas, hamburguesas, helados, etc.).

⭐ 3. Sucursal más rentable: Sucursal Lago (Sucursal 9) presenta el ticket promedio más alto: $1095.

⭐ 4. Métodos de pago predominantes: Los tipos de pago 9, 8 y 2 son los más utilizados, pero la diferencia entre métodos es mínima.

⭐ 5. Incremento post 1 de julio: Las ventas pasaron de $979.75 → $1081.66, mostrando leve crecimiento.

⭐ 6. Productividad de empleados: Empleado más rentable: Ethan Martinez, seguido por Olicia García.

⭐ 7. Tendencia de ingresos: Caída fuerte en marzo, luego crecimiento estable hasta alcanzar el máximo en septiembre ($1095).

⭐ 8. Mix de productos por sucursal: Las categorías más vendidas: comida rápida, pizzas, postres, helados y ensaladas.

---

## 🧩 Conclusiones

La empresa cuenta con una base sólida para unificar su información.

Las sucursales presentan patrones distintos de comportamiento.

Los métodos de pago y horarios tienen poca variabilidad en ventas.

Las tendencias temporales indican oportunidades para estrategias estacionales.

La categorización y la asignación por sucursal permiten identificar preferencias de consumo.

La base relacional creada permite escalar, automatizar y analizar eficientemente.
