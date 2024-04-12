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
DECLARE @param Integer(4) -- Int32
SET     @param = 0

SELECT
	t1.Id
FROM
	TestEqualsTable1 t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			TestEqualsTable2 a_Relation
		WHERE
			t1.Id = a_Relation.FK AND a_Relation.Id = @param
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestEqualsTable2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestEqualsTable1

