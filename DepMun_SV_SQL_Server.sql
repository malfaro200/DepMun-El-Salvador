﻿USE [EL SALVADOR]
GO
ALTER TABLE [dbo].[MUNSV] DROP CONSTRAINT [FK_MUNSV_DEPSV]
GO
ALTER TABLE [dbo].[DEPSV] DROP CONSTRAINT [FK_DEPSV_ZONESV]
GO
/****** Object:  Table [dbo].[ZONESV]    Script Date: 24/02/2017 03:43:25 p.m. ******/
DROP TABLE [dbo].[ZONESV]
GO
/****** Object:  Table [dbo].[MUNSV]    Script Date: 24/02/2017 03:43:25 p.m. ******/
DROP TABLE [dbo].[MUNSV]
GO
/****** Object:  Table [dbo].[DEPSV]    Script Date: 24/02/2017 03:43:25 p.m. ******/
DROP TABLE [dbo].[DEPSV]
GO
USE [master]
GO
/****** Object:  Database [EL SALVADOR]    Script Date: 24/02/2017 03:43:25 p.m. ******/
DROP DATABASE [EL SALVADOR]
GO
/****** Object:  Database [EL SALVADOR]    Script Date: 24/02/2017 03:43:25 p.m. ******/
CREATE DATABASE [EL SALVADOR] ON  PRIMARY 
( NAME = N'EL SALVADOR', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EL SALVADOR.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EL SALVADOR_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EL SALVADOR_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EL SALVADOR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EL SALVADOR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EL SALVADOR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EL SALVADOR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EL SALVADOR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EL SALVADOR] SET ARITHABORT OFF 
GO
ALTER DATABASE [EL SALVADOR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EL SALVADOR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EL SALVADOR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EL SALVADOR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EL SALVADOR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EL SALVADOR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EL SALVADOR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EL SALVADOR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EL SALVADOR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EL SALVADOR] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EL SALVADOR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EL SALVADOR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EL SALVADOR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EL SALVADOR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EL SALVADOR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EL SALVADOR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EL SALVADOR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EL SALVADOR] SET RECOVERY FULL 
GO
ALTER DATABASE [EL SALVADOR] SET  MULTI_USER 
GO
ALTER DATABASE [EL SALVADOR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EL SALVADOR] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EL SALVADOR', N'ON'
GO
USE [EL SALVADOR]
GO
/****** Object:  Table [dbo].[DEPSV]    Script Date: 24/02/2017 03:43:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPSV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepName] [nvarchar](30) NOT NULL,
	[ISOCode] [nchar](5) NOT NULL,
	[ZONESV_ID] [int] NOT NULL,
 CONSTRAINT [PK_DEPSV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MUNSV]    Script Date: 24/02/2017 03:43:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUNSV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MunName] [nvarchar](100) NOT NULL,
	[DEPSV_ID] [int] NOT NULL,
 CONSTRAINT [PK_MUNSV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ZONESV]    Script Date: 24/02/2017 03:43:25 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZONESV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ZoneName] [varchar](15) NOT NULL,
 CONSTRAINT [PK_ZONESV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET IDENTITY_INSERT [dbo].[DEPSV] ON 
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (1, N'Ahuachapán', N'SV-AH', 1)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (2, N'Santa Ana', N'SV-SA', 1)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (3, N'Sonsonate', N'SV-SO', 1)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (4, N'La Libertad', N'SV-LI', 2)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (5, N'Chalatenango', N'SV-CH', 2)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (6, N'San Salvador', N'SV-SS', 2)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (7, N'Cuscatlán', N'SV-CU', 3)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (8, N'La Paz', N'SV-PA', 3)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (9, N'Cabañas', N'SV-CA', 3)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (10, N'San Vicente', N'SV-SV', 3)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (11, N'Usulután', N'SV-US', 4)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (12, N'Morazán', N'SV-MO', 4)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (13, N'San Miguel', N'SV-SM', 4)
INSERT [dbo].[DEPSV] ([ID], [DepName], [ISOCode], [ZONESV_ID]) VALUES (14, N'La Unión', N'SV-UN', 4)
SET IDENTITY_INSERT [dbo].[DEPSV] OFF

SET IDENTITY_INSERT [dbo].[MUNSV] ON 
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (1, N'Ahuachapán', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (2, N'Jujutla', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (3, N'Atiquizaya', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (4, N'Concepción de Ataco', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (5, N'El Refugio', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (6, N'Guaymango', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (7, N'Apaneca', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (8, N'San Francisco Menéndez', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (9, N'San Lorenzo (Ahuachapán)', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (10, N'San Pedro Puxtla', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (11, N'Tacuba', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (12, N'Turín', 1)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (13, N'Candelaria de la Frontera', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (14, N'Chalchuapa', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (15, N'Coatepeque', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (16, N'El Congo', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (17, N'El Porvenir', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (18, N'Masahuat', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (19, N'Metapán', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (20, N'San Antonio Pajonal', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (21, N'San Sebastián Salitrillo', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (22, N'Santa Ana', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (23, N'Santa Rosa Guachipilín', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (24, N'Santiago de la Frontera', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (25, N'Texistepeque', 2)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (26, N'Acajutla', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (27, N'Armenia', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (28, N'Caluco', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (29, N'Cuisnahuat', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (30, N'Izalco', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (31, N'Juayúa', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (32, N'Nahuizalco', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (33, N'Nahulingo', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (34, N'Salcoatitán', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (35, N'San Antonio del Monte', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (36, N'San Julián', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (37, N'Santa Catarina Masahuat', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (38, N'Santa Isabel Ishuatán', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (39, N'Santo Domingo de Guzmán', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (40, N'Sonsonate', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (41, N'Sonzacate', 3)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (42, N'Alegría', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (43, N'Berlín', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (44, N'California', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (45, N'Concepción Batres', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (46, N'El Triunfo', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (47, N'Ereguayquín', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (48, N'Estanzuelas', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (49, N'Jiquilisco', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (50, N'Jucuapa', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (51, N'Jucuarán', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (52, N'Mercedes Umaña', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (53, N'Nueva Granada', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (54, N'Ozatlán', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (55, N'Puerto El Triunfo', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (56, N'San Agustín', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (57, N'San Buenaventura', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (58, N'San Dionisio', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (59, N'San Francisco Javier', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (60, N'Santa Elena', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (61, N'Santa María', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (62, N'Santiago de María', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (63, N'Tecapán', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (64, N'Usulután', 11)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (65, N'Carolina', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (66, N'Chapeltique', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (67, N'Chinameca', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (68, N'Chirilagua', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (69, N'Ciudad Barrios', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (70, N'Comacarán', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (71, N'El Tránsito', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (72, N'Lolotique', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (73, N'Moncagua', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (74, N'Nueva Guadalupe', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (75, N'Nuevo Edén de San Juan', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (76, N'Quelepa', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (77, N'San Antonio del Mosco', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (78, N'San Gerardo', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (79, N'San Jorge', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (80, N'San Luis de la Reina', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (81, N'San Miguel', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (82, N'San Rafael Oriente', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (83, N'Sesori', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (84, N'Uluazapa', 13)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (85, N'Arambala', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (86, N'Cacaopera', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (87, N'Chilanga', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (88, N'Corinto', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (89, N'Delicias de Concepción', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (90, N'El Divisadero', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (91, N'El Rosario (Morazán)', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (92, N'Gualococti', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (93, N'Guatajiagua', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (94, N'Joateca', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (95, N'Jocoaitique', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (96, N'Jocoro', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (97, N'Lolotiquillo', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (98, N'Meanguera', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (99, N'Osicala', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (100, N'Perquín', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (101, N'San Carlos', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (102, N'San Fernando (Morazán)', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (103, N'San Francisco Gotera', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (104, N'San Isidro (Morazán)', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (105, N'San Simón', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (106, N'Sensembra', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (107, N'Sociedad', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (108, N'Torola', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (109, N'Yamabal', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (110, N'Yoloaiquín', 12)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (111, N'La Unión', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (112, N'San Alejo', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (113, N'Yucuaiquín', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (114, N'Conchagua', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (115, N'Intipucá', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (116, N'San José', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (117, N'El Carmen (La Unión)', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (118, N'Yayantique', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (119, N'Bolívar', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (120, N'Meanguera del Golfo', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (121, N'Santa Rosa de Lima',14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (122, N'Pasaquina', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (123, N'Anamoros', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (124, N'Nueva Esparta', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (125, N'El Sauce', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (126, N'Concepción de Oriente', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (127, N'Polorós', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (128, N'Lislique', 14)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (129, N'Antiguo Cuscatlán', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (130, N'Chiltiupán', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (131, N'Ciudad Arce', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (132, N'Colón', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (133, N'Comasagua', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (134, N'Huizúcar', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (135, N'Jayaque', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (136, N'Jicalapa', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (137, N'La Libertad', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (138, N'Santa Tecla', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (139, N'Nuevo Cuscatlán', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (140, N'San Juan Opico', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (141, N'Quezaltepeque', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (142, N'Sacacoyo', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (143, N'San José Villanueva', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (144, N'San Matías', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (145, N'San Pablo Tacachico', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (146, N'Talnique', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (147, N'Tamanique', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (148, N'Teotepeque', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (149, N'Tepecoyo', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (150, N'Zaragoza', 4)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (151, N'Agua Caliente', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (152, N'Arcatao', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (153, N'Azacualpa', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (154, N'Cancasque', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (155, N'Chalatenango', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (156, N'Citalá', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (157, N'Comapala', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (158, N'Concepción Quezaltepeque', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (159, N'Dulce Nombre de María', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (160, N'El Carrizal', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (161, N'El Paraíso', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (162, N'La Laguna', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (163, N'La Palma', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (164, N'La Reina', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (165, N'Las Vueltas', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (166, N'Nueva Concepción', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (167, N'Nueva Trinidad', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (168, N'Nombre de Jesús', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (169, N'Ojos de Agua', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (170, N'Potonico', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (171, N'San Antonio de la Cruz', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (172, N'San Antonio Los Ranchos', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (173, N'San Fernando (Chalatenango)', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (174, N'San Francisco Lempa', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (175, N'San Francisco Morazán', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (176, N'San Ignacio', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (177, N'San Isidro Labrador', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (178, N'Las Flores', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (179, N'San Luis del Carmen', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (180, N'San Miguel de Mercedes', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (181, N'San Rafael', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (182, N'Santa Rita', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (183, N'Tejutla', 5)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (184, N'Cojutepeque', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (185, N'Candelaria', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (186, N'El Carmen (Cuscatlán)', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (187, N'El Rosario (Cuscatlán)', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (188, N'Monte San Juan', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (189, N'Oratorio de Concepción', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (190, N'San Bartolomé Perulapía', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (191, N'San Cristóbal', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (192, N'San José Guayabal', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (193, N'San Pedro Perulapán', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (194, N'San Rafael Cedros', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (195, N'San Ramón', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (196, N'Santa Cruz Analquito', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (197, N'Santa Cruz Michapa', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (198, N'Suchitoto', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (199, N'Tenancingo', 7)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (200, N'Aguilares', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (201, N'Apopa', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (202, N'Ayutuxtepeque', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (203, N'Cuscatancingo', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (204, N'Ciudad Delgado', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (205, N'El Paisnal', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (206, N'Guazapa', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (207, N'Ilopango', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (208, N'Mejicanos', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (209, N'Nejapa', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (210, N'Panchimalco', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (211, N'Rosario de Mora', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (212, N'San Marcos', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (213, N'San Martín', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (214, N'San Salvador', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (215, N'Santiago Texacuangos', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (216, N'Santo Tomás', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (217, N'Soyapango', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (218, N'Tonacatepeque', 6)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (219, N'Zacatecoluca', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (220, N'Cuyultitán', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (221, N'El Rosario (La Paz)', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (222, N'Jerusalén', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (223, N'Mercedes La Ceiba', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (224, N'Olocuilta', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (225, N'Paraíso de Osorio', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (226, N'San Antonio Masahuat', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (227, N'San Emigdio', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (228, N'San Francisco Chinameca', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (229, N'San Pedro Masahuat', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (230, N'San Juan Nonualco', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (231, N'San Juan Talpa', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (232, N'San Juan Tepezontes', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (233, N'San Luis La Herradura', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (234, N'San Luis Talpa', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (235, N'San Miguel Tepezontes', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (236, N'San Pedro Nonualco', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (237, N'San Rafael Obrajuelo', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (238, N'Santa María Ostuma', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (239, N'Santiago Nonualco', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (240, N'Tapalhuaca', 8)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (241, N'Cinquera', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (242, N'Dolores', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (243, N'Guacotecti', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (244, N'Ilobasco', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (245, N'Jutiapa', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (246, N'San Isidro (Cabañas)', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (247, N'Sensuntepeque', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (248, N'Tejutepeque', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (249, N'Victoria', 9)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (250, N'Apastepeque', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (251, N'Guadalupe', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (252, N'San Cayetano Istepeque', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (253, N'San Esteban Catarina', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (254, N'San Ildefonso', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (255, N'San Lorenzo (San Vicente)', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (256, N'San Sebastián', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (257, N'San Vicente', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (258, N'Santa Clara', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (259, N'Santo Domingo', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (260, N'Tecoluca', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (261, N'Tepetitán', 10)
INSERT [dbo].[MUNSV] ([ID], [MunName], [DEPSV_ID]) VALUES (262, N'Verapaz', 10)
SET IDENTITY_INSERT [dbo].[MUNSV] OFF

SET IDENTITY_INSERT [dbo].[ZONESV] ON 
INSERT [dbo].[ZONESV] ([ID], [ZoneName]) VALUES (1, N'Occidental')
INSERT [dbo].[ZONESV] ([ID], [ZoneName]) VALUES (2, N'Central')
INSERT [dbo].[ZONESV] ([ID], [ZoneName]) VALUES (3, N'Paracentral')
INSERT [dbo].[ZONESV] ([ID], [ZoneName]) VALUES (4, N'Oriental')
SET IDENTITY_INSERT [dbo].[ZONESV] OFF

ALTER TABLE [dbo].[DEPSV]  WITH CHECK ADD  CONSTRAINT [FK_DEPSV_ZONESV] FOREIGN KEY([ZONESV_ID])
REFERENCES [dbo].[ZONESV] ([ID])
GO
ALTER TABLE [dbo].[DEPSV] CHECK CONSTRAINT [FK_DEPSV_ZONESV]
GO
ALTER TABLE [dbo].[MUNSV]  WITH CHECK ADD  CONSTRAINT [FK_MUNSV_DEPSV] FOREIGN KEY([DEPSV_ID])
REFERENCES [dbo].[DEPSV] ([ID])
GO
ALTER TABLE [dbo].[MUNSV] CHECK CONSTRAINT [FK_MUNSV_DEPSV]
GO
USE [master]
GO
ALTER DATABASE [EL SALVADOR] SET  READ_WRITE 
GO
