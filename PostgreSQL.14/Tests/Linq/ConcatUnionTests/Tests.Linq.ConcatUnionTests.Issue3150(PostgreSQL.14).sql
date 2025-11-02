-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	'id=1'::text
FROM
	"Person" p
WHERE
	p."PersonID" = 1
UNION ALL
SELECT
	p_1."PersonID",
	p_1."FirstName",
	'id=2'::text
FROM
	"Person" p_1
WHERE
	p_1."PersonID" = 2

