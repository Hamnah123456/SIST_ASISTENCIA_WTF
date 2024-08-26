-- Fecha: 23/08/2024
-- Modelamiento de datos: BI

--use Asistencia_Academia_Taekwondo
-- GO

-- HACEMOS LAS TABLAS

-- HACEMOS LAS RELACIONES ENTRE LAS TABLAS
--	no se juntan las relaciones en BI

ALTER TABLE [NOMBRE DE TABLA]
ADD CONSTRAINT FK_HECHOS_DIN_TABLA FOREIGN KEY (DIM_ID_TABLA) REFERENCES DIM_TABLA;
-- SE REPITE PARA LAS DEMAS RELACIONES
-- DESPUES DE HACER LAS RELACIONES SE HACE EL DIAGRAMA MODELO
-- TRABAJO 4 : SCRIP DEL MODELO DIMENCIONAL E IMAGEN SE SUBE

--Segunda parte: 
-- datos de la otra base de datos
--  se reraliza consultas que permitan llenar las tablas
-- query aparte

--	 Use Asistencia_Academia_Taekwondo
--    go

-- consuktas por tabla
-- 1. ver tablas a usar
-- 2. seleccion de lo que nesecites

g||||||||