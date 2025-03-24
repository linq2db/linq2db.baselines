﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @filter1 Text(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 Text(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" e
		WHERE
			e."FirstName" LIKE :filter1 ESCAPE '~' AND e."PersonID" = (
				SELECT
					d."PersonID"
				FROM
					"Patient" d
				LIMIT 1
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			"Person" e_1
		WHERE
			e_1."FirstName" LIKE :filter2 ESCAPE '~' AND e_1."PersonID" = (
				SELECT
					d_1."PersonID"
				FROM
					"Patient" d_1
				LIMIT 1
			)
	)
ORDER BY
	t1."PersonID"

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

