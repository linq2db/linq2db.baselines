﻿BeforeExecute
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
UPDATE
	TestTable
SET
	TestTable.Fd = 2
WHERE
	TestTable.Id = 1

BeforeExecute
-- Informix.DB2 Informix

/* My Test */
INSERT INTO TestTable
(
	Id,
	Fd
)
VALUES
(
	1,
	2
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

