﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	LTrim('  ' || p."FirstName" || ' ') = 'John ' AND p."PersonID" = 1

