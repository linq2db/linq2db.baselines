﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	i."PersonID",
	i."FirstName",
	i."LastName",
	i."MiddleName",
	i."Gender",
	i."LastName" || ', ' || i."FirstName",
	i."LastName" || ', ' || i."FirstName",
	(
		SELECT
			Count(*)
		FROM
			"Doctor" t1
		WHERE
			t1."PersonID" = i."PersonID"
	)
FROM
	"Person" i
WHERE
	i."FirstName" <> 'John'

