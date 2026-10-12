-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 1

