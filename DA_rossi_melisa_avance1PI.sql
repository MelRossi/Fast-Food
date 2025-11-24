CREATE DATABASE FastFood;

USE FastFood;

--Creacion de tablas

CREATE TABLE Ordenes(
	OrdenID INT PRIMARY KEY IDENTITY,
	ClienteID INT,
	EmpleadoID INT,
	SucursalID INT,
	MensajeroID INT,
	TipoPagoID INT,
	OrigenID INT,
	HorarioVenta VARCHAR(255),
	TotalCompra DECIMAL(10,2),
	KilometrosRecorrer DECIMAL(10,2),
	FechaDespacho DATETIME,
	FechaEntrega DATETIME,
	FechaOrdenTomada DATETIME,
	FechaOrdenLista DATETIME);


CREATE TABLE Productos(
	ProductoID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(255) NOT NULL,
	CategoriaID INT,
	Precio DECIMAL(10,2));


CREATE TABLE DetalleOrdenes(
	OrdenID INT,
	ProductoID INT,
	Cantidad INT,
	Precio DECIMAL(10,2),
	PRIMARY KEY(OrdenID,ProductoID));

CREATE TABLE Empleados(
	EmpleadoID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(255) NOT NULL,
	Posicion VARCHAR(255),
	Departamento VARCHAR(255),
	SucursalID INT,
	Rol VARCHAR(255));

CREATE TABLE Clientes(
	ClienteID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(255) NOT NULL,
	Direccion VARCHAR(255));

CREATE TABLE Mensajeros(
	MensajeroID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(255) NOT NULL,
	EsExterno VARCHAR(255));

CREATE TABLE Sucursales(
	SucursalID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(255) NOT NULL,
	Direccion VARCHAR(255));

CREATE TABLE OrigenesOrden(
	OrigenID INT PRIMARY KEY IDENTITY,
	Descripcion VARCHAR(255) NOT NULL);

CREATE TABLE TiposPago(
	TipoPagoID INT PRIMARY KEY IDENTITY,
	Descripcion VARCHAR(255) NOT NULL);

CREATE TABLE Categorias(
	CategoriaID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR(255) NOT NULL);



-- VINCULAR TABLAS PARA GENERAR LAS RELACIONES DE LA BASE DE DATOS

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Empleados
FOREIGN KEY(EmpleadoID) REFERENCES Empleados(EmpleadoID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Clientes
FOREIGN KEY(ClienteID) REFERENCES Clientes(ClienteID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Mensajeros
FOREIGN KEY(MensajeroID) REFERENCES Mensajeros(MensajeroID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Sucursales
FOREIGN KEY(SucursalID) REFERENCES Sucursales(SucursalID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_TiposPago
FOREIGN KEY(TipoPagoID) REFERENCES TiposPago(TipoPagoID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_OrigenesOrden
FOREIGN KEY(OrigenID) REFERENCES OrigenesOrden(OrigenID);

ALTER TABLE DetalleOrdenes
ADD CONSTRAINT FK_DetalleOrdenes_Productos
FOREIGN KEY(ProductoID) REFERENCES Productos(ProductoID);

ALTER TABLE DetalleOrdenes
ADD CONSTRAINT FK_DetalleOrdenes_Ordenes
FOREIGN KEY(OrdenID) REFERENCES Ordenes(OrdenID);

ALTER TABLE Productos
ADD CONSTRAINT FK_Productos_Categorias
FOREIGN KEY(CategoriaID) REFERENCES Categorias(CategoriaID);
