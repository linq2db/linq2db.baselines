BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TestEqualsTable1
(
	Id Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TestEqualsTable2
(
	Id Int NOT NULL,
	FK Int     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TestEqualsTable2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TestEqualsTable1

