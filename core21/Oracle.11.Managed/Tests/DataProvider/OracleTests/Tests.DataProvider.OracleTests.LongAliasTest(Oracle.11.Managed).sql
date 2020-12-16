BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TempTestTable"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TempTestTable"
(
	AAAAAAAAAAAAAAAAAAAAAAAAAAAABC Number(19) NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.AAAAAAAAAAAAAAAAAAAAAAAAAAAABC
FROM
	(
		SELECT DISTINCT
			t.AAAAAAAAAAAAAAAAAAAAAAAAAAAABC
		FROM
			"TempTestTable" t
	) t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TempTestTable"

