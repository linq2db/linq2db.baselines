﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."PersonID",
	t1."LastName"
FROM
	"Person" t1
ORDER BY
	CASE
		WHEN t1."PersonID" IN (1, 3) THEN True
		ELSE False
	END

