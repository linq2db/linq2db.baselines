﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	nm."MiddleName"
FROM
	(
		SELECT
			Length(p."MiddleName") as "Value_1",
			p."MiddleName"
		FROM
			"Person" p
	) nm
WHERE
	nm."Value_1" <> 0 OR nm."Value_1" IS NULL

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

