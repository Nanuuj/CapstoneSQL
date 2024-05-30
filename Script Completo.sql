USE [master]
GO
/****** Object:  Database [ManuelAdame]    Script Date: 30/05/2024 10:03:15 ******/
CREATE DATABASE [ManuelAdame]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ManuelAdame', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ManuelAdame.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ManuelAdame_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ManuelAdame_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ManuelAdame] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManuelAdame].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManuelAdame] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ManuelAdame] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ManuelAdame] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ManuelAdame] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ManuelAdame] SET ARITHABORT OFF 
GO
ALTER DATABASE [ManuelAdame] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ManuelAdame] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ManuelAdame] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ManuelAdame] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ManuelAdame] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ManuelAdame] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ManuelAdame] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ManuelAdame] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ManuelAdame] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ManuelAdame] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ManuelAdame] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ManuelAdame] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ManuelAdame] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ManuelAdame] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ManuelAdame] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ManuelAdame] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ManuelAdame] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ManuelAdame] SET RECOVERY FULL 
GO
ALTER DATABASE [ManuelAdame] SET  MULTI_USER 
GO
ALTER DATABASE [ManuelAdame] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ManuelAdame] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ManuelAdame] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ManuelAdame] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ManuelAdame] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ManuelAdame] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ManuelAdame', N'ON'
GO
ALTER DATABASE [ManuelAdame] SET QUERY_STORE = ON
GO
ALTER DATABASE [ManuelAdame] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ManuelAdame]
GO
/****** Object:  Table [dbo].[Campania]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campania](
	[IdCampania] [int] IDENTITY(1,1) NOT NULL,
	[NombreCampaña] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCampania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampaniaProducto]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[Compra]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[CompraCliente]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[ConceptoCompra]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConceptoCompra](
	[IdConcepto] [int] IDENTITY(1,1) NOT NULL,
	[Concepto] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoraCapClienteCampania]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[HoraCaptacion]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[HorarioEstado]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioEstado](
	[IdEstado] [smallint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [char](3) NOT NULL,
	[NombrePais] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[RecordCliente]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
SET IDENTITY_INSERT [dbo].[Campania] ON 
GO
INSERT [dbo].[Campania] ([IdCampania], [NombreCampaña]) VALUES (1, N'Producto Estrella 1')
GO
INSERT [dbo].[Campania] ([IdCampania], [NombreCampaña]) VALUES (2, N'Producto Estrella 2')
GO
INSERT [dbo].[Campania] ([IdCampania], [NombreCampaña]) VALUES (3, N'Producto Estrella 3')
GO
SET IDENTITY_INSERT [dbo].[Campania] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (4, N'Raúl', N'Gonzalez', CAST(N'1986-05-25' AS Date), N'Gualtatas 2526', N'ESP', N'664859632', N'200@gmail.es', N'No hay observaciones', CAST(N'2024-01-05T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (6, N'James', N'Nicole', CAST(N'1990-03-02' AS Date), N'O''niell jack 2568', N'USA', N'1254685632', N'wuarden@green.us', N'No hay observaciones', CAST(N'2024-01-06T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (7, N'Marta', N'Perez', CAST(N'1995-05-03' AS Date), N'Brasilia 25', N'BRA', N'56432253', N'mPerezbra@getmail.com', N'No hay observaciones', CAST(N'2024-02-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (8, N'Claudio', N'Ramirez', CAST(N'1984-08-02' AS Date), N'Chenguan 225', N'ESP', N'66852125', N'clauRami@gmail.es', N'No hay observaciones', CAST(N'2024-02-01T00:02:02.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (9, N'Markuis', N'Papadopulus', CAST(N'1982-02-06' AS Date), N'Grikindier 223', N'GRC', N'2548542355', N'papadopulusm@gmail.com', N'Es griego', CAST(N'2024-02-01T00:06:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (10, N'Carlos', N'Trebor', CAST(N'1966-05-03' AS Date), N'Pedro Pastor 2', N'MEX', N'135852133', N'Carlitos@gmail.ue', N'No hay observaciones', CAST(N'2024-02-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (11, N'Otto', N'Von Kunstmann', CAST(N'1975-09-01' AS Date), N'Ötiggen str 3', N'DEU', N'6582216335', N'elaleman@aleman.com', N'Es Aleman', CAST(N'2024-02-01T00:08:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (12, N'Uit', N'Tlinnlnie', CAST(N'1977-05-05' AS Date), N'Intrati 22', N'IND', N'1325865523', N'uit@guit.in', N'Es indio', CAST(N'2024-02-06T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Fnacimiento], [Domicilio], [idPais], [Telefono], [Email], [Observaciones], [FechaAlta], [DNI]) VALUES (13, N'Raúl', N'Stuart', CAST(N'1985-05-21' AS Date), N'Las regasta 25', N'ESP', N'655821547', N'Raul@krokimail.com', N'', CAST(N'2024-05-24T12:58:14.610' AS DateTime), N'2351365')
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Compra] ON 
GO
INSERT [dbo].[Compra] ([IdCompras], [Concepto], [Fecha], [Monto], [Observaciones]) VALUES (1, 1, CAST(N'2024-01-02T00:00:00.000' AS DateTime), 5000.0000, N'Comprador de producto estrella 1')
GO
INSERT [dbo].[Compra] ([IdCompras], [Concepto], [Fecha], [Monto], [Observaciones]) VALUES (2, 2, CAST(N'2024-01-02T00:00:00.000' AS DateTime), 3500.0000, N'Comprador de producto estrella 2')
GO
INSERT [dbo].[Compra] ([IdCompras], [Concepto], [Fecha], [Monto], [Observaciones]) VALUES (3, 3, CAST(N'2024-01-03T00:00:00.000' AS DateTime), 5000.0000, N'Comprador de producto estrella 1')
GO
SET IDENTITY_INSERT [dbo].[Compra] OFF
GO
INSERT [dbo].[CompraCliente] ([IdCompras], [IdCliente], [IdHCaptacion]) VALUES (1, 6, 1)
GO
INSERT [dbo].[CompraCliente] ([IdCompras], [IdCliente], [IdHCaptacion]) VALUES (2, 12, 6)
GO
INSERT [dbo].[CompraCliente] ([IdCompras], [IdCliente], [IdHCaptacion]) VALUES (3, 11, 5)
GO
SET IDENTITY_INSERT [dbo].[ConceptoCompra] ON 
GO
INSERT [dbo].[ConceptoCompra] ([IdConcepto], [Concepto]) VALUES (1, N'Compra producto Estrella 1')
GO
INSERT [dbo].[ConceptoCompra] ([IdConcepto], [Concepto]) VALUES (2, N'Compra producto Estrella 2')
GO
INSERT [dbo].[ConceptoCompra] ([IdConcepto], [Concepto]) VALUES (3, N'Compra producto estrella 3')
GO
SET IDENTITY_INSERT [dbo].[ConceptoCompra] OFF
GO
INSERT [dbo].[HoraCapClienteCampania] ([IdHCaptacion], [IdCliente], [IdCampania]) VALUES (2, 11, 3)
GO
INSERT [dbo].[HoraCapClienteCampania] ([IdHCaptacion], [IdCliente], [IdCampania]) VALUES (4, 8, 2)
GO
INSERT [dbo].[HoraCapClienteCampania] ([IdHCaptacion], [IdCliente], [IdCampania]) VALUES (6, 6, 1)
GO
INSERT [dbo].[HoraCapClienteCampania] ([IdHCaptacion], [IdCliente], [IdCampania]) VALUES (8, 7, 3)
GO
SET IDENTITY_INSERT [dbo].[HoraCaptacion] ON 
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (2, CAST(N'2024-01-05' AS Date), 1, N'Lead')
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (3, CAST(N'2024-01-05' AS Date), 2, N'Lead')
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (4, CAST(N'2024-02-01' AS Date), 1, N'Cliente')
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (5, CAST(N'2024-02-01' AS Date), 3, N'Prospecto')
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (6, CAST(N'2024-02-01' AS Date), 1, N'Lead')
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (7, CAST(N'2024-01-01' AS Date), 1, N'DESCONOCIDO')
GO
INSERT [dbo].[HoraCaptacion] ([IdHCaptacion], [FechaCaptacion], [EstadoCaptacion], [Observaciones]) VALUES (8, CAST(N'2024-01-01' AS Date), 1, N'DESCONOCIDO')
GO
SET IDENTITY_INSERT [dbo].[HoraCaptacion] OFF
GO
SET IDENTITY_INSERT [dbo].[HorarioEstado] ON 
GO
INSERT [dbo].[HorarioEstado] ([IdEstado], [Descripcion]) VALUES (1, N'Prime tarde- noche')
GO
INSERT [dbo].[HorarioEstado] ([IdEstado], [Descripcion]) VALUES (2, N'Valle Media tarde, media mañana')
GO
INSERT [dbo].[HorarioEstado] ([IdEstado], [Descripcion]) VALUES (3, N'Breakfast antes de las 10 AM')
GO
INSERT [dbo].[HorarioEstado] ([IdEstado], [Descripcion]) VALUES (4, N'Nocturno después de las 00:00')
GO
SET IDENTITY_INSERT [dbo].[HorarioEstado] OFF
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'BRA', N'Brasil')
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'DEU', N'Alemania')
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'ESP', N'España')
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'GRC', N'Grecia')
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'IND', N'India')
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'MEX', N'Mexico')
GO
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (N'USA', N'Estados Unidos')
GO
ALTER TABLE [dbo].[CampaniaProducto]  WITH CHECK ADD  CONSTRAINT [FK_CampaniaProducto_Campania] FOREIGN KEY([IdCampania])
REFERENCES [dbo].[Campania] ([IdCampania])
GO
ALTER TABLE [dbo].[CampaniaProducto] CHECK CONSTRAINT [FK_CampaniaProducto_Campania]
GO
ALTER TABLE [dbo].[CampaniaProducto]  WITH CHECK ADD  CONSTRAINT [FK_CampaniaProducto_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
GO
ALTER TABLE [dbo].[CampaniaProducto] CHECK CONSTRAINT [FK_CampaniaProducto_Producto]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Pais]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_ConceptoCompra] FOREIGN KEY([Concepto])
REFERENCES [dbo].[ConceptoCompra] ([IdConcepto])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_ConceptoCompra]
GO
ALTER TABLE [dbo].[CompraCliente]  WITH CHECK ADD  CONSTRAINT [FK_CompraCliente_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[CompraCliente] CHECK CONSTRAINT [FK_CompraCliente_Clientes]
GO
ALTER TABLE [dbo].[CompraCliente]  WITH CHECK ADD  CONSTRAINT [FK_CompraCliente_Compra] FOREIGN KEY([IdCompras])
REFERENCES [dbo].[Compra] ([IdCompras])
GO
ALTER TABLE [dbo].[CompraCliente] CHECK CONSTRAINT [FK_CompraCliente_Compra]
GO
ALTER TABLE [dbo].[HoraCapClienteCampania]  WITH CHECK ADD  CONSTRAINT [FK_HoraCapClienteCampania_Campania] FOREIGN KEY([IdCampania])
REFERENCES [dbo].[Campania] ([IdCampania])
GO
ALTER TABLE [dbo].[HoraCapClienteCampania] CHECK CONSTRAINT [FK_HoraCapClienteCampania_Campania]
GO
ALTER TABLE [dbo].[HoraCapClienteCampania]  WITH CHECK ADD  CONSTRAINT [FK_HoraCapClienteCampania_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[HoraCapClienteCampania] CHECK CONSTRAINT [FK_HoraCapClienteCampania_Clientes]
GO
ALTER TABLE [dbo].[HoraCapClienteCampania]  WITH CHECK ADD  CONSTRAINT [FK_HoraCapClienteCampania_HoraCaptacion] FOREIGN KEY([IdHCaptacion])
REFERENCES [dbo].[HoraCaptacion] ([IdHCaptacion])
GO
ALTER TABLE [dbo].[HoraCapClienteCampania] CHECK CONSTRAINT [FK_HoraCapClienteCampania_HoraCaptacion]
GO
ALTER TABLE [dbo].[HoraCaptacion]  WITH CHECK ADD  CONSTRAINT [FK_HoraCaptacion_HorarioEstado] FOREIGN KEY([EstadoCaptacion])
REFERENCES [dbo].[HorarioEstado] ([IdEstado])
GO
ALTER TABLE [dbo].[HoraCaptacion] CHECK CONSTRAINT [FK_HoraCaptacion_HorarioEstado]
GO
ALTER TABLE [dbo].[RecordCliente]  WITH CHECK ADD  CONSTRAINT [FK_RecordCliente_Campania] FOREIGN KEY([IdCampania])
REFERENCES [dbo].[Campania] ([IdCampania])
GO
ALTER TABLE [dbo].[RecordCliente] CHECK CONSTRAINT [FK_RecordCliente_Campania]
GO
ALTER TABLE [dbo].[RecordCliente]  WITH CHECK ADD  CONSTRAINT [FK_RecordCliente_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[RecordCliente] CHECK CONSTRAINT [FK_RecordCliente_Clientes]
GO
ALTER TABLE [dbo].[RecordCliente]  WITH CHECK ADD  CONSTRAINT [FK_RecordCliente_Record] FOREIGN KEY([IdRecord])
REFERENCES [dbo].[Record] ([IdRecord])
GO
ALTER TABLE [dbo].[RecordCliente] CHECK CONSTRAINT [FK_RecordCliente_Record]
GO
/****** Object:  StoredProcedure [dbo].[Nuevo_cliente]    Script Date: 30/05/2024 10:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Nuevo_cliente] 
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
GO
USE [master]
GO
ALTER DATABASE [ManuelAdame] SET  READ_WRITE 
GO
