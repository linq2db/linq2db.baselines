BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS TestTrun

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE TestTrun
(
	ID     Int     NOT NULL,
	Field1 Decimal NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

TRUNCATE TABLE TestTrun

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE TestTrun

