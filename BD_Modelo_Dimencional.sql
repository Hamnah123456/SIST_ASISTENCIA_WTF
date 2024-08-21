-- Creacion BD
CREATE DATABASE	Asistencia_Academia_Taekwondo_BI;
GO
-- Seleccion BD
USE Asistencia_Academia_Taekwondo_BI;

-- Creación de tablas:
CREATE TABLE dim_Estudiantes(
ID_Estudiante INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(250) NOT NULL,
Apellido_Paterno VARCHAR(100) NOT NULL,
Apellido_Materno VARCHAR(100) NOT NULL,
Fecha_Nacimiento DATE NOT NULL,
Genero VARCHAR NULL,
Fecha_Registro DATE NOT NULL
);

CREATE TABLE dim_Instructor(
ID_Instructor INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(200) NOT NULL,
Apellido_Paterno VARCHAR(100) NOT NULL,
Apellido_Materno VARCHAR(100) NOT NULL,
Especialidad VARCHAR(100) NULL,
Cinturon VARCHAR(100) NULL
);

CREATE TABLE dim_Clase(
ID_Clase INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre_Clase VARCHAR(150) NOT NULL,
Nivel VARCHAR(300) null,
DíaS_Semana VARCHAR(100) NOT NULL,
Horario TIME NOT NULL,

);

CREATE TABLE dim_tiempo(
	id_fecha DATE PRIMARY KEY NOT NULL,
	Día INT NOT NULL,
	Mes INT NOT NULL,
	Dia_semana VARCHAR(25) NOT NULL,
	Año INT NOT NULL
);

CREATE TABLE dim_Asistencia(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ID_Estudiante INT,
	ID_Clase INT,
	ID_Instructor INT, 
	Fecha DATE, 
	FOREIGN KEY (ID_Estudiante) REFERENCES dim_Estudiantes(ID_Estudiante),
	FOREIGN KEY (ID_Clase) REFERENCES dim_clase(ID_Clase),
	FOREIGN KEY (ID_Instructor) REFERENCES dim_Instructor(ID_Instructor),
	FOREIGN KEY (Fecha) REFERENCES dim_tiempo(id_fecha)
);
