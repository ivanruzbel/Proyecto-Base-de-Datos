
/****** Ivan Ruzbel Feliz Romero Matrícula 16-MIIN-1-178 SECCIÓN 0541 ******/


CREATE DATABASE [DBcolegio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBcolegio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBcolegio.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBcolegio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.IVANPC\MSSQL\DATA\DBcolegio_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBcolegio] SET COMPATIBILITY_LEVEL = 120

GO
USE [DBcolegio]
GO
/****** Object:  Table [dbo].[Estudiante_Inf]    Script Date: 8/13/2018 11:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante_Inf](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Nivel] [int] NULL,
 CONSTRAINT [PK_Estudiante_Inf] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materias]    Script Date: 8/13/2018 11:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Materia] [nvarchar](100) NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notas]    Script Date: 8/13/2018 11:15:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOTA] [nvarchar](50) NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Estudiante_Inf] ON 

INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (1, N'Juan Almonte', 1)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (2, N'Mario Rivas', 2)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (3, N'Jorge Montas', 3)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (4, N'Angie Veras', 4)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (5, N'Juana Vega ', 5)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (6, N'Jorge Lora', 6)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (7, N'Margarita Mena', 7)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (8, N'Aura Lopez', 8)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (9, N'Juana Montas', 9)
INSERT [dbo].[Estudiante_Inf] ([ID], [Nombre], [Nivel]) VALUES (10, N'Pedro Masie', 10)
SET IDENTITY_INSERT [dbo].[Estudiante_Inf] OFF
SET IDENTITY_INSERT [dbo].[Materias] ON 

INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (1, N'Matematica')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (2, N'Sociales')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (3, N'Naturales')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (4, N'Ingles')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (5, N'Informatica')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (6, N'Civica')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (7, N'Etica')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (8, N'Arte')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (9, N'Religion')
INSERT [dbo].[Materias] ([ID], [Materia]) VALUES (10, N'Humanidades')
SET IDENTITY_INSERT [dbo].[Materias] OFF
SET IDENTITY_INSERT [dbo].[Notas] ON 

INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (1, N'A')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (2, N'B')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (3, N'C')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (4, N'D')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (5, N'A')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (6, N'B')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (7, N'C')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (8, N'D')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (9, N'A')
INSERT [dbo].[Notas] ([ID], [NOTA]) VALUES (10, N'A')
SET IDENTITY_INSERT [dbo].[Notas] OFF
ALTER TABLE [dbo].[Estudiante_Inf]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Inf_Notas] FOREIGN KEY([ID])
REFERENCES [dbo].[Notas] ([ID])
GO
ALTER TABLE [dbo].[Estudiante_Inf] CHECK CONSTRAINT [FK_Estudiante_Inf_Notas]
GO
USE [master]
GO
ALTER DATABASE [DBcolegio] SET  READ_WRITE 
GO
