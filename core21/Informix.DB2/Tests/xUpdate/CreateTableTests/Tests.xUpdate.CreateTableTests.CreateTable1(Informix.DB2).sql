﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestTable

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

SELECT 
	t1.ID, 
	t1.Field1, 
	t1.Field2, 
	t1.CreatedOn
FROM
	TestTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestTable

