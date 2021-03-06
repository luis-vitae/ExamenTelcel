USE [Estructura]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[PuestoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[PuestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[DepartamentoID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PuestoID] [int] NOT NULL,
	[DepartamentoID] [int] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VistaDetalles]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaDetalles]
AS
SELECT        dbo.Empleado.EmpleadoID, dbo.Empleado.Nombre, dbo.Empleado.PuestoID, dbo.Puesto.Descripcion, dbo.Empleado.DepartamentoID, dbo.Departamento.Descripcion AS [Desc]
FROM            dbo.Departamento INNER JOIN
                         dbo.Empleado ON dbo.Departamento.DepartamentoID = dbo.Empleado.DepartamentoID INNER JOIN
                         dbo.Puesto ON dbo.Empleado.PuestoID = dbo.Puesto.PuestoID
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([DepartamentoID], [Descripcion]) VALUES (1, N'Soporte Técnico')
INSERT [dbo].[Departamento] ([DepartamentoID], [Descripcion]) VALUES (2, N'Administración')
INSERT [dbo].[Departamento] ([DepartamentoID], [Descripcion]) VALUES (3, N'Compras')
INSERT [dbo].[Departamento] ([DepartamentoID], [Descripcion]) VALUES (4, N'Ventas')
INSERT [dbo].[Departamento] ([DepartamentoID], [Descripcion]) VALUES (5, N'Recursos Humanos')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (1, N'Alfredo Pérez Torres', 1, 1)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (2, N'Fernando Gonzalez Jiménez', 1, 2)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (3, N'Luis Martinez Pérez', 1, 3)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (4, N'José Robles Torres', 2, 2)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (5, N'Karla Garcia Higareda ', 2, 3)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (6, N'Lorena Duran Castro', 2, 4)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (7, N'Jessica Ramírez Estrada', 3, 3)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (8, N'Jimena Zarate Vélez ', 3, 4)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (9, N'Daniel Garcia Buendía', 3, 5)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (10, N'Rubén Núñez López', 1002, 1)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (11, N'Jorge Franco Quiroz ', 1002, 3)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (12, N'Gloria Velazquez Pérez ', 1002, 5)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (13, N'Wendy Salgado Olguín', 1003, 2)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (14, N'Arturo Frías Robles', 1003, 4)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [PuestoID], [DepartamentoID]) VALUES (17, N'Francisco Torres Duran', 1003, 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Puesto] ON 

INSERT [dbo].[Puesto] ([PuestoID], [Descripcion]) VALUES (1, N'Gerente')
INSERT [dbo].[Puesto] ([PuestoID], [Descripcion]) VALUES (2, N'Jefe')
INSERT [dbo].[Puesto] ([PuestoID], [Descripcion]) VALUES (3, N'Supervisor')
INSERT [dbo].[Puesto] ([PuestoID], [Descripcion]) VALUES (1002, N'Analista')
INSERT [dbo].[Puesto] ([PuestoID], [Descripcion]) VALUES (1003, N'Secretaria')
SET IDENTITY_INSERT [dbo].[Puesto] OFF
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Departamento] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamento] ([DepartamentoID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Departamento]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([PuestoID])
REFERENCES [dbo].[Puesto] ([PuestoID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
/****** Object:  StoredProcedure [dbo].[Buscar_Empleado]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Buscar_Empleado]
@Nombre AS VARCHAR(50)
AS
BEGIN
	SELECT dbo.Empleado.EmpleadoID, dbo.Empleado.Nombre, dbo.Empleado.PuestoID, dbo.Puesto.Descripcion, dbo.Empleado.DepartamentoID, dbo.Departamento.Descripcion AS [Desc]
	FROM dbo.Departamento INNER JOIN
         dbo.Empleado ON dbo.Departamento.DepartamentoID = dbo.Empleado.DepartamentoID INNER JOIN
         dbo.Puesto ON dbo.Empleado.PuestoID = dbo.Puesto.PuestoID 
	WHERE Nombre LIKE '%'+IsNull(@Nombre,Nombre)+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_Empleado]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Empleado]
@ID AS int
AS
BEGIN
	DELETE FROM Empleado WHERE EmpleadoID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_EMPLEADO]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_EMPLEADO]
@Nombre AS VARCHAR(50),
@PuestoID AS INT,
@DepartamentoID AS INT
AS
BEGIN
	INSERT INTO Empleado(Nombre, PuestoID, DepartamentoID)
	VALUES (@Nombre, @PuestoID, @DepartamentoID);
END
GO
/****** Object:  StoredProcedure [dbo].[List_Departamento]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[List_Departamento]
AS
BEGIN
	SELECT *
	FROM dbo.Departamento
END
GO
/****** Object:  StoredProcedure [dbo].[List_Empleados]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[List_Empleados]
AS
BEGIN
	SELECT dbo.Empleado.EmpleadoID, dbo.Empleado.Nombre, dbo.Empleado.PuestoID, dbo.Puesto.Descripcion, dbo.Empleado.DepartamentoID, dbo.Departamento.Descripcion AS [Desc]
	FROM dbo.Departamento INNER JOIN
         dbo.Empleado ON dbo.Departamento.DepartamentoID = dbo.Empleado.DepartamentoID INNER JOIN
         dbo.Puesto ON dbo.Empleado.PuestoID = dbo.Puesto.PuestoID
END
GO
/****** Object:  StoredProcedure [dbo].[List_Puesto]    Script Date: 21/05/2020 03:04:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[List_Puesto]
AS
BEGIN
	SELECT *
	FROM dbo.Puesto
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[20] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Departamento"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empleado"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 149
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Puesto"
            Begin Extent = 
               Top = 6
               Left = 466
               Bottom = 102
               Right = 636
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaDetalles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaDetalles'
GO
