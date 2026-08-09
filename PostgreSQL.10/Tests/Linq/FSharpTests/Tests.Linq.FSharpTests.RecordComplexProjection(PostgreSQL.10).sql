-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND p."FirstName" = 'John' AND p."LastName" = 'Pupkin'
LIMIT 2

