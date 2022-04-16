BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestTable
(
	Id Int NOT NULL,
	Fd Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

/* My Test */
UPDATE
	TestTable
SET
	TestTable.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

