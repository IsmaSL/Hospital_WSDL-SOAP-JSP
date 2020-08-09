
CREATE TABLE PACIENTE (
	noExp SERIAL PRIMARY KEY,
	nombre VARCHAR(15),
	apellidos VARCHAR(50),
	direccion VARCHAR(150),
	telefono VARCHAR(10),
	ciudad VARCHAR(15)
);

CREATE TABLE consulta (
	noCon SERIAL PRIMARY KEY,
	noExp INT,
	consultorio VARCHAR(2),
	noPiso VARCHAR(2),
	medico VARCHAR(200),
	especialidad VARCHAR(25),
	fecCon DATE,
	observacion VARCHAR(255)
);

SET DATESTYLE TO 'European';

alter table consulta add constraint paci_cons
foreign key (noExp) references paciente (noExp);

SELECT * FROM paciente;
DELETE FROM paciente;

SELECT * FROM consulta;

-- PACIENTES DE ORIZABA
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Luis','Garcias Perez','Nte 10','2721389301','Orizaba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Maria','Lopez Mendez','Nte 10','2721389301','Orizaba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Panfilo','Martinez Perez','Nte 10','2721389301','Orizaba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Miguel','Garcias Hernandez','Nte 10','2721389301','Orizaba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Pedrp','Garcias Perez','Nte 10r','2721389301','Orizaba');
-- PACIENTES DE CORDOBA
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Karen','Huerta Perez','Sur 15','2711389307','Cordoba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Israel','Huerta López','Sur 15','2711389307','Cordoba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Manuel','Lopez Perez','Sur 15','2711389307','Cordoba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Saul','Huerta Diaz','Sur 15','2711389307','Cordoba');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Luis','Diaz Perez','Sur 15','2711389307','Cordoba');
-- PACIENTES DE RIO BLANCO
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Ramiro','Cruz Perez','Ote 3','2721489401','Rio Blanco');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Erika','Garcias Cruz','Ote 3','2721489401','Rio Blanco');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Laura','Rosas Perez','Ote 3','2721489401','Rio Blanco');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Jann','Garcias Rosas','Ote 3','2721489401','Rio Blanco');
INSERT INTO paciente(nombre,apellidos,direccion,telefono,ciudad) VALUES ('Fernando','Garcias Perez','Ote 3','2721489401','Rio Blanco');

-- 1233356
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233356,'1','2','Dr. Ismael S. L.','Medicina Familiar','01/01/2018','Revision rutina');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233356,'1','2','Dr. Ismael S. L.','Medicina Familiar','01/04/2019','Examen de vista');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233356,'1','2','Dr. Ismael S. L.','Medicina Familiar','01/11/2019','Tos seca y agitacón');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233356,'1','2','Dr. Ismael S. L.','Medicina Familiar','10/01/2020','Fiebre elevada');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233356,'1','2','Dr. Ismael S. L.','Medicina Familiar','13/03/2020','Sintomas de Covid-19');
-- 1233357
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233357,'2','2','Dr. Sergio R. M.','Medicina Familiar','12/11/2018','Colitis aguda');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233357,'2','2','Dr. Sergio R. M.','Medicina Familiar','15/02/2019','Dolor abdominal');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233357,'2','2','Dr. Sergio R. M.','Medicina Familiar','20/03/2019','Fiebre');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233357,'2','2','Dr. Sergio R. M.','Medicina Familiar','04/09/2019','Tos con flemas');
-- 1233358
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233358,'3','1','Dra. Gabriela C. D.','Medicina Familiar','16/04/2019','Dolor abdominal');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233358,'3','1','Dra. Gabriela C. D.','Medicina Familiar','21/09/2019','Dolor en riñones');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233358,'3','1','Dra. Gabriela C. D.','Medicina Familiar','09/11/2019','Fiebre');
-- 1233359
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233359,'2','1','Dra. Leticia P. S.','Medicina Familiar','16/04/2020','Fiebre');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233359,'2','1','Dra. Leticia P. S.','Medicina Familiar','21/05/2020','Sintomas Covid-19');
-- 1233360
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233360,'2','1','Dra. Leticia P. S.','Medicina Familiar','21/05/2020','Sintomas Covid-19');
-- 1233361
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233361,'3','2','Dr. Ismael S. L.','Medicina Familiar','01/11/2017','Revision rutina');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233361,'3','2','Dr. Ismael S. L.','Medicina Familiar','22/04/2019','Examen de vista');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233361,'3','2','Dr. Ismael S. L.','Medicina Familiar','21/12/2019','Tos seca y agitacón');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233361,'3','2','Dr. Ismael S. L.','Medicina Familiar','15/02/2020','Fiebre elevada');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233361,'3','2','Dr. Ismael S. L.','Medicina Familiar','11/01/2020','Sintomas de Covid-19');
-- 1233362
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233362,'2','1','Dr. Sergio R. M.','Medicina Familiar','21/12/2017','Colitis aguda');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233362,'2','1','Dr. Sergio R. M.','Medicina Familiar','14/02/2019','Dolor abdominal');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233362,'2','1','Dr. Sergio R. M.','Medicina Familiar','05/01/2020','Fiebre');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233362,'2','1','Dr. Sergio R. M.','Medicina Familiar','07/08/2018','Tos con flemas');
-- 1233363
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233363,'1','1','Dra. Gabriela C. D.','Medicina Familiar','22/04/2018','Dolor abdominal');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233363,'1','1','Dra. Gabriela C. D.','Medicina Familiar','21/09/2017','Dolor en riñones');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233363,'1','1','Dra. Gabriela C. D.','Medicina Familiar','15/11/2016','Fiebre');
-- 1233364
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233364,'2','2','Dra. Leticia P. S.','Medicina Familiar','22/04/2019','Fiebre');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233364,'2','2','Dra. Leticia P. S.','Medicina Familiar','21/05/2020','Sintomas Covid-19');
-- 1233365
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233365,'2','2','Dra. Leticia P. S.','Medicina Familiar','21/05/2019','Sintomas Covid-19');
-- 1233366
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233366,'2','2','Dr. Ismael S. L.','Medicina Familiar','04/11/2020','Revision rutina');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233366,'2','2','Dr. Ismael S. L.','Medicina Familiar','22/04/2017','Examen de vista');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233366,'2','2','Dr. Ismael S. L.','Medicina Familiar','20/12/2017','Tos seca y agitacón');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233366,'2','2','Dr. Ismael S. L.','Medicina Familiar','14/02/2019','Fiebre elevada');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233366,'2','2','Dr. Ismael S. L.','Medicina Familiar','10/01/2019','Sintomas de Covid-19');
-- 1233367
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233367,'3','1','Dr. Sergio R. M.','Medicina Familiar','18/12/2017','Colitis aguda');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233367,'3','1','Dr. Sergio R. M.','Medicina Familiar','12/02/2019','Dolor abdominal');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233367,'3','1','Dr. Sergio R. M.','Medicina Familiar','15/01/2019','Fiebre');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233367,'3','1','Dr. Sergio R. M.','Medicina Familiar','17/08/2020','Tos con flemas');
-- 1233368
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233368,'1','1','Dra. Gabriela C. D.','Medicina Familiar','22/04/2019','Dolor abdominal');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233368,'1','1','Dra. Gabriela C. D.','Medicina Familiar','21/09/2017','Dolor en riñones');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233368,'1','1','Dra. Gabriela C. D.','Medicina Familiar','20/11/2018','Fiebre');
-- 1233369
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233369,'2','1','Dra. Leticia P. S.','Medicina Familiar','14/04/2019','Fiebre');
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233369,'2','1','Dra. Leticia P. S.','Medicina Familiar','13/05/2020','Sintomas Covid-19');
-- 1233370
INSERT INTO consulta(noExp,consultorio,noPiso,medico,especialidad,fecCon,observacion) VALUES (1233370,'1','1','Dra. Leticia P. S.','Medicina Familiar','01/01/2020','Sintomas Covid-19');

-- Consultas para Servicios

-- Consultar toda la informacion de un paciente
SELECT pac.noexp, pac.nombre, pac.apellidos, con.consultorio, con.noPiso, con.medico, con.especialidad, con.feccon, con.observacion
FROM paciente as pac, consulta as con
WHERE pac.noexp = 1233356 and con.noexp = 1233356
ORDER BY feccon DESC
LIMIT 3;
-- Consultar pacientes por Ciudad
SELECT * FROM paciente WHERE ciudad='Orizaba'
-- 
SELECT * FROM paciente ORDER BY noexp








