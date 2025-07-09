BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."PersonID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"Person" x
		INNER JOIN "Patient" "a_Patient" ON x."PersonID" = "a_Patient"."PersonID"
WHERE
	"a_Patient"."Diagnosis" = 'Hallucination with Paranoid Bugs'' Delirium of Persecution'

