﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	g_1."FirstName",
	g_1."LastName",
	COUNT(*)
FROM
	"Person" g_1
GROUP BY
	g_1."FirstName",
	g_1."LastName"
ORDER BY
	g_1."FirstName"

