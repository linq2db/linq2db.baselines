BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestEqualsTable1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestEqualsTable1
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestEqualsTable2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestEqualsTable2
(
	Id Int NOT NULL,
	FK Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	TestEqualsTable1 t1
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestEqualsTable2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestEqualsTable1

