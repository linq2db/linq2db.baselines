BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestEqualsTable1
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestEqualsTable2
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
	EXISTS(
		SELECT
			*
		FROM
			TestEqualsTable2 t2
		WHERE
			t1.Id = t2.FK AND t2.Id IS NULL
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestEqualsTable2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestEqualsTable1

