-- Generado por Oracle SQL Developer Data Modeler 17.3.0.261.1529
--   en:        2018-01-09 13:37:48 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alumno (
    id_alumno   INTEGER NOT NULL,
    nombre      VARCHAR2(25 CHAR) NOT NULL,
    fecha_nac   DATE NOT NULL,
    n_hermano   INTEGER,
    aula        INTEGER NOT NULL
);

CREATE INDEX alumno__idx ON
    alumno ( nombre ASC );

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alumno );

CREATE TABLE aula (
    id_aula   INTEGER NOT NULL,
    nombre    VARCHAR2(10 CHAR) NOT NULL,
    m2        NUMBER
);

ALTER TABLE aula ADD CONSTRAINT aula_pk PRIMARY KEY ( id_aula );

ALTER TABLE alumno
    ADD CONSTRAINT alumno_aula_fk FOREIGN KEY ( aula )
        REFERENCES aula ( id_aula );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             1
-- ALTER TABLE                              3
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
