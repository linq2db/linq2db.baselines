﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	'1' || t1."FirstName" COLLATE "POSIX" || '2'

