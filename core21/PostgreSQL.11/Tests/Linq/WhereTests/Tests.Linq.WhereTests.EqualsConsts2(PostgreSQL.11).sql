﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(p."FirstName" = 'John' OR p."FirstName" = 'John''s') AND p."PersonID" > 0 AND p."PersonID" < 2 AND p."LastName" <> '123'

