USE [master]
GO
/****** Object:  Database [Asistencia_Academia_Taekwondo]    Script Date: 21/08/2024 14:27:23 ******/
CREATE DATABASE [Asistencia_Academia_Taekwondo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Asistencia_Academia_Taekwondo', FILENAME = N'C:\SQLData\Asistencia_Academia_Taekwondo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Asistencia_Academia_Taekwondo_log', FILENAME = N'C:\SQLData\Asistencia_Academia_Taekwondo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Asistencia_Academia_Taekwondo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET  MULTI_USER 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET QUERY_STORE = ON
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Asistencia_Academia_Taekwondo]
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 21/08/2024 14:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[ID_Asistencia] [int] IDENTITY(1,1) NOT NULL,
	[Estudiante_ID] [int] NOT NULL,
	[Clase_ID] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 21/08/2024 14:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase](
	[ID_Clase] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Clase] [varchar](150) NOT NULL,
	[Descripción] [varchar](300) NULL,
	[Día_Semana] [varchar](100) NOT NULL,
	[Hora_Inicio] [time](7) NOT NULL,
	[Hora_Fin] [time](7) NOT NULL,
	[Instructor_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 21/08/2024 14:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[ID_Estudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Apellido_Paterno] [varchar](100) NOT NULL,
	[Apellido_Materno] [varchar](100) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Numero_Documento] [int] NOT NULL,
	[Celular] [varchar](20) NULL,
	[Procedimiento_Salida] [varchar](200) NOT NULL,
	[Enfermedad] [varchar](250) NULL,
	[Fecha_Registro] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Enfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Numero_Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 21/08/2024 14:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[ID_Instructor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Apellido_Paterno] [varchar](100) NOT NULL,
	[Apellido_Materno] [varchar](100) NOT NULL,
	[Celular] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Instructor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 21/08/2024 14:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[ID_Pago] [int] IDENTITY(1,1) NOT NULL,
	[Estudiantes_ID] [int] NULL,
	[Monto] [int] NOT NULL,
	[Fecha_Pago] [date] NOT NULL,
	[Metodo_Pago] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD FOREIGN KEY([Clase_ID])
REFERENCES [dbo].[Clase] ([ID_Clase])
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD FOREIGN KEY([Estudiante_ID])
REFERENCES [dbo].[Estudiantes] ([ID_Estudiante])
GO
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD FOREIGN KEY([Instructor_ID])
REFERENCES [dbo].[Instructor] ([ID_Instructor])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([Estudiantes_ID])
REFERENCES [dbo].[Estudiantes] ([ID_Estudiante])
GO
USE [master]
GO
ALTER DATABASE [Asistencia_Academia_Taekwondo] SET  READ_WRITE 
GO
