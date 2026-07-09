-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	'I-' || x."PersonID"::text,
	x."FirstName"
FROM
	"Person" x
UNION ALL
SELECT
	NULL::text,
	'QUASI-' || x_1."FirstName"
FROM
	"Person" x_1

