-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."LastName" = 'Pupkin' AND p."FirstName" = 'John'
LIMIT 2

