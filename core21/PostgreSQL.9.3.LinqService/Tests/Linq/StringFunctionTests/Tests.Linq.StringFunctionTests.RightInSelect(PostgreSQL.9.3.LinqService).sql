﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Substring(p."FirstName", Length(p."FirstName") - 2, 3)
FROM
	"Person" p
WHERE
	p."PersonID" = 1

