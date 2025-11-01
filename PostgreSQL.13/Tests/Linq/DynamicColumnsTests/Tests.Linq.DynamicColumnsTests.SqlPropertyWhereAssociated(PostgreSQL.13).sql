-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."PersonID"
FROM
	"Person" x
		INNER JOIN "Patient" "a_Patient" ON x."PersonID" = "a_Patient"."PersonID"
WHERE
	"a_Patient"."Diagnosis" IS NOT NULL

