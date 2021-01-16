BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestTable
(
	ID        SERIAL                     NOT NULL,
	Field1    NVarChar(50)                   NULL,
	Field2    NVarChar(255)                  NULL,
	CreatedOn datetime year to fraction      NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestTable

