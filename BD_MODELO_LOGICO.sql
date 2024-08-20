-- Creacion BD
CREATE DATABASE	Asistencia_Academia_Taekwondo;
GO
-- Seleccion BD
USE Asistencia_Academia_Taekwondo

-- Creación de tablas:
CREATE TABLE Estudiantes(
ID_Estudiante INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(250) NOT NULL,
Apellido_Paterno VARCHAR(100) NOT NULL,
Apellido_Materno VARCHAR(100) NOT NULL,
Fecha_Nacimiento DATE NOT NULL,
Numero_Documento INT UNIQUE NOT NULL,
Celular VARCHAR(20) NULL,
Procedimiento_Salida VARCHAR(200) NOT NULL,
Enfermedad VARCHAR(250) unique NULL,
Fecha_Registro DATE NOT NULL
);

CREATE TABLE Instructor(
ID_Instructor INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(200) NOT NULL,
Apellido_Paterno VARCHAR(100) NOT NULL,
Apellido_Materno VARCHAR(100) NOT NULL,
Celular VARCHAR(20) NOT NULL
);

CREATE TABLE Clase(
ID_Clase INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre_Clase VARCHAR(150) NOT NULL,
Descripción VARCHAR(300) null,
Día_Semana VARCHAR(100) NOT NULL,
Hora_Inicio TIME NOT NULL,
Hora_Fin TIME NOT NULL,
Instructor_ID INT NOT NULL,
FOREIGN KEY (Instructor_ID) REFERENCES Instructor(ID_Instructor)
);

CREATE TABLE Asistencia(
ID_Asistencia INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Estudiante_ID INT NOT NULL,
Clase_ID INT NOT NULL,
Fecha DATE NOT NULL,
FOREIGN KEY (Estudiante_ID) REFERENCES Estudiantes(ID_Estudiante),
FOREIGN KEY (Clase_ID) REFERENCES Clase(ID_Clase)
);

CREATE TABLE Pagos(
	ID_Pago INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Estudiantes_ID INT,
	Monto INT NOT NULL,
	Fecha_Pago DATE NOT NULL,
	Metodo_Pago VARCHAR(100) NOT NULL,
	FOREIGN KEY (Estudiantes_ID) REFERENCES Estudiantes(ID_Estudiante)
)