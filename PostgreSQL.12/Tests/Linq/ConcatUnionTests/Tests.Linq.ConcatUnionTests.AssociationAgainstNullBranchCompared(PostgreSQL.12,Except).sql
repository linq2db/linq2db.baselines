-- PostgreSQL.12 PostgreSQL12
SELECT
	p."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"
EXCEPT
SELECT
	p_1."PersonID",
	NULL::Int,
	NULL::Int,
	NULL::text
FROM
	"Person" p_1

