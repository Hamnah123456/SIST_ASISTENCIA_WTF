-- Creacion BD
CREATE DATABASE	Asistencia_Academia_Taekwondo_BI;
GO

-- Seleccion BD
USE Asistencia_Academia_Taekwondo_BI;

USE Asistencia_Academia_Taekwondo_BI;

CREATE TABLE [dim_Estudiantes] (
ID_Estudiante INT UNIQUE NOT NULL,
Nombre VARCHAR(250) NOT NULL,
Apellido_Paterno VARCHAR(100) NOT NULL,
Apellido_Materno VARCHAR(100) NOT NULL,
Fecha_Nacimiento DATE NOT NULL,
Fecha_Registro DATE NOT NULL,
Numero_Documento VARCHAR(50) UNIQUE NULL,
PRIMARY KEY (ID_Estudiante)
);

CREATE TABLE dim_Instructor(
    ID_Instructor INT  UNIQUE NOT NULL,
    Nombre VARCHAR(200) NOT NULL,
    Apellido_Paterno VARCHAR(100) NOT NULL,
    Apellido_Materno VARCHAR(100) NOT NULL,
	PRIMARY KEY (ID_Instructor)

);


CREATE TABLE dim_Clase (
    ID_Clase INT UNIQUE NOT NULL,
    Nombre_Clase VARCHAR(150) NOT NULL,
    Día_Semana VARCHAR(100) NOT NULL,
    Horario TIME NOT NULL,
    ID_Instructor INT NOT NULL,
    FOREIGN KEY (ID_Instructor) REFERENCES dim_Instructor(ID_Instructor),
	PRIMARY KEY (ID_Clase)

);

CREATE TABLE dim_tiempo (
    id_fecha DATE UNIQUE NOT NULL,
    Día INT NOT NULL,
    Mes INT NOT NULL,
    Dia_Semana VARCHAR(25) NOT NULL,
    Año INT NOT NULL,
	PRIMARY KEY (id_fecha)

);

CREATE TABLE fact_Asistencia (
    ID_Asistencia INT UNIQUE NOT NULL,
    ID_Estudiante INT NOT NULL,
    ID_Clase INT NOT NULL,
    ID_Fecha DATE NOT NULL,
    FOREIGN KEY (ID_Estudiante) REFERENCES dim_Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Clase) REFERENCES dim_Clase(ID_Clase),
    FOREIGN KEY (ID_Fecha) REFERENCES dim_tiempo(id_fecha),
	PRIMARY KEY (ID_Asistencia)

);
