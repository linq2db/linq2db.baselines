﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'J%' ESCAPE '~' AND (p."PersonID" = 1 OR p."LastName" = 'fail')
LIMIT 1

