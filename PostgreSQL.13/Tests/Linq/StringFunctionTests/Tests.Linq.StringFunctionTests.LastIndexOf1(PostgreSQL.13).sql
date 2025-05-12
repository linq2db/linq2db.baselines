﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(LENGTH(p."LastName") - Position('p' in Reverse(p."LastName"))) - LENGTH('p') = 1 AND
	Position('p' in p."LastName") <> 0 AND p."PersonID" = 1

