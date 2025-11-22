-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	'I-' || x."PersonID",
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	NULL::text,
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

