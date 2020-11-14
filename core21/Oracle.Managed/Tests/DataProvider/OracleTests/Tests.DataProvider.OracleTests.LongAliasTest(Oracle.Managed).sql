BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TempTestTable"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TempTestTable"
(
	AAAAAAAAAAAAAAAAAAAAAAAAAAAABC Number(19) NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

DROP TABLE "TempTestTable"

