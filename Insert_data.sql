USE Asistencia_Academia_Taekwondo;
GO

-- Insercion de datos
INSERT INTO dbo.Estudiantes (Nombre, Apellido_Paterno, Apellido_Materno, Fecha_Nacimiento, Numero_Documento, Celular, Procedimiento_Salida, Enfermedad, Fecha_Registro)
VALUES 
('Juan', 'Pérez', 'Gómez', '2010-05-14', 12345678, '555-1234', 'Entrega a tutor', NULL, '2022-08-19'),
('María', 'López', 'Fernández', '2011-09-20', 87654321, '555-5678', 'Entrega a padre', 'Asma', '2019-08-02'),
('Carlos', 'Rodríguez', 'Sánchez', '2009-11-02', 11223344, '555-9876', 'Entrega a madre', NULL, '2022-08-21'),
('Ana', 'Martínez', 'Torres', '2012-02-18', 44332211, '555-4321', 'Entrega a abuelo', 'Alergia al polen', '2023-06-21'),
('Lucía', 'González', 'Ramírez', '2008-12-12', 55667788, '555-8765', 'Entrega a hermano', NULL, '2024-05-21'),
('Carlos', 'García', 'López', '2005-03-15', 12234567, '555-1234', 'Autorización parental', 'Ninguna', '2023-09-20'),
('Ana', 'Pérez', 'Martínez', '2004-06-23', 12234568, '555-5678', 'Recoger en recepción', 'Alergia al polen', '2022-05-21'),
('Javier', 'Ruiz', 'González', '2006-11-02', 12234569, '555-8765', 'Permiso de salida anticipada', 'Problemas respiratorios', '2018-06-21'),
('Sofía', 'Hernández', 'Morales', '2005-07-30', 12234570, '555-4321', 'Recoger en recepción', 'Sin enfermedades conocidas', '2023-07-11'),
('Lucas', 'Fernández', 'Jiménez', '2003-12-17', 12234571, '555-6789', 'Autorización parental', 'Dolores de cabeza', '2020-11-21'),
('Valeria', 'Castro', 'Vásquez', '2007-05-21', 12234572, '555-3456', 'Permiso especial', 'Ninguna', '2019-07-02'),
('Diego', 'Ramírez', 'Alvarez', '2006-04-12', 12234573, '555-9876', 'Recoger en recepción', 'Sin enfermedades conocidas', '2024-02-21'),
('Paola', 'Moreno', 'Alonso', '2005-09-05', 12234574, '555-6543', 'Autorización parental', 'Alergia a los frutos secos', '2024-04-21'),
('Mateo', 'Vega', 'Sánchez', '2004-01-14', 12234575, '555-3210', 'Recoger en recepción', 'Dolores musculares', '2022-03-20'),
('Isabella', 'Molina', 'García', '2007-08-25', 12234576, '555-4567', 'Permiso especial', 'Sin enfermedades conocidas', '2022-10-21'),
('Gabriel', 'Soto', 'Gómez', '2003-10-10', 12234577, '555-8901', 'Autorización parental', 'Problemas digestivos', '2024-04-21'),
('María', 'Díaz', 'Benítez', '2005-02-19', 12234578, '555-1235', 'Recoger en recepción', 'Ninguna', '2024-01-21'),
('Tomás', 'Cordero', 'Ríos', '2006-12-28', 12234579, '555-6780', 'Permiso especial', 'Alergia al polvo', '2024-06-21'),
('Camila', 'Jaramillo', 'Salazar', '2004-04-09', 12234580, '555-5432', 'Autorización parental', 'Sin enfermedades conocidas', '2024-07-21'),
('Sebastián', 'Núñez', 'Orozco', '2005-11-11', 12234581, '555-7890', 'Recoger en recepción', 'Problemas de visión', '2024-08-21'),
('Laura', 'Cardenas', 'Hidalgo', '2007-01-22', 12234582, '555-2345', 'Permiso especial', 'Sin enfermedades conocidas', '2024-08-21');

INSERT INTO dbo.Instructor (Nombre, Apellido_Paterno, Apellido_Materno, Celular)
VALUES 
('Luis', 'García', 'Hernández', '555-1111'),
('Marta', 'Ramírez', 'López', '555-2222'),
('Carlos', 'Santos', 'Martínez', '555-3333'),
('Ana', 'Fernández', 'Gómez', '555-4444'),
('Pedro', 'Gutiérrez', 'Torres', '555-5555');

INSERT INTO dbo.Clase (Nombre_Clase, Descripción, Día_Semana, Hora_Inicio, Hora_Fin, Instructor_ID)
VALUES 
('Taekwondo Básico', 'Clase para principiantes, enfocado en técnicas básicas', 'Lunes', '10:00', '11:30', 1),
('Taekwondo Intermedio', 'Clase de nivel intermedio, técnicas avanzadas', 'Miércoles', '12:00', '13:30', 2),
('Taekwondo Avanzado', 'Clase avanzada, preparación para competiciones', 'Viernes', '15:00', '16:30', 3),
('Defensa Personal', 'Clase de defensa personal aplicada', 'Sábado', '09:00', '10:30', 4),
('Entrenamiento Libre', 'Sesión libre de entrenamiento', 'Domingo', '11:00', '12:30', 5);


-- Inserccion de datos de las tablas pagos 
-- Variables de control
DECLARE @ID_Estudiante INT;
DECLARE @Fecha_Registro DATE;
DECLARE @Mes INT;

-- Cursor para recorrer los estudiantes
DECLARE EstudianteCursor CURSOR FOR
SELECT ID_Estudiante, Fecha_Registro
FROM Estudiantes;

-- Abrir el cursor
OPEN EstudianteCursor;

-- Obtener el primer registro
FETCH NEXT FROM EstudianteCursor INTO @ID_Estudiante, @Fecha_Registro;

-- Bucle a través de todos los registros de estudiantes
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Insertar un pago por cada mes hasta el mes actual
    SET @Mes = 1;
    WHILE @Mes <= MONTH(GETDATE())
    BEGIN
        INSERT INTO Pagos (Estudiantes_ID, Monto, Fecha_Pago, Metodo_Pago)
        VALUES (@ID_Estudiante, 120, DATEADD(MONTH, @Mes - 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(@Fecha_Registro), DAY(@Fecha_Registro))), 'Efectivo');

        -- Incrementar el contador de meses
        SET @Mes = @Mes + 1;
    END

    -- Obtener el siguiente registro
    FETCH NEXT FROM EstudianteCursor INTO @ID_Estudiante, @Fecha_Registro;
END

-- Cerrar y liberar el cursor
CLOSE EstudianteCursor;
DEALLOCATE EstudianteCursor;



-- Inserccion de datos de las tablas Asistencia

-- Variables de configuración
DECLARE @FechaInicio DATE = '2024-01-08'; -- Fecha de inicio de las asistencias
DECLARE @FechaFin DATE = GETDATE();       -- Fecha de fin (hoy)
DECLARE @DiaSemana NVARCHAR(10);

-- Variables para almacenar datos temporales
DECLARE @Estudiante_ID INT;
DECLARE @Clase_ID INT;
DECLARE @Fecha DATE;
DECLARE @Hora_Inicio TIME;
DECLARE @Hora_Fin TIME;

-- Cursores para recorrer los estudiantes y clases
DECLARE EstudianteCursor CURSOR FOR
SELECT ID_Estudiante FROM Estudiantes;

DECLARE ClaseCursor CURSOR FOR
SELECT ID_Clase, Día_Semana, Hora_Inicio, Hora_Fin FROM Clase;

-- Abrir el cursor de estudiantes
OPEN EstudianteCursor;

-- Obtener el primer estudiante
FETCH NEXT FROM EstudianteCursor INTO @Estudiante_ID;

-- Bucle a través de los estudiantes
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Establecer fecha de inicio para cada estudiante
    SET @Fecha = @FechaInicio;

    -- Bucle a través de las fechas hasta la fecha actual
    WHILE @Fecha <= @FechaFin
    BEGIN
        -- Obtener el día de la semana en formato textual
        SET @DiaSemana = DATENAME(WEEKDAY, @Fecha);

        -- Verificar si el estudiante asistirá (probabilidad del 70%)
        IF (ABS(CHECKSUM(NEWID())) % 100) < 70
        BEGIN
            -- Abrir el cursor de clases
            OPEN ClaseCursor;

            -- Obtener la primera clase
            FETCH NEXT FROM ClaseCursor INTO @Clase_ID, @DiaSemana, @Hora_Inicio, @Hora_Fin;

            -- Bucle a través de las clases para cada estudiante
            WHILE @@FETCH_STATUS = 0
            BEGIN
                -- Verificar si la clase ocurre en el día actual
                IF @DiaSemana = Día_Semana
                BEGIN
                    -- Verificar si el estudiante asistirá a más de un turno (probabilidad del 30%)
                    IF (ABS(CHECKSUM(NEWID())) % 100) < 30
                    BEGIN
                        -- Establecer hora de inicio temprana y hora de fin tardía
                        SET @Hora_Inicio = '08:00'; -- Hora de inicio temprana
                        SET @Hora_Fin = '18:00';    -- Hora de fin tardía

                        -- Insertar un registro de asistencia para un día completo
                        INSERT INTO Asistencia (Estudiante_ID, Clase_ID, Fecha, Hora_inicio, Hora_fin)
                        VALUES (@Estudiante_ID, @Clase_ID, @Fecha, @Hora_Inicio, @Hora_Fin);
                    END
                    ELSE
                    BEGIN
                        -- Insertar un registro de asistencia para la hora de la clase específica
                        INSERT INTO Asistencia (Estudiante_ID, Clase_ID, Fecha, Hora_inicio, Hora_fin)
                        VALUES (@Estudiante_ID, @Clase_ID, @Fecha, @Hora_Inicio, @Hora_Fin);
                    END
                END

                -- Obtener la siguiente clase
                FETCH NEXT FROM ClaseCursor INTO @Clase_ID, @DiaSemana, @Hora_Inicio, @Hora_Fin;
            END

            -- Cerrar y liberar el cursor de clases
            CLOSE ClaseCursor;
            DEALLOCATE ClaseCursor;
        END

        -- Avanzar a la siguiente fecha
        SET @Fecha = DATEADD(DAY, 1, @Fecha);
    END

    -- Obtener el siguiente estudiante
    FETCH NEXT FROM EstudianteCursor INTO @Estudiante_ID;
END

-- Cerrar y liberar el cursor de estudiantes
CLOSE EstudianteCursor;
DEALLOCATE EstudianteCursor;
