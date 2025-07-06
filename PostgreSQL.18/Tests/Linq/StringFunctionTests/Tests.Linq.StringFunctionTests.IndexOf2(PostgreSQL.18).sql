﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Position('e' in Substring(p."LastName", 3, Length(p."LastName") - 3)) + 2 = 5 AND
	p."PersonID" = 2

