﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	LTRIM(('  ' || p."FirstName" || ' '), ' ') = 'John ' AND
	p."PersonID" = 1

