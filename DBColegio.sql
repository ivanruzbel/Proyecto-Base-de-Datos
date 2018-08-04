
/****** Ivan Ruzbel	Feliz Romero 16-MIIN-1-178 Seccion 0541******/


CREATE DATABASE [DBColegio]

GO 
Use [DBColegio]
GO

CREATE TABLE [dbo].[Estudiantes_Info](
	[matriculaid] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[edad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matriculaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materias_estudiantes]    Script Date: 8/4/2018 11:53:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materias_estudiantes](
	[id_materia] [int] NOT NULL,
	[materia] [varchar](20) NOT NULL,
	[matriculaestudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 8/4/2018 11:53:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nota](
	[matricula] [int] NOT NULL,
	[id_materia] [int] NULL,
	[nota] [char](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (1, N'Juan Almonte', 10)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (2, N'Mario Rivas', 11)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (3, N'Jorge Montas', 10)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (4, N'Angie Veras', 9)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (5, N'Julia Montas', 8)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (6, N'Juana Vega', 9)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (7, N'Jorge Lora', 11)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (8, N'Margarita Mena', 12)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (9, N'Aura Lopez', 11)
INSERT [dbo].[Estudiantes_Info] ([matriculaid], [nombre], [edad]) VALUES (10, N'Juana Montas', 10)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (1, N'Matematica', 1)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (2, N'Sociales', 2)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (3, N'Naturales', 3)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (4, N'Ingles', 4)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (5, N'Informatica', 5)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (6, N'Civica', 6)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (7, N'Etica', 7)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (8, N'Arte', 8)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (9, N'Religion', 9)
INSERT [dbo].[Materias_estudiantes] ([id_materia], [materia], [matriculaestudiante]) VALUES (10, N'Humanidades', 10)
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (1, 1, N'A                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (2, 1, N'A                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (3, 1, N'A                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (4, 1, N'B                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (5, 1, N'C                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (6, 1, N'F                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (7, 1, N'B                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (8, 1, N'C                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (9, 1, N'A                        ')
INSERT [dbo].[Nota] ([matricula], [id_materia], [nota]) VALUES (10, 1, N'A                        ')
ALTER TABLE [dbo].[Materias_estudiantes]  WITH CHECK ADD FOREIGN KEY([matriculaestudiante])
REFERENCES [dbo].[Estudiantes_Info] ([matriculaid])
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD FOREIGN KEY([id_materia])
REFERENCES [dbo].[Materias_estudiantes] ([id_materia])
GO
USE [master]
GO
ALTER DATABASE [DBColegio] SET  READ_WRITE 
GO
