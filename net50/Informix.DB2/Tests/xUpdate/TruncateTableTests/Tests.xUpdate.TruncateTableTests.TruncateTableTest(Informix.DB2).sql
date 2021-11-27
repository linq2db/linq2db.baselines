BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTrun

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestTrun
(
	ID     Int     NOT NULL,
	Field1 Decimal NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

TRUNCATE TABLE TestTrun

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestTrun

