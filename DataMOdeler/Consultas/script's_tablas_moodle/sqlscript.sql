REM   Script: NOMBRE_ALUMNO
REM   Nombre alumnos ejercicio 5 tema 2

REM ******** TABLA NOTAS_ALUMNOS: *********** 


Drop table notas_alumnos cascade constraints


create table notas_alumnos 
 ( 
   NOMBRE_ALUMNO VARCHAR2(25) NOT NULL , 
   nota1 number(2), 
   nota2 number(2), 
   nota3 number(2) 
 ) ;

insert into NOTAS_ALUMNOS VALUES ('Alcalde García, M. Luisa',5,5,5);

insert into NOTAS_ALUMNOS VALUES ('Benito Martín, Luis',7,6,8);

insert into NOTAS_ALUMNOS VALUES ('Casas Martínez, Manuel',7,5,5);

insert into NOTAS_ALUMNOS VALUES ('Corregidor Sánchez, Ana',6,9,8);

insert into NOTAS_ALUMNOS VALUES ('Díaz Sánchez, Maria',NULL,NULL,7);

COMMIT


REM ******** TABLA NOTAS_ALUMNOS: *********** 


Drop table notas_alumnos cascade constraints


create table notas_alumnos 
 ( 
   NOMBRE_ALUMNO VARCHAR2(25) NOT NULL , 
   nota1 number(2), 
   nota2 number(2), 
   nota3 number(2) 
 ) ;

insert into NOTAS_ALUMNOS VALUES ('Alcalde García, M. Luisa',5,5,5);

insert into NOTAS_ALUMNOS VALUES ('Benito Martín, Luis',7,6,8);

insert into NOTAS_ALUMNOS VALUES ('Casas Martínez, Manuel',7,5,5);

insert into NOTAS_ALUMNOS VALUES ('Corregidor Sánchez, Ana',6,9,8);

insert into NOTAS_ALUMNOS VALUES ('Díaz Sánchez, Maria',NULL,NULL,7);

COMMIT


REM ***TABLA ALUM0405*************** 


Drop table ALUM0405


create table ALUM0405( 
DNI	VARCHAR2(10) NOT NULL, 
NOMBRE	VARCHAR2(15) NOT NULL, 
APELLIDOS	VARCHAR2(20) NOT NULL, 
FECHA_NAC	DATE, 
DIRECCION	VARCHAR2(20), 
POBLACION	VARCHAR2(20), 
PROVINCIA	VARCHAR2(20), 
CURSO	NUMBER(2)  NOT NULL, 
NIVEL	VARCHAR2(10)  NOT NULL, 
CLASE	CHAR(1)  NOT NULL, 
FALTAS1	NUMBER(2), 
FALTAS2	NUMBER(2), 
FALTAS3	NUMBER(2) 
);

INSERT INTO ALUM0405 VALUES ('34448974N', 'CONCHA', 'ESTRUCH VIDAL',TO_DATE('10/NOV/1985'), 
'C/ MEDICO FELIX, 12','BERROCALEJO', 'CACERES',2,'DAI','A',0,0,0);

INSERT INTO ALUM0405 VALUES ('34448999N', 'DORA', 'MARTIN BREÑA',TO_DATE('10/NOV/1994'), 
'C/ MEDICO FELIX, 10','BERROCALEJO', 'CACERES',1,'ESO','C',0,0,0);

 COMMIT


REM ***TABLA ALUM0405*************** 


Drop table ALUM0405


create table ALUM0405( 
DNI	VARCHAR2(10) NOT NULL, 
NOMBRE	VARCHAR2(15) NOT NULL, 
APELLIDOS	VARCHAR2(20) NOT NULL, 
FECHA_NAC	DATE, 
DIRECCION	VARCHAR2(20), 
POBLACION	VARCHAR2(20), 
PROVINCIA	VARCHAR2(20), 
CURSO	NUMBER(2)  NOT NULL, 
NIVEL	VARCHAR2(10)  NOT NULL, 
CLASE	CHAR(1)  NOT NULL, 
FALTAS1	NUMBER(2), 
FALTAS2	NUMBER(2), 
FALTAS3	NUMBER(2) 
);

INSERT INTO ALUM0405 VALUES ('34448974N', 'CONCHA', 'ESTRUCH VIDAL',TO_DATE('10/NOV/1985'), 
'C/ MEDICO FELIX, 12','BERROCALEJO', 'CACERES',2,'DAI','A',0,0,0);

INSERT INTO ALUM0405 VALUES ('34448999N', 'DORA', 'MARTIN BREÑA',TO_DATE('10/NOV/1994'), 
'C/ MEDICO FELIX, 10','BERROCALEJO', 'CACERES',1,'ESO','C',0,0,0);

 COMMIT


