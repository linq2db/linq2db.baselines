﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	'123' || p."FirstName" || '456' = '123John456' AND
	p."PersonID" = 1

