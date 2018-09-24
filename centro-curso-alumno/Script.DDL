-- Generado por Oracle SQL Developer Data Modeler 17.3.0.261.1529
--   en:        2018-03-13 16:27:13 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alumno (
    id_alumno          NUMBER NOT NULL,
    dni_alumno         CHAR(9 CHAR) NOT NULL,
    nombre_alumno      VARCHAR2(35 CHAR) NOT NULL,
    apellido_alumno    VARCHAR2(110 CHAR) NOT NULL,
    direccion_alumno   VARCHAR2(110 CHAR) NOT NULL,
    telefono_alumno    NUMBER NOT NULL,
    cp_alumno          NUMBER
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alumno );

CREATE TABLE centro (
    id_centro          NUMBER NOT NULL,
    nombre_centro      VARCHAR2(35 CHAR) NOT NULL,
    direccion_centro   VARCHAR2(110 CHAR) NOT NULL,
    poblacion_centro   VARCHAR2(110 CHAR) NOT NULL,
    provincia          VARCHAR2(110 CHAR) NOT NULL
);

ALTER TABLE centro ADD CONSTRAINT centro_pk PRIMARY KEY ( id_centro );

CREATE TABLE curso (
    id_curso       NUMBER NOT NULL,
    nombre_curso   VARCHAR2(35 CHAR) NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE profesor (
    id_profesor               NUMBER NOT NULL,
    dni_profesor              CHAR(9 CHAR) NOT NULL,
    nombre_profesor           VARCHAR2(35 CHAR) NOT NULL,
    apellido_profesor         VARCHAR2(35 CHAR) NOT NULL,
    direccion_profesor        VARCHAR2(110 CHAR),
    telefono_profesor         NUMBER,
    num_seg_social_profesor   NUMBER NOT NULL,
    cp_profesor               NUMBER NOT NULL,
    curso_id_curso            NUMBER NOT NULL
);

ALTER TABLE profesor ADD CONSTRAINT profesor_pk PRIMARY KEY ( id_profesor );

CREATE TABLE provincia (
    cod_provincia      NUMBER NOT NULL,
    nombre_provincia   VARCHAR2(35 CHAR) NOT NULL,
    centro_id_centro   NUMBER NOT NULL
);

ALTER TABLE provincia ADD CONSTRAINT provincia_pk PRIMARY KEY ( cod_provincia );

CREATE TABLE r_centro_curso (
    centro_id_centro   NUMBER NOT NULL,
    curso_id_curso     NUMBER NOT NULL
);

ALTER TABLE r_centro_curso ADD CONSTRAINT r_centro_curso_pk PRIMARY KEY ( centro_id_centro,
curso_id_curso );

CREATE TABLE r_curso_alumno (
    curso_id_curso     NUMBER NOT NULL,
    alumno_id_alumno   NUMBER NOT NULL,
    fecha_inicio       DATE NOT NULL,
    fecha_final        DATE
);

ALTER TABLE r_curso_alumno ADD CONSTRAINT r_curso_alumno_pk PRIMARY KEY ( curso_id_curso,
alumno_id_alumno );

ALTER TABLE profesor
    ADD CONSTRAINT profesor_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE provincia
    ADD CONSTRAINT provincia_centro_fk FOREIGN KEY ( centro_id_centro )
        REFERENCES centro ( id_centro );

ALTER TABLE r_centro_curso
    ADD CONSTRAINT r_centro_curso_centro_fk FOREIGN KEY ( centro_id_centro )
        REFERENCES centro ( id_centro );

ALTER TABLE r_centro_curso
    ADD CONSTRAINT r_centro_curso_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE r_curso_alumno
    ADD CONSTRAINT r_curso_alumno_alumno_fk FOREIGN KEY ( alumno_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE r_curso_alumno
    ADD CONSTRAINT r_curso_alumno_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
