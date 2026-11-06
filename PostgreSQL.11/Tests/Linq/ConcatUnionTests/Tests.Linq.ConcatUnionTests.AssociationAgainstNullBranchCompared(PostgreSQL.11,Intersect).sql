-- PostgreSQL.11 PostgreSQL
SELECT
	p."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"
INTERSECT
SELECT
	p_1."PersonID",
	NULL::Int,
	NULL::Int,
	NULL::text
FROM
	"Person" p_1

