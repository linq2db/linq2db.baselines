﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = 4 AND r."MiddleName" <> '222' AND r."MiddleName" IS NOT NULL

