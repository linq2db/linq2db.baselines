-- PostgreSQL.15 PostgreSQL

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

