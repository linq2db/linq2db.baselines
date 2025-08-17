BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender",
	NULL::Int,
	NULL::text
FROM
	"Person" x
UNION ALL
SELECT
	NULL::text,
	NULL::Int,
	NULL::text,
	NULL::text,
	NULL::Char(1),
	x_1."PersonID",
	x_1."Diagnosis"
FROM
	"Patient" x_1

