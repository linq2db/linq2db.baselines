﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."FirstName" || Repeat(' ', p."PersonID" + 1) || '123' = 'John  123' AND p."PersonID" = 1

