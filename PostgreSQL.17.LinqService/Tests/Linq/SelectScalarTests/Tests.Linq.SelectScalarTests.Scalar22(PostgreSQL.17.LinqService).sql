﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p1."FirstName",
	p1."PersonID",
	p1."LastName",
	p1."MiddleName",
	p1."Gender"
FROM
	"Person" p1
WHERE
	p1."PersonID" = 1

