-- PostgreSQL.18 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	'ибн Алёша'
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

