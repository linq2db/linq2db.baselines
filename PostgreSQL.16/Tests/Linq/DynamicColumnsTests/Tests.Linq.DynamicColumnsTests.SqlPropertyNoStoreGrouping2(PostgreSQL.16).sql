﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."LastName",
	Count(*)
FROM
	"Person" t1
GROUP BY
	t1."FirstName",
	t1."LastName"
ORDER BY
	t1."FirstName"

