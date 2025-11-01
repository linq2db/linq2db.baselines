-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Patient"."Diagnosis"
FROM
	"Person" x
		LEFT JOIN "Patient" "a_Patient" ON x."PersonID" = "a_Patient"."PersonID"

