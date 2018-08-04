﻿
/****** PC-X120E IVAN FELIZ******/ 
/****** Ivan Ruzbel	Feliz Romero 16-MIIN-1-178 Seccion 0541******/

CREATE DATABASE [DBBodega]
 
GO
USE [DBBodega]
GO

CREATE TABLE [dbo].[articulos](
	[ArticuloID] [int] NOT NULL,
	[Nombre_Articulo] [varchar](20) NULL,
	[Cantidad] [int] NULL,
	[Precio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticuloID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ordenes]    Script Date: 8/4/2018 1:09:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ordenes](
	[Orden_id] [int] NOT NULL,
	[Articulo_id] [int] NULL,
	[Articulo] [varchar](20) NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suplidor]    Script Date: 8/4/2018 1:09:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suplidor](
	[Suplidor_id] [int] NOT NULL,
	[Articulo_id] [int] NULL,
	[Nombre] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Suplidor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (1, N'Coca Cola', 600, 50)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (2, N'Pepsi', 5, 100)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (3, N'7up', 500, 30)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (4, N'Rica Naranja', 400, 32)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (5, N'Rica Pera', 300, 25)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (6, N'Rica Manzana', 200, 30)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (7, N'Cerveza Grande', 400, 40)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (8, N'Cerveza Normal', 500, 50)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (9, N'Malta Alemana', 2, 34)
INSERT [dbo].[articulos] ([ArticuloID], [Nombre_Articulo], [Cantidad], [Precio]) VALUES (10, N'Malta Morena', 3, 56)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (1, 1, N'Coca Cola', 10)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (2, 2, N'Pepsi', 20)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (3, 3, N'7up', 30)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (4, 4, N'Rica Naranja', 40)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (5, 5, N'Rica Pera', 50)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (6, 6, N'Rica Manzana', 60)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (7, 7, N'Cerveza Grande', 70)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (8, 8, N'Cerveza Normal', 80)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (9, 9, N'Malta Alemana', 90)
INSERT [dbo].[ordenes] ([Orden_id], [Articulo_id], [Articulo], [Cantidad]) VALUES (10, 10, N'Malta Morena', 100)
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (1, 1, N'Bepensa')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (2, 2, N'Pepsi')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (3, 3, N'Bepensa')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (4, 4, N'Rica')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (5, 5, N'Rica')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (6, 6, N'Rica')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (7, 7, N'Cerveceria')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (8, 8, N'Cerveceria')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (9, 9, N'Cerveceria')
INSERT [dbo].[suplidor] ([Suplidor_id], [Articulo_id], [Nombre]) VALUES (10, 10, N'Cerveceria')
ALTER TABLE [dbo].[ordenes]  WITH CHECK ADD FOREIGN KEY([Articulo_id])
REFERENCES [dbo].[articulos] ([ArticuloID])
GO
ALTER TABLE [dbo].[suplidor]  WITH CHECK ADD FOREIGN KEY([Articulo_id])
REFERENCES [dbo].[articulos] ([ArticuloID])
GO
USE [master]
GO
ALTER DATABASE [DBBodega] SET  READ_WRITE 
GO
