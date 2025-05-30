﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."ID",
	t2."LastName",
	t2.flag
FROM
	(
		SELECT
			t1."PersonID" IN (1, 3) as flag,
			t1."PersonID" as "ID",
			t1."LastName"
		FROM
			"Person" t1
	) t2
ORDER BY
	t2.flag

