REM ************ TABLAS UNIDAD III
REM ************ TABLAS.SQL


REM ******** TABLA DEPART: ***********

DROP TABLE DEPART cascade constraints; 

CREATE TABLE DEPART (
 DEPT_NO  NUMBER(2) NOT NULL,
 DNOMBRE  VARCHAR2(14), 
 LOC      VARCHAR2(14) ) ;

INSERT INTO DEPART VALUES (10,'CONTABILIDAD','SEVILLA');
INSERT INTO DEPART VALUES (20,'INVESTIGACION','MADRID');
INSERT INTO DEPART VALUES (30,'VENTAS','BARCELONA');
INSERT INTO DEPART VALUES (40,'PRODUCCION','BILBAO');
COMMIT;


REM ******** TABLA EMPLE: *************

ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY';

DROP TABLE EMPLE cascade constraints; 

CREATE TABLE EMPLE (
 EMP_NO    NUMBER(4) NOT NULL,
 APELLIDO  VARCHAR2(10)  ,
 OFICIO    VARCHAR2(10)  ,
 DIR       NUMBER(4) ,
 FECHA_ALT DATE      ,
 SALARIO   NUMBER(7),
 COMISION  NUMBER(7),
 DEPT_NO   NUMBER(2) NOT NULL) ;

INSERT INTO EMPLE VALUES (7369,'SANCHEZ','EMPLEADO',7902,'17/DEC/1990', 
                        1040,NULL,20);
INSERT INTO EMPLE VALUES (7499,'ARROYO','VENDEDOR',7698,'20/FEB/1990',
                        1500,390,30);
INSERT INTO EMPLE VALUES (7521,'SALA','VENDEDOR',7698,'22/FEB/1991',
                        1625,650,30);
INSERT INTO EMPLE VALUES (7566,'JIMENEZ','DIRECTOR',7839,'02/APR/1991',
                        2900,NULL,20);
INSERT INTO EMPLE VALUES (7654,'MARTIN','VENDEDOR',7698,'29/SEP/1991',
                        1600,1020,30);
INSERT INTO EMPLE VALUES (7698,'NEGRO','DIRECTOR',7839,'01/MAY/1991',
                        3005,NULL,30);
INSERT INTO EMPLE VALUES (7782,'CEREZO','DIRECTOR',7839,'09/JUN/1991',
                        2885,NULL,10);
INSERT INTO EMPLE VALUES (7788,'GIL','ANALISTA',7566,'09/NOV/1991',
                        3000,NULL,20);
INSERT INTO EMPLE VALUES (7839,'REY','PRESIDENTE',NULL,'17/NOV/1991',
                        4100,NULL,10);
INSERT INTO EMPLE VALUES (7844,'TOVAR','VENDEDOR',7698,'08/SEP/1991',
                        1350,0,30);
INSERT INTO EMPLE VALUES (7876,'ALONSO','EMPLEADO',7788,'23/SEP/1991',
                        1430,NULL,20);
INSERT INTO EMPLE VALUES (7900,'JIMENO','EMPLEADO',7698,'03/DEC/1991',
                        1335,NULL,30);
INSERT INTO EMPLE VALUES (7902,'FERNANDEZ','ANALISTA',7566,'03/DEC/1991',
                        3000,NULL,20);
INSERT INTO EMPLE VALUES (7934,'MUNOZ','EMPLEADO',7782,'23/JAN/1992',
                        1690,NULL,10);

COMMIT;

-------Crear tabla ciudad----------------------
CREATE TABLE CIUDAD (

ID_CIUDAD  NUMBER(4) NOT NULL,

DNOMBRE  VARCHAR2(15), 

PROVINCIA      VARCHAR2(15) );



INSERT INTO Ciudad VALUES (1010,'ESTEPONA','MADRID')


INSERT INTO Ciudad VALUES (2020,'GUARROMAN','BARCELONA');

INSERT INTO Ciudad VALUES (3030,'GIRONA','VILLAREAL')


INSERT INTO Ciudad VALUES (4040,'GUADALCAC�N','C�DIZ');


COMMIT;

---------Crear tabla Emple2--------------------------
CREATE TABLE EMPLE2 (
 
EMP_NO    NUMBER(4) NOT NULL,
 
APELLIDO  VARCHAR2(10),
 
OFICIO   VARCHAR2(10),
 
DIR    NUMBER(4),
 
FECHA_ALT DATE,
 
SALARIO   NUMBER(7),
 
COMISION  NUMBER(7),
 
DEPT_NO   NUMBER(2) NOT NULL,
 
IDCIUDAD NUMBER(5) NOT NULL);

INSERT INTO EMPLE2 VALUES (7369,'SANCHEZ','EMPLEADO',7902,'17/DEC/1990', 1040,NULL,20, 11591);

INSERT INTO EMPLE2 VALUES (7499,'ARROYO','VENDEDOR',7698,'20/FEB/1990',
 1500,390,30, 11591);

INSERT INTO EMPLE2 VALUES (7521,'SALA','VENDEDOR',7698,'22/FEB/1991',
1625,650,30,11502);

INSERT INTO EMPLE2 VALUES (7566,'JIMENEZ','DIRECTOR',7839,'02/APR/1991',
2900,NULL,20,10354);

INSERT INTO EMPLE2 VALUES (7654,'MARTIN','VENDEDOR',7698,'29/SEP/1991',
1600,1020,30,10354);

INSERT INTO EMPLE2 VALUES (7698,'NEGRO','DIRECTOR',7839,'01/MAY/1991',
3005,NULL,30,11502);

INSERT INTO EMPLE2 VALUES (7782,'CEREZO','DIRECTOR',7839,'09/JUN/1991',
2885,NULL,10,20356);

INSERT INTO EMPLE2 VALUES (7788,'GIL','ANALISTA',7566,'09/NOV/1991',
3000,NULL,20,20356);
INSERT INTO EMPLE2 VALUES (7839,'REY','PRESIDENTE',NULL,'17/NOV/1991',
 4100,NULL,10,10354);
INSERT INTO EMPLE2 VALUES (7844,'TOVAR','VENDEDOR',7698,'08/SEP/1991',
1350,0,30,11502);

INSERT INTO EMPLE2 VALUES (7876,'ALONSO','EMPLEADO',7788,'23/SEP/1991',
1430,NULL,20,10354);

INSERT INTO EMPLE2 VALUES (7900,'JIMENO','EMPLEADO',7698,'03/DEC/1991',
1335,NULL,30,11502);

INSERT INTO EMPLE2 VALUES (7902,'FERNANDEZ','ANALISTA',7566,'03/DEC/1991',
3000,NULL,20,20356);

INSERT INTO EMPLE2 VALUES (7934,'MUNOZ','EMPLEADO',7782,'23/JAN/1992',
1690,NULL,10,11591);

COMMIT;

---------------Concatenar AxBxC---------------------------
Select * from EMPLE2, Ciudad, DEPART;

-------------Fusionar tablas------------------------------
select * from Ciudad, emple2, depart where emple2.dept_no=depart.dept_no and emple2.idciudad=ciudad.idciudad;


REM ***************TABLA ALUM0405***************


Drop table ALUM0405;


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

NOTAS1 NUMERIC(2,1),

NOTAS2 NUMERIC(2,1),

NOTAS3 NUMERIC(2,1),

FALTAS1	NUMBER(2),

FALTAS2	NUMBER(2),

FALTAS3	NUMBER(2)

);



INSERT INTO ALUM0405 VALUES ('34448974N', 'CONCHA', 'ESTRUCH VIDAL',TO_DATE('10/NOV/1985'),
'C/ MEDICO FELIX, 12','BERROCALEJO', 'CACERES',2,'DAI','A',5,6.2,4,0,0,0);



INSERT INTO ALUM0405 VALUES ('34448999N', 'DORA', 'MARTIN BRE?A',TO_DATE('10/NOV/1994'),
'C/ MEDICO FELIX, 10','BERROCALEJO', 'CACERES',1,'ESO','C',8,5,9,0,0,0);



COMMIT;

REM ******** TABLA NOTAS_ALUMNOS: ***********

Drop table notas_alumnos cascade constraints;

create table notas_alumnos(

   NOMBRE_ALUMNO VARCHAR2(25) NOT NULL ,
   nota1 number(2),
   nota2 number(2),
   nota3 number(2)
 
) ;
 
insert into NOTAS_ALUMNOS VALUES ('Alcalde Garc�a, M. Luisa',5,5,5);
insert into NOTAS_ALUMNOS VALUES ('Benito Mart�n, Luis',7,6,8);
insert into NOTAS_ALUMNOS VALUES ('Casas Mart�nez, Manuel',7,5,5);
insert into NOTAS_ALUMNOS VALUES ('Corregidor S�nchez, Ana',6,9,8);
insert into NOTAS_ALUMNOS VALUES ('D�az S�nchez, Maria',NULL,NULL,7);


COMMIT;

REM ******** TABLA LIBRERIA: *************

Drop table LIBRERIA cascade constraints;

create table LIBRERIA
 (TEMA CHAR(15) NOT NULL ,
  ESTANTE CHAR(1),
  EJEMPLARES NUMBER(2)
 ) ;

INSERT INTO LIBRERIA VALUES ('INFORMATICA', 'A',15);
INSERT INTO LIBRERIA VALUES ('ECONOMIA',    'A',10);
INSERT INTO LIBRERIA VALUES ('DEPORTES',    'B',8);
INSERT INTO LIBRERIA VALUES ('FILOSOFIA',   'C',7);
INSERT INTO LIBRERIA VALUES ('DIBUJO',      'C',10);
INSERT INTO LIBRERIA VALUES ('MEDICINA',    'C',16);
INSERT INTO LIBRERIA VALUES ('BIOLOGIA',    'A',11);
INSERT INTO LIBRERIA VALUES ('GEOLOGIA',    'D',7);
INSERT INTO LIBRERIA VALUES ('SOCIEDAD',    'D',9);
INSERT INTO LIBRERIA VALUES ('LABORES',     'B',20);
INSERT INTO LIBRERIA VALUES ('JARDINERIA',    'E',6);
COMMIT;



REM ******** TABLAS ALUMNOS, ASIGNATURAS, NOTAS: ***********

DROP TABLE ALUMNOS cascade constraints;

CREATE TABLE ALUMNOS
(
  DNI VARCHAR2(10) NOT NULL,
  APENOM VARCHAR2(30),
  DIREC VARCHAR2(30),
  POBLA  VARCHAR2(15),
  TELEF  VARCHAR2(10)  
) ;

DROP TABLE ASIGNATURAS cascade constraints;

CREATE TABLE ASIGNATURAS
(
  COD NUMBER(2) NOT NULL,
  NOMBRE VARCHAR2(25)
) ;

DROP TABLE NOTAS cascade constraints;

CREATE TABLE NOTAS
(
  DNI VARCHAR2(10) NOT NULL,
  COD NUMBER(2) NOT NULL,
  NOTA NUMBER(2)
);

INSERT INTO ASIGNATURAS VALUES (1,'Prog. Leng. Estr.');
INSERT INTO ASIGNATURAS VALUES (2,'Sist. Inform�ticos');
INSERT INTO ASIGNATURAS VALUES (3,'An�lisis');
INSERT INTO ASIGNATURAS VALUES (4,'FOL');
INSERT INTO ASIGNATURAS VALUES (5,'RET');
INSERT INTO ASIGNATURAS VALUES (6,'Entornos Gr�ficos');
INSERT INTO ASIGNATURAS VALUES (7,'Aplic. Entornos 4�Gen');
INSERT INTO ASIGNATURAS VALUES (8,'Idioma');


INSERT INTO ALUMNOS VALUES
('12344345','Alcalde Garc�a, Elena', 'C/Las Matas, 24','Madrid','917766545');

INSERT INTO ALUMNOS VALUES
('4448242','Cerrato Vela, Luis', 'C/Mina 28 - 3A', 'Madrid','916566545');

INSERT INTO ALUMNOS VALUES
('56882942','D�az Fern�ndez, Mar�a', 'C/Luis Vives 25', 'M�stoles','915577545');

INSERT INTO NOTAS VALUES('12344345', 1,6);
INSERT INTO NOTAS VALUES('12344345', 2,5);
INSERT INTO NOTAS VALUES('12344345', 3,6);

INSERT INTO NOTAS VALUES('4448242', 4,6);
INSERT INTO NOTAS VALUES('4448242', 5,8);
INSERT INTO NOTAS VALUES('4448242', 6,4);
INSERT INTO NOTAS VALUES('4448242', 7,5);

INSERT INTO NOTAS VALUES('56882942', 4,8);
INSERT INTO NOTAS VALUES('56882942', 5,7);
INSERT INTO NOTAS VALUES('56882942', 6,8);
INSERT INTO NOTAS VALUES('56882942', 7,9);

COMMIT;

REM ******** FIN ***********************

