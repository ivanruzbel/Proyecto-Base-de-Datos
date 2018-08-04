/****** Ivan Ruzbel	Feliz Romero 16-MIIN-1-178 Seccion 0541******/

CREATE DATABASE [DBGolfClub]
  
GO
USE [DBGolfClub]
GO

CREATE TABLE [dbo].[membrecias](
	[Membrecia_id] [int] NOT NULL,
	[Cedula] [varchar](20) NULL,
	[Membrecia_tipo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Membrecia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[miembros_Info]    Script Date: 8/4/2018 12:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[miembros_Info](
	[Cedula] [varchar](20) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[telefono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 8/4/2018 12:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pagos](
	[Pago_id] [int] NOT NULL,
	[Membrecia_id] [int] NULL,
	[Nombre] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (1, N'00000000001', N'GOLD')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (2, N'00000000002', N'NORMAL')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (3, N'00000000003', N'BASE')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (4, N'00000000004', N'GOLD')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (5, N'00000000005', N'NORMAL')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (6, N'00000000006', N'GOLD')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (7, N'00000000007', N'NORMAL')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (8, N'00000000008', N'BASE')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (9, N'00000000009', N'NORMAL')
INSERT [dbo].[membrecias] ([Membrecia_id], [Cedula], [Membrecia_tipo]) VALUES (10, N'00000000010', N'GOLD')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000001', N'Juan Ayala', N'800111111')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000002', N'Juana Mena', N'0021112222')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000003', N'karlos Matos', N'0010092212')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000004', N'Loren Rijo', N'0092332232')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000005', N'Jose Perez', N'0897888888')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000006', N'Julio Mora', N'9894433322')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000007', N'Lenon Mota', N'8932338844')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000008', N'Hansel Lora', N'8943221888')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000009', N'Lina Mirian', N'8932121883')
INSERT [dbo].[miembros_Info] ([Cedula], [Nombre], [telefono]) VALUES (N'00000000010', N'Kendry Lon', N'8923884444')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (1, 1, N'Juan Ayala')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (2, 2, N'Juana Mena')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (3, 3, N'karlos Matos')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (4, 4, N'Loren Rijo')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (5, 5, N'Jose Perez')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (6, 6, N'Julio Mora')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (7, 7, N'Lenon Mota')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (8, 8, N'Hansel Lora')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (9, 9, N'Lina Mirian')
INSERT [dbo].[Pagos] ([Pago_id], [Membrecia_id], [Nombre]) VALUES (10, 10, NULL)
ALTER TABLE [dbo].[membrecias]  WITH CHECK ADD FOREIGN KEY([Cedula])
REFERENCES [dbo].[miembros_Info] ([Cedula])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([Membrecia_id])
REFERENCES [dbo].[membrecias] ([Membrecia_id])
GO
USE [master]
GO
ALTER DATABASE [DBGolfClub] SET  READ_WRITE 
GO
