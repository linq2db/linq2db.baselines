﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."FirstName",
	r."PersonID",
	r."LastName",
	r."MiddleName",
	r."Gender"
FROM
	"Person" r
WHERE
	r."PersonID" = 3 AND (r."MiddleName" IN ('123', 'Ko') OR r."MiddleName" IS NULL)

