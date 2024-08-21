USE Asistencia_Academia_Taekwondo;
GO

-- Insercion de datos
INSERT INTO dbo.Estudiantes (Nombre, Apellido_Paterno, Apellido_Materno, Fecha_Nacimiento, Numero_Documento, Celular, Procedimiento_Salida, Enfermedad, Fecha_Registro)
VALUES 
('Juan', 'P�rez', 'G�mez', '2010-05-14', 12345678, '555-1234', 'Entrega a tutor', NULL, '2022-08-19'),
('Mar�a', 'L�pez', 'Fern�ndez', '2011-09-20', 87654321, '555-5678', 'Entrega a padre', 'Asma', '2019-08-02'),
('Carlos', 'Rodr�guez', 'S�nchez', '2009-11-02', 11223344, '555-9876', 'Entrega a madre', NULL, '2022-08-21'),
('Ana', 'Mart�nez', 'Torres', '2012-02-18', 44332211, '555-4321', 'Entrega a abuelo', 'Alergia al polen', '2023-06-21'),
('Luc�a', 'Gonz�lez', 'Ram�rez', '2008-12-12', 55667788, '555-8765', 'Entrega a hermano', NULL, '2024-05-21'),
('Carlos', 'Garc�a', 'L�pez', '2005-03-15', 12234567, '555-1234', 'Autorizaci�n parental', 'Ninguna', '2023-09-20'),
('Ana', 'P�rez', 'Mart�nez', '2004-06-23', 12234568, '555-5678', 'Recoger en recepci�n', 'Alergia al polen', '2022-05-21'),
('Javier', 'Ruiz', 'Gonz�lez', '2006-11-02', 12234569, '555-8765', 'Permiso de salida anticipada', 'Problemas respiratorios', '2018-06-21'),
('Sof�a', 'Hern�ndez', 'Morales', '2005-07-30', 12234570, '555-4321', 'Recoger en recepci�n', 'Sin enfermedades conocidas', '2023-07-11'),
('Lucas', 'Fern�ndez', 'Jim�nez', '2003-12-17', 12234571, '555-6789', 'Autorizaci�n parental', 'Dolores de cabeza', '2020-11-21'),
('Valeria', 'Castro', 'V�squez', '2007-05-21', 12234572, '555-3456', 'Permiso especial', 'Ninguna', '2019-07-02'),
('Diego', 'Ram�rez', 'Alvarez', '2006-04-12', 12234573, '555-9876', 'Recoger en recepci�n', 'Sin enfermedades conocidas', '2024-02-21'),
('Paola', 'Moreno', 'Alonso', '2005-09-05', 12234574, '555-6543', 'Autorizaci�n parental', 'Alergia a los frutos secos', '2024-04-21'),
('Mateo', 'Vega', 'S�nchez', '2004-01-14', 12234575, '555-3210', 'Recoger en recepci�n', 'Dolores musculares', '2022-03-20'),
('Isabella', 'Molina', 'Garc�a', '2007-08-25', 12234576, '555-4567', 'Permiso especial', 'Sin enfermedades conocidas', '2022-10-21'),
('Gabriel', 'Soto', 'G�mez', '2003-10-10', 12234577, '555-8901', 'Autorizaci�n parental', 'Problemas digestivos', '2024-04-21'),
('Mar�a', 'D�az', 'Ben�tez', '2005-02-19', 12234578, '555-1235', 'Recoger en recepci�n', 'Ninguna', '2024-01-21'),
('Tom�s', 'Cordero', 'R�os', '2006-12-28', 12234579, '555-6780', 'Permiso especial', 'Alergia al polvo', '2024-06-21'),
('Camila', 'Jaramillo', 'Salazar', '2004-04-09', 12234580, '555-5432', 'Autorizaci�n parental', 'Sin enfermedades conocidas', '2024-07-21'),
('Sebasti�n', 'N��ez', 'Orozco', '2005-11-11', 12234581, '555-7890', 'Recoger en recepci�n', 'Problemas de visi�n', '2024-08-21'),
('Laura', 'Cardenas', 'Hidalgo', '2007-01-22', 12234582, '555-2345', 'Permiso especial', 'Sin enfermedades conocidas', '2024-08-21');

INSERT INTO dbo.Instructor (Nombre, Apellido_Paterno, Apellido_Materno, Celular)
VALUES 
('Luis', 'Garc�a', 'Hern�ndez', '555-1111'),
('Marta', 'Ram�rez', 'L�pez', '555-2222'),
('Carlos', 'Santos', 'Mart�nez', '555-3333'),
('Ana', 'Fern�ndez', 'G�mez', '555-4444'),
('Pedro', 'Guti�rrez', 'Torres', '555-5555');

INSERT INTO dbo.Clase (Nombre_Clase, Descripci�n, D�a_Semana, Hora_Inicio, Hora_Fin, Instructor_ID)
VALUES 
('Taekwondo B�sico', 'Clase para principiantes, enfocado en t�cnicas b�sicas', 'Lunes', '10:00', '11:30', 1),
('Taekwondo Intermedio', 'Clase de nivel intermedio, t�cnicas avanzadas', 'Mi�rcoles', '12:00', '13:30', 2),
('Taekwondo Avanzado', 'Clase avanzada, preparaci�n para competiciones', 'Viernes', '15:00', '16:30', 3),
('Defensa Personal', 'Clase de defensa personal aplicada', 'S�bado', '09:00', '10:30', 4),
('Entrenamiento Libre', 'Sesi�n libre de entrenamiento', 'Domingo', '11:00', '12:30', 5);


-- Inserccion de datos de las tablas pagos 
-- Estudiantes_ID

INSERT INTO dbo.Pagos (Estudiantes_ID, Monto, Fecha_Pago, Metodo_Pago)
VALUES 
(33, 120, '2024-01-19', 'Efectivo'),
(33, 120, '2024-02-19', 'Efectivo'),
(33, 120, '2024-03-19', 'Efectivo'),
(33, 120, '2024-04-19', 'Efectivo'),
(33, 120, '2024-05-19', 'Efectivo'),
(33, 120, '2024-06-19', 'Efectivo'),
(33, 120, '2024-07-19', 'Efectivo'),
(33, 120, '2024-08-19', 'Efectivo'),
(34, 120, '2024-01-10', 'Efectivo'),
(34, 120, '2024-02-10', 'Efectivo'),
(34, 120, '2024-03-10', 'Efectivo'),
(34, 120, '2024-04-10', 'Efectivo'),
(34, 120, '2024-05-10', 'Efectivo'),
(34, 120, '2024-06-10', 'Efectivo'),
(34, 120, '2024-07-10', 'Efectivo'),
(34, 120, '2024-08-10', 'Efectivo'),
(35, 120, '2024-01-15', 'Efectivo'),
(35, 120, '2024-02-15', 'Efectivo'),
(35, 120, '2024-03-15', 'Efectivo'),
(35, 120, '2024-04-15', 'Efectivo'),
(35, 120, '2024-05-15', 'Efectivo'),
(35, 120, '2024-06-15', 'Efectivo'),
(35, 120, '2024-07-15', 'Efectivo'),
(35, 120, '2024-08-15', 'Efectivo'),
(36, 120, '2024-01-05', 'Efectivo'),
(36, 120, '2024-02-05', 'Efectivo'),
(36, 120, '2024-03-05', 'Efectivo'),
(36, 120, '2024-04-05', 'Efectivo'),
(36, 120, '2024-05-05', 'Efectivo'),
(36, 120, '2024-06-05', 'Efectivo'),
(36, 120, '2024-07-05', 'Efectivo'),
(36, 102, '2024-08-05', 'Efectivo'),
(37, 120, '2024-01-05', 'Efectivo'),
(37, 120, '2024-02-05', 'Efectivo'),
(37, 120, '2024-03-05', 'Efectivo'),
(37, 120, '2024-04-05', 'Efectivo'),
(37, 120, '2024-05-05', 'Efectivo'),
(37, 120, '2024-06-05', 'Efectivo'),
(37, 120, '2024-07-05', 'Efectivo'),
(37, 120, '2024-08-05', 'Efectivo'),
(38, 120, '2024-01-05', 'Efectivo'),
(38, 120, '2024-02-05', 'Efectivo'),
(38, 120, '2024-03-05', 'Efectivo'),
(38, 120, '2024-04-05', 'Efectivo'),
(38, 120, '2024-05-05', 'Efectivo'),
(38, 120, '2024-06-05', 'Efectivo'),
(38, 120, '2024-07-05', 'Efectivo'),
(38, 120, '2024-08-05', 'Efectivo'),
(39, 120, '2024-01-05', 'Efectivo'),
(39, 120, '2024-02-05', 'Efectivo'),
(39, 120, '2024-03-05', 'Efectivo'),
(39, 120, '2024-04-05', 'Efectivo'),
(39, 120, '2024-05-05', 'Efectivo'),
(39, 120, '2024-06-05', 'Efectivo'),
(39, 120, '2024-07-05', 'Efectivo'),
(39, 120, '2024-08-05', 'Efectivo'),
(40, 102, '2024-01-05', 'Efectivo'),
(40, 120, '2024-02-05', 'Efectivo'),
(40, 120, '2024-03-05', 'Efectivo'),
(40, 120, '2024-04-05', 'Efectivo'),
(40, 120, '2024-05-05', 'Efectivo'),
(40, 120, '2024-06-05', 'Efectivo'),
(40, 120, '2024-07-05', 'Efectivo'),
(40, 120, '2024-08-05', 'Efectivo'),
(41, 120, '2024-01-05', 'Efectivo'),
(41, 120, '2024-02-05', 'Efectivo'),
(41, 120, '2024-03-05', 'Efectivo'),
(41, 120, '2024-04-05', 'Efectivo'),
(41, 120, '2024-05-05', 'Efectivo'),
(41, 120, '2024-06-05', 'Efectivo'),
(41, 120, '2024-07-05', 'Efectivo'),
(41, 120, '2024-08-05', 'Efectivo'),
(42, 120, '2024-01-05', 'Efectivo'),
(42, 120, '2024-02-05', 'Efectivo'),
(42, 120, '2024-03-05', 'Efectivo'),
(42, 120, '2024-04-05', 'Efectivo'),
(42, 120, '2024-05-05', 'Efectivo'),
(42, 120, '2024-06-05', 'Efectivo'),
(42, 120, '2024-07-05', 'Efectivo'),
(42, 120, '2024-08-05', 'Efectivo'),
(43, 120, '2024-01-05', 'Efectivo'),
(43, 120, '2024-02-05', 'Efectivo'),
(43, 120, '2024-03-05', 'Efectivo'),
(43, 120, '2024-04-05', 'Efectivo'),
(43, 120, '2024-05-05', 'Efectivo'),
(43, 120, '2024-06-05', 'Efectivo'),
(43, 120, '2024-07-05', 'Efectivo'),
(43, 120, '2024-08-05', 'Efectivo'),
(44, 120, '2024-01-05', 'Efectivo'),
(44, 120, '2024-02-05', 'Efectivo'),
(44, 120, '2024-03-05', 'Efectivo'),
(44, 120, '2024-04-05', 'Efectivo'),
(44, 120, '2024-05-05', 'Efectivo'),
(44, 120, '2024-06-05', 'Efectivo'),
(44, 120, '2024-07-05', 'Efectivo'),
(44, 120, '2024-08-05', 'Efectivo'),
(45, 120, '2024-01-05', 'Efectivo'),
(45, 120, '2024-02-05', 'Efectivo'),
(45, 120, '2024-03-05', 'Efectivo'),
(45, 120, '2024-04-05', 'Efectivo'),
(45, 120, '2024-05-05', 'Efectivo'),
(45, 120, '2024-06-05', 'Efectivo'),
(45, 120, '2024-07-05', 'Efectivo'),
(45, 120, '2024-08-05', 'Efectivo'),
(46, 120, '2024-01-05', 'Efectivo'),
(46, 120, '2024-02-05', 'Efectivo'),
(46, 120, '2024-03-05', 'Efectivo'),
(46, 120, '2024-04-05', 'Efectivo'),
(46, 120, '2024-05-05', 'Efectivo'),
(46, 120, '2024-06-05', 'Efectivo'),
(46, 102, '2024-07-05', 'Efectivo'),
(46, 120, '2024-08-05', 'Efectivo'),
(47, 120, '2024-01-05', 'Efectivo'),
(47, 120, '2024-02-05', 'Efectivo'),
(47, 120, '2024-03-05', 'Efectivo'),
(47, 120, '2024-04-05', 'Efectivo'),
(47, 120, '2024-05-05', 'Efectivo'),
(47, 120, '2024-06-05', 'Efectivo'),
(47, 120, '2024-07-05', 'Efectivo'),
(48, 120, '2024-01-05', 'Efectivo'),
(48, 120, '2024-02-05', 'Efectivo'),
(48, 120, '2024-03-05', 'Efectivo'),
(48, 120, '2024-04-05', 'Efectivo'),
(48, 120, '2024-05-05', 'Efectivo'),
(48, 120, '2024-06-05', 'Efectivo'),
(48, 120, '2024-07-05', 'Efectivo'),
(48, 120, '2024-08-05', 'Efectivo'),
(49, 120, '2024-01-05', 'Efectivo'),
(49, 120, '2024-02-05', 'Efectivo'),
(49, 120, '2024-03-05', 'Efectivo'),
(49, 120, '2024-04-05', 'Efectivo'),
(49, 120, '2024-05-05', 'Efectivo'),
(49, 120, '2024-06-05', 'Efectivo'),
(49, 120, '2024-07-05', 'Efectivo'),
(49, 120, '2024-08-05', 'Efectivo'),
(50, 120, '2024-01-05', 'Efectivo'),
(50, 120, '2024-02-05', 'Efectivo'),
(50, 120, '2024-03-05', 'Efectivo'),
(50, 120, '2024-04-05', 'Efectivo'),
(50, 120, '2024-05-05', 'Efectivo'),
(50, 120, '2024-06-05', 'Efectivo'),
(50, 120, '2024-07-05', 'Efectivo'),
(50, 120, '2024-08-05', 'Efectivo'),
(51, 120, '2024-01-05', 'Efectivo'),
(51, 120, '2024-02-05', 'Efectivo'),
(51, 120, '2024-03-05', 'Efectivo'),
(51, 120, '2024-04-05', 'Efectivo'),
(51, 120, '2024-05-05', 'Efectivo'),
(51, 120, '2024-06-05', 'Efectivo'),
(51, 120, '2024-07-05', 'Efectivo'),
(51, 120, '2024-08-05', 'Efectivo'),
(52, 120, '2024-01-05', 'Efectivo'),
(52, 120, '2024-02-05', 'Efectivo'),
(52, 120, '2024-03-05', 'Efectivo'),
(52, 120, '2024-04-05', 'Efectivo'),
(52, 120, '2024-05-05', 'Efectivo'),
(52, 120, '2024-06-05', 'Efectivo'),
(52, 120, '2024-07-05', 'Efectivo'),
(52, 120, '2024-08-05', 'Efectivo'),
(53, 120, '2024-01-05', 'Efectivo'),
(53, 120, '2024-02-05', 'Efectivo'),
(53, 120, '2024-03-05', 'Efectivo'),
(53, 120, '2024-04-05', 'Efectivo'),
(53, 120, '2024-05-05', 'Efectivo'),
(53, 120, '2024-06-05', 'Efectivo'),
(53, 120, '2024-07-05', 'Efectivo'),
(53, 120, '2024-08-05', 'Efectivo');


-- Inserccion de datos de las tablas Asistencia

-- Declarar variables
DECLARE @NumRegistros INT = 200; -- N�mero de registros a insertar
DECLARE @Estudiante_ID INT;
DECLARE @Clase_ID INT;
DECLARE @Fecha DATE;

-- Bucle para insertar registros aleatorios
WHILE @NumRegistros > 0
BEGIN
    -- Seleccionar un Estudiante_ID aleatorio
    SET @Estudiante_ID = (SELECT TOP 1 ID_Estudiante FROM dbo.Estudiantes ORDER BY NEWID());

    -- Seleccionar un Clase_ID aleatorio
    SET @Clase_ID = (SELECT TOP 1 ID_Clase FROM dbo.Clase ORDER BY NEWID());

    -- Generar una fecha aleatoria en el a�o 2024
    SET @Fecha = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 365), '2024-01-01');

    -- Insertar el registro en la tabla Asistencia
    INSERT INTO dbo.Asistencia (Estudiante_ID, Clase_ID, Fecha)
    VALUES (@Estudiante_ID, @Clase_ID, @Fecha);

    -- Reducir el n�mero de registros restantes
    SET @NumRegistros = @NumRegistros - 1;
END

select * from Asistencia