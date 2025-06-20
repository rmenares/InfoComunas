USE [master]
GO
/****** Object:  Database [ComunasChile]    Script Date: 17/06/2025 18:14:16 ******/
CREATE DATABASE [ComunasChile]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ComunasChile', FILENAME = N'D:\SqlServer\MSSQL13.MSSQLSERVER\MSSQL\DATA\ComunasChile.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'ComunasChile_log', FILENAME = N'D:\SqlServer\MSSQL13.MSSQLSERVER\MSSQL\DATA\ComunasChile_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ComunasChile] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ComunasChile].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ComunasChile] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ComunasChile] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ComunasChile] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ComunasChile] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ComunasChile] SET ARITHABORT OFF 
GO
ALTER DATABASE [ComunasChile] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ComunasChile] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ComunasChile] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ComunasChile] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ComunasChile] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ComunasChile] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ComunasChile] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ComunasChile] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ComunasChile] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ComunasChile] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ComunasChile] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ComunasChile] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ComunasChile] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ComunasChile] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ComunasChile] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ComunasChile] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ComunasChile] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ComunasChile] SET RECOVERY FULL 
GO
ALTER DATABASE [ComunasChile] SET  MULTI_USER 
GO
ALTER DATABASE [ComunasChile] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ComunasChile] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ComunasChile] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ComunasChile] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ComunasChile] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ComunasChile', N'ON'
GO
ALTER DATABASE [ComunasChile] SET QUERY_STORE = OFF
GO
USE [ComunasChile]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ComunasChile]
GO
/****** Object:  User [RodrigoM]    Script Date: 17/06/2025 18:14:16 ******/
CREATE USER [RodrigoM] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rmenares]    Script Date: 17/06/2025 18:14:16 ******/
CREATE USER [rmenares] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [RodrigoM]
GO
ALTER ROLE [db_owner] ADD MEMBER [rmenares]
GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comuna](
	[IdComuna] [int] IDENTITY(1,1) NOT NULL,
	[IdRegion] [int] NOT NULL,
	[NomComuna] [nvarchar](max) NOT NULL,
	[InformacionXML] [xml] NOT NULL,
 CONSTRAINT [PK_Comuna] PRIMARY KEY CLUSTERED 
(
	[IdComuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[TimeSharing] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[IdRgion] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[IdRgion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comuna] ON 

INSERT [dbo].[Comuna] ([IdComuna], [IdRegion], [NomComuna], [InformacionXML]) VALUES (1, 1, N'arica', N'<informacion><poblacion>5656</poblacion><superficie>5656</superficie><densidad>30</densidad></informacion>')
INSERT [dbo].[Comuna] ([IdComuna], [IdRegion], [NomComuna], [InformacionXML]) VALUES (2, 2, N'Antofagasta', N'<informacion><poblacion>4545</poblacion><superficie>97888</superficie><densidad>212140</densidad></informacion>')
INSERT [dbo].[Comuna] ([IdComuna], [IdRegion], [NomComuna], [InformacionXML]) VALUES (3, 2, N'Calama', N'<informacion><poblacion>5455</poblacion><superficie>3132121</superficie><densidad>1124</densidad></informacion>')
INSERT [dbo].[Comuna] ([IdComuna], [IdRegion], [NomComuna], [InformacionXML]) VALUES (4, 3, N'copiapo', N'<informacion><poblacion>0</poblacion><superficie>0</superficie><densidad>0</densidad></informacion>')
SET IDENTITY_INSERT [dbo].[Comuna] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (1, N'ARICA Y PARINACOTA')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (2, N'TARAPACÁ')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (3, N'ANTOFAGASTA')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (4, N'ATACAMA')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (5, N'COQUIMBO')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (6, N'VALPARAISO')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (7, N'DEL LIBERTADOR GRAL. BERNARDO O\''HIGGINS')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (8, N'DEL MAULE')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (9, N'DEL BIOBÍO')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (10, N'DE LA ARAUCANÍA')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (11, N'DE LOS RÍOS')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (12, N'DE LOS LAGOS')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (13, N'AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (14, N'MAGALLANES Y DE LA ANTÁRTICA CHILENA')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (15, N'METROPOLITANA DE SANTIAGO')
INSERT [dbo].[Region] ([IdRgion], [Region]) VALUES (16, N'ÑUBLE')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
ALTER TABLE [dbo].[Comuna]  WITH CHECK ADD  CONSTRAINT [FK_Comuna_Region] FOREIGN KEY([IdRegion])
REFERENCES [dbo].[Region] ([IdRgion])
GO
ALTER TABLE [dbo].[Comuna] CHECK CONSTRAINT [FK_Comuna_Region]
GO
/****** Object:  StoredProcedure [dbo].[InfoComuna]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[InfoComuna]
@NumComu int
As
 Begin
   SELECT [IdComuna]
         ,[IdRegion]
         ,NomComuna
         ,[InformacionXML]
     FROM [dbo].[Comuna]
     Where IdComuna = @NumComu
 End
GO
/****** Object:  StoredProcedure [dbo].[InfoRegion]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[InfoRegion]
@NumRegion int
As
 Begin
   SELECT [IdRgion] ,[Region]
    FROM [dbo].[Region]
    where IdRgion = @NumRegion
 End
GO
/****** Object:  StoredProcedure [dbo].[InsDatComuna]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[InsDatComuna]
@IdRegion       int, 
@Comuno         nvarchar(max),
@InformacionXML xml
As
 Begin
   if not Exists(select NomComuna from Comuna where NomComuna = @Comuno)
   begin
     INSERT INTO [dbo].[Comuna] ([IdRegion], NomComuna, [InformacionXML]) VALUES  (@IdRegion, @Comuno, @InformacionXML)
   end
 End
GO
/****** Object:  StoredProcedure [dbo].[ListComxRegion]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[ListComxRegion]
@NumReg int
As
 Begin
  SELECT IdRegion, IdComuna, NomComuna, InformacionXML
   FROM  Comuna
   Where IdRegion = @NumReg
 End
GO
/****** Object:  StoredProcedure [dbo].[ListRegiones]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[ListRegiones]
As
 Begin
   SELECT [IdRgion]
         ,[Region]
     FROM [dbo].[Region]
  End
GO
/****** Object:  StoredProcedure [dbo].[ModDatComuna]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ModDatComuna]
@NumComuna int,
@InfoComuna nvarchar(max)
As
 Begin
   UPDATE [dbo].[Comuna]
      Set [InformacionXML] = @InfoComuna
    WHERE IdComuna = @NumComuna
 End
GO
/****** Object:  StoredProcedure [dbo].[ObtenerComunaPorId]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ObtenerComunaPorId]
@IdComuna INT
AS
BEGIN
    SELECT [IdComuna]
         ,[IdRegion]
         ,[NomComuna]
         ,[InformacionXML]
    FROM [dbo].[Comuna]
    WHERE IdComuna = @IdComuna
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerComunas]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ObtenerComunas]
AS
 Begin
   SELECT [IdComuna]
         ,[IdRegion]
         ,NomComuna
         ,[InformacionXML]
     FROM [dbo].[Comuna]
  End
GO
/****** Object:  StoredProcedure [dbo].[ObtenerComunasPorRegion]    Script Date: 17/06/2025 18:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ObtenerComunasPorRegion]
    @IdRegion INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        r.IdRgion AS IdRegion,
        r.Region AS NombreRegion,
        c.IdComuna,
        c.NomComuna,
        c.InformacionXML
    FROM Comuna c
    INNER JOIN Region r ON c.IdRegion = r.IdRgion
    WHERE r.IdRgion = @IdRegion;
END
GO
USE [master]
GO
ALTER DATABASE [ComunasChile] SET  READ_WRITE 
GO
