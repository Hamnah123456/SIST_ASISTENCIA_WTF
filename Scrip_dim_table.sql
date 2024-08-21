USE [master]
GO
/****** Object:  Database [Asistencia_Academia_Taekwondo_BI]    Script Date: 21/08/2024 15:06:47 ******/
CREATE DATABASE [Asistencia_Academia_Taekwondo_BI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Asistencia_Academia_Taekwondo_BI', FILENAME = N'C:\SQLData\Asistencia_Academia_Taekwondo_BI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Asistencia_Academia_Taekwondo_BI_log', FILENAME = N'C:\SQLData\Asistencia_Academia_Taekwondo_BI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Asistencia_Academia_Taekwondo_BI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ARITHABORT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET  MULTI_USER 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET QUERY_STORE = ON
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Asistencia_Academia_Taekwondo_BI]
GO
/****** Object:  Table [dbo].[dim_Asistencia]    Script Date: 21/08/2024 15:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_Asistencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ID_Estudiante] [int] NULL,
	[ID_Clase] [int] NULL,
	[ID_Instructor] [int] NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_Clase]    Script Date: 21/08/2024 15:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_Clase](
	[ID_Clase] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Clase] [varchar](150) NOT NULL,
	[Nivel] [varchar](300) NULL,
	[DíaS_Semana] [varchar](100) NOT NULL,
	[Horario] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_Estudiantes]    Script Date: 21/08/2024 15:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_Estudiantes](
	[ID_Estudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Apellido_Paterno] [varchar](100) NOT NULL,
	[Apellido_Materno] [varchar](100) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Genero] [varchar](1) NULL,
	[Fecha_Registro] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_Instructor]    Script Date: 21/08/2024 15:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_Instructor](
	[ID_Instructor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido_Paterno] [varchar](100) NOT NULL,
	[Apellido_Materno] [varchar](100) NOT NULL,
	[Especialidad] [varchar](100) NULL,
	[Cinturon] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Instructor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_tiempo]    Script Date: 21/08/2024 15:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_tiempo](
	[id_fecha] [date] NOT NULL,
	[Día] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Dia_semana] [varchar](25) NOT NULL,
	[Año] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dim_Asistencia]  WITH CHECK ADD FOREIGN KEY([Fecha])
REFERENCES [dbo].[dim_tiempo] ([id_fecha])
GO
ALTER TABLE [dbo].[dim_Asistencia]  WITH CHECK ADD FOREIGN KEY([ID_Clase])
REFERENCES [dbo].[dim_Clase] ([ID_Clase])
GO
ALTER TABLE [dbo].[dim_Asistencia]  WITH CHECK ADD FOREIGN KEY([ID_Estudiante])
REFERENCES [dbo].[dim_Estudiantes] ([ID_Estudiante])
GO
ALTER TABLE [dbo].[dim_Asistencia]  WITH CHECK ADD FOREIGN KEY([ID_Instructor])
REFERENCES [dbo].[dim_Instructor] ([ID_Instructor])
GO
USE [master]
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo_BI] SET  READ_WRITE 
GO
