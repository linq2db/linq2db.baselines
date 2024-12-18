﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	nm."MiddleName"
FROM
	"Person" nm
WHERE
	NOT (nm."MiddleName" IS NULL OR Length(nm."MiddleName") = 0 AND Length(nm."MiddleName") IS NOT NULL)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

