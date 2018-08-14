
/****** Ivan Ruzbel Feliz Romero Matrícula 16-MIIN-1-178 SECCIÓN 0541 ******/

CREATE DATABASE [DBbodega]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBbodega', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBbodega.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBbodega_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBbodega_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBbodega] SET COMPATIBILITY_LEVEL = 120

GO
USE [DBbodega]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 8/13/2018 10:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[ID_Articulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Articulo] [nvarchar](100) NULL,
	[Cantidad] [int] NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[ID_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 8/13/2018 10:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordenes](
	[ID_Articulo] [int] IDENTITY(1,1) NOT NULL,
	[Articulo] [nvarchar](100) NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_Ordenes] PRIMARY KEY CLUSTERED 
(
	[ID_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suplidores]    Script Date: 8/13/2018 10:20:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplidores](
	[ID_Articulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Suplidor] [nvarchar](100) NULL,
 CONSTRAINT [PK_Suplidores] PRIMARY KEY CLUSTERED 
(
	[ID_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (1, N'Coca Cola', 600, 50)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (2, N'Pepsi', 5, 100)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (3, N'7up', 500, 30)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (4, N'Rica Naranja', 400, 32)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (5, N'Rica Pera', 300, 25)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (6, N'Rica Manzana', 200, 30)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (7, N'Cerveza Grande', 400, 40)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (8, N'Cerveza Normal', 500, 50)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (9, N'Malta Alemana', 2, 34)
INSERT [dbo].[Articulos] ([ID_Articulo], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (10, N'Malta Morena', 3, 56)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
SET IDENTITY_INSERT [dbo].[Ordenes] ON 

INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (1, N'Coca Cola', 29)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (2, N'Pepsi', 10)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (3, N'7up', 20)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (4, N'Rica Naranja', 30)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (5, N'Rica Pera', 40)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (6, N'Rica Manzana', 506)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (7, N'Cerveza Grande', 60)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (8, N'Cerveza Normal', 70)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (9, N'Malta Alemana', 80)
INSERT [dbo].[Ordenes] ([ID_Articulo], [Articulo], [Cantidad]) VALUES (10, N'Malta Morena', 90)
SET IDENTITY_INSERT [dbo].[Ordenes] OFF
SET IDENTITY_INSERT [dbo].[Suplidores] ON 

INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (1, N'Coca Cola', N'Bepensa')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (2, N'Pepsi ', N'Pepsi')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (3, N'7up', N'Bepensa')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (4, N'Rica Naranja', N'Rica')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (5, N'Rica Pera', N'Rica')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (6, N'Rica Manzana', N'Rica')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (7, N'Cerveza Grande', N'Cerveceria')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (8, N'Cerveza Normal', N'Cerveceria')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (9, N'Malta Alemana', N'Cerveceria')
INSERT [dbo].[Suplidores] ([ID_Articulo], [Nombre], [Suplidor]) VALUES (10, N'Malta Morena', N'Cerveceria')
SET IDENTITY_INSERT [dbo].[Suplidores] OFF
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Ordenes] FOREIGN KEY([ID_Articulo])
REFERENCES [dbo].[Ordenes] ([ID_Articulo])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Ordenes]
GO
USE [master]
GO
ALTER DATABASE [DBbodega] SET  READ_WRITE 
GO
