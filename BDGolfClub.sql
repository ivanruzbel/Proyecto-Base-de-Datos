

/****** Ivan Ruzbel Feliz Romero Matrícula 16-MIIN-1-178 SECCIÓN 0541 ******/CREATE DATABASE [DBClubGolf]

 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBClubGolf', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBClubGolf.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBClubGolf_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBClubGolf_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBClubGolf] SET COMPATIBILITY_LEVEL = 120

GO
USE [DBClubGolf]
GO
/****** Object:  Table [dbo].[Info_miembros]    Script Date: 8/13/2018 11:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info_miembros](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Info_miembros] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Membrecias]    Script Date: 8/13/2018 11:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membrecias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Membrecia] [nchar](10) NULL,
 CONSTRAINT [PK_Membrecias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 8/13/2018 11:01:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pago] [int] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Info_miembros] ON 

INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (1, N'Juan Ayala', NULL)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (2, N'Juana Mena', 12345)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (3, N'Karlos Matos', 1235456)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (4, N'Loren Rijo', 234356)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (5, N'Jose Perez', 46556775)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (6, N'Julio Mora', 45653422)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (7, N'Lenon Mota', 4534634)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (8, N'Hansel Lora', 36345232)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (9, N'Lina Mirian', 235456433)
INSERT [dbo].[Info_miembros] ([ID], [Nombre], [Telefono]) VALUES (10, N'Kendry Lon', 242354235)
SET IDENTITY_INSERT [dbo].[Info_miembros] OFF
SET IDENTITY_INSERT [dbo].[Membrecias] ON 

INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (1, N'GOLD      ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (2, N'NORMAL    ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (3, N'Diamante  ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (4, N'GOLD      ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (5, N'NORMAL    ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (6, N'GOLD      ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (7, N'NUEVA     ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (8, N'Antigua   ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (9, N'Moderna   ')
INSERT [dbo].[Membrecias] ([ID], [Tipo_Membrecia]) VALUES (10, N'MEGA      ')
SET IDENTITY_INSERT [dbo].[Membrecias] OFF
SET IDENTITY_INSERT [dbo].[Pagos] ON 

INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (1, 100)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (2, 200)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (3, 300)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (4, 400)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (5, 500)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (6, 600)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (7, 700)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (8, 800)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (9, 900)
INSERT [dbo].[Pagos] ([ID], [Pago]) VALUES (10, 10000)
SET IDENTITY_INSERT [dbo].[Pagos] OFF
USE [master]
GO
ALTER DATABASE [DBClubGolf] SET  READ_WRITE 
GO
