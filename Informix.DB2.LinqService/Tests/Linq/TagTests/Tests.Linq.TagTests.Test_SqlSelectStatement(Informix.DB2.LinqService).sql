BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestTable
(
	Id Int NOT NULL,
	Fd Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

/* My Test */
SELECT
	t1.Id,
	t1.Fd
FROM
	TestTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

