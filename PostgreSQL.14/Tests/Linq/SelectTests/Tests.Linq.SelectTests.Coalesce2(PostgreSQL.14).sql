﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	Coalesce(p."MiddleName", p."FirstName", 'None'),
	Coalesce(p."LastName", p."FirstName", 'None'),
	Coalesce(p."MiddleName", p."MiddleName", 'None')
FROM
	"Person" p
WHERE
	p."PersonID" = 1

