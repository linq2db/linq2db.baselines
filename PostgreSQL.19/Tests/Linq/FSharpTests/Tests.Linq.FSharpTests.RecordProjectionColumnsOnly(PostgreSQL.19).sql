-- PostgreSQL.19 PostgreSQL13

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

