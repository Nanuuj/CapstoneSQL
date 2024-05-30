# CapstoneSQL

#Inicio ejercicio I - Necesito crear una BBDD 

CREATE DATABASE [ManuelAdame]

#fin

#Inicio Ejercicio II.1

CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Fnacimiento] [date] NOT NULL,
	[Domicilio] [varchar](50) NOT NULL,
	[idPais] [char](3) NOT NULL,
	[Telefono] [varchar](12) NULL,
	[Email] [varchar](30) NOT NULL,
	[Observaciones] [varchar](1000) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[DNI] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.1

#Inicio Ejercicio II.2

CREATE TABLE [dbo].[Record](
	[IdRecord] [int] IDENTITY(1,1) NOT NULL,
	[FechaRecord] [date] NOT NULL,
	[Observaciones] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRecord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.2

#Inicio Ejercicio II.3
CREATE TABLE [dbo].[RecordCliente](
	[IdRecord] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdCampania] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRecord] ASC,
	[IdCliente] ASC,
	[IdCampania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.3

#Inicio Ejercicio II.4

CREATE TABLE [dbo].[Pais](
	[IdPais] [char](3) NOT NULL,
	[NombrePais] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.4

#Inicio Ejercicio II.5

CREATE TABLE [dbo].[HoraCaptacion](
	[IdHCaptacion] [int] IDENTITY(1,1) NOT NULL,
	[FechaCaptacion] [date] NOT NULL,
	[EstadoCaptacion] [smallint] NOT NULL,
	[Observaciones] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHCaptacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.5

#Inicio Ejercicio II.6

CREATE TABLE [dbo].[HoraCapClienteCampania](
	[IdHCaptacion] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdCampania] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHCaptacion] ASC,
	[IdCliente] ASC,
	[IdCampania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.6

#Inicio Ejercicio II.7

CREATE TABLE [dbo].[HorarioEstado](
	[IdEstado] [smallint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


#fin ejercicio II.7

#Inicio Ejercicio II.8

CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.8

#Inicio Ejercicio II.9

CREATE TABLE [dbo].[Compra](
	[IdCompras] [int] IDENTITY(1,1) NOT NULL,
	[Concepto] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Monto] [money] NOT NULL,
	[Observaciones] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCompras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.9

#Inicio Ejercicio II.10

CREATE TABLE [dbo].[CompraCliente](
	[IdCompras] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdHCaptacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCompras] ASC,
	[IdCliente] ASC,
	[IdHCaptacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.10

#Inicio Ejercicio II.11

CREATE TABLE [dbo].[Campania](
	[IdCampania] [int] IDENTITY(1,1) NOT NULL,
	[NombreCampaña] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCampania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.11

#Inicio Ejercicio II.12

CREATE TABLE [dbo].[CampaniaProducto](
	[IdCampania] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCampania] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.12

#Inicio Ejercicio II.13

CREATE TABLE [dbo].[ConceptoCompra](
	[IdConcepto] [int] IDENTITY(1,1) NOT NULL,
	[Concepto] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

#fin ejercicio II.13

#Inicio Ejercicio IV.B.1 

INSERT INTO HoraCaptacion (Fecha, Estado, Observacion)
VALUES ('2024-01-01 10:00', 1, 'DESCONOCIDO');


#fin ejercicio IV.B.1

#Inicio Ejercicio IV.B.2 

DECLARE @idhCaptacion INT;
DECLARE @IdCliente INT;
DECLARE @IdCampania INT;

-- Paso 1: Insertar en la tabla HoraCaptacion y obtener el idhCaptacion
INSERT INTO HoraCaptacion (Fecha, Estado, Observacion)
OUTPUT INSERTED.idhCaptacion INTO @idhCaptacion
VALUES ('2024-01-01 10:00', 1, 'DESCONOCIDO');

-- Paso 2: Seleccionar cualquier IdCliente existente de la tabla Cliente
SELECT TOP 1 @IdCliente = IdCliente FROM Cliente;

-- Paso 3: Seleccionar cualquier IdCampania existente de la tabla Campania
SELECT TOP 1 @IdCampania = IdCampania FROM Campania;

-- Paso 4: Insertar en la tabla HoraCapClienteCampania utilizando los valores obtenidos
INSERT INTO HoraCapClienteCampania (idhCaptacion, IdCliente, IdCampania)
VALUES (@idhCaptacion, @IdCliente, @IdCampania);

-- Verificar la inserción
SELECT * FROM HoraCapClienteCampania WHERE idhCaptacion = @idhCaptacion;

#fin ejercicio IV.B.2

#Inicio Ejercicio V

SELECT * FROM Clientes;

SELECT Nombre FROM Clientes;

SELECT TOP 3 * FROM Clientes
ORDER BY Fnacimiento ASC;

SELECT DISTINCT IdPais FROM Clientes;

UPDATE Clientes
SET Email = '200@gmail.es'
WHERE IdCliente = (SELECT TOP 1 IdCliente FROM Clientes ORDER BY IdCliente ASC);

SELECT AVG(Monto) AS PromedioMonto FROM Compra;

SELECT * FROM HoraCaptacion
WHERE FechaCaptacion BETWEEN '2024-01-01' AND '2024-01-30';

SELECT * FROM Clientes
WHERE IdPais = 'ESP';

SELECT IdPais, NombrePais,
CASE 
    WHEN IdPais IN ('ESP', 'FRA', 'DEU') THEN 'Europa'
    WHEN IdPais IN ('USA', 'CAN') THEN 'América del Norte'
    WHEN IdPais IN ('ARG', 'BRA') THEN 'América del Sur'
    WHEN IdPais IN ('CHN', 'JPN') THEN 'Asia'
    WHEN IdPais IN ('AUS') THEN 'Oceanía'
    WHEN IdPais IN ('ZAF') THEN 'África'
    ELSE 'Desconocido'
END AS Continente
FROM Pais;


ALTER TABLE Clientes
ADD DNI VARCHAR(50) NULL;

CREATE PROCEDURE Nuevo_cliente 
    @DNI VARCHAR(50),
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @Fnacimiento DATE,
    @Domicilio VARCHAR(50),
    @IdPais CHAR(3),
    @Telefono VARCHAR(12),
    @Email VARCHAR(30),
    @Observaciones VARCHAR(1000)
AS
BEGIN
    -- Insertar un nuevo cliente con los datos proporcionados
    INSERT INTO Clientes (DNI, Nombre, Apellido, Fnacimiento, Domicilio, IdPais, Telefono, Email, Observaciones, FechaAlta)
    VALUES (@DNI, @Nombre, @Apellido, @Fnacimiento, @Domicilio, @IdPais, @Telefono, @Email, @Observaciones, GETDATE());
END;

EXEC Nuevo_cliente '2351365', 'Raúl', 'Stuart', '1985-05-21', 'Las regasta 25', 'ESP', '655821547', 'Raul@krokimail.com', '';


#fin ejercicio V
