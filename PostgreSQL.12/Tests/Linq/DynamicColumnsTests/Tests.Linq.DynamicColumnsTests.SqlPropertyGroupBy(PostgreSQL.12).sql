﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

