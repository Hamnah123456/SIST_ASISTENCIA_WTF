USE Asistencia_Academia_Taekwondo

-- Consulta para poblar dim_Estudiantes

select * from Estudiantes;

SELECT ID_Estudiante as Id_Estudiante,
		Nombre,Apellido_paterno,Apellido_Materno,
		Fecha_Nacimiento, Fecha_Registro,Numero_Documento
From Estudiantes;


-- Consulta para poblar dim_instructor

SELECT Nombre, Apellido_Paterno,Apellido_Materno
FROM Instructor

-- Consulta para poblar dim_clase

SELECT ID_Clase,Nombre_Clase, Día_Semana,
		CONCAT(Hora_Inicio, ' ' ,Hora_Fin) AS Horario,
		Instructor_ID AS ID_Instructor
FROM Clase

-- Consulta para poblar dim_tiempo

SET LANGUAGE Spanish;
SELECT 
    DISTINCT 
	Fecha AS id_fecha,
    DAY(Fecha) AS 'dia',
	DATENAME(WEEKDAY, Fecha) AS 'dia_semana',
    DATENAME(MONTH, Fecha) AS 'mes',
    YEAR(Fecha) AS 'anio'
FROM Asistencia;


-- Consulta para poblar fact_asistencia (Tabla hechos)

SELECT
    ID_Asistencia ,
    Estudiante_ID AS ID_Estudiante,
    Clase_ID AS ID_Clase,
    Fecha AS ID_Fecha
FROM 
    Asistencia;

