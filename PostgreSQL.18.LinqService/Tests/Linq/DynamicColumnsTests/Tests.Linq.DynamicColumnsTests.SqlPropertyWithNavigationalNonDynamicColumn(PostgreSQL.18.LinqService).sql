﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
		LEFT JOIN "Patient" "a_Patient" ON x."PersonID" = "a_Patient"."PersonID"
WHERE
	"a_Patient"."Diagnosis" = 'Hallucination with Paranoid Bugs'' Delirium of Persecution'

