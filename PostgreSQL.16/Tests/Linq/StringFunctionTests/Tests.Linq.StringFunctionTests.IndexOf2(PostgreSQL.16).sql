﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position('e' in Substring(p."LastName", 3, Length(p."LastName") - 3)) + 1 = 4 AND
	p."PersonID" = 2

