﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	Coalesce(p."FirstName", 'None'),
	Coalesce(p."MiddleName", 'None')
FROM
	"Person" p
WHERE
	p."PersonID" = 1

