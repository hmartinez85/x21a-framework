-- ===============================
-- SCRIPT DE BASE DE DATOS
-- Proyecto: [NOMBRE_PROYECTO]
-- Entidad: [NOMBRE_ENTIDAD]
-- ===============================

-- Eliminar objetos existentes
DROP SEQUENCE [ENTIDAD]_SEQ;
DROP TABLE [ENTIDAD_PLURAL];

-- Crear tabla principal
CREATE TABLE [ENTIDAD_PLURAL] (
    ID NUMBER(19) NOT NULL,
    -- Campos específicos de la entidad se generan aquí
    CREATED_DATE DATE DEFAULT SYSDATE,
    UPDATED_DATE DATE,
    VERSION NUMBER(10) DEFAULT 0,
    CONSTRAINT PK_[ENTIDAD_PLURAL] PRIMARY KEY (ID)
);

-- Crear secuencia para IDs
CREATE SEQUENCE [ENTIDAD]_SEQ
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Crear trigger para auto-incremento
CREATE OR REPLACE TRIGGER TRG_[ENTIDAD]_ID
    BEFORE INSERT ON [ENTIDAD_PLURAL]
    FOR EACH ROW
BEGIN
    IF :NEW.ID IS NULL THEN
        SELECT [ENTIDAD]_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
    END IF;
END;
/

-- Crear índices
CREATE INDEX IDX_[ENTIDAD]_CREATED ON [ENTIDAD_PLURAL] (CREATED_DATE);

-- Insertar datos de ejemplo
-- Los datos específicos se generan según la entidad

-- Verificar datos insertados
SELECT COUNT(*) as TOTAL_REGISTROS FROM [ENTIDAD_PLURAL];

-- Mostrar estructura de tabla
DESCRIBE [ENTIDAD_PLURAL];

COMMIT;