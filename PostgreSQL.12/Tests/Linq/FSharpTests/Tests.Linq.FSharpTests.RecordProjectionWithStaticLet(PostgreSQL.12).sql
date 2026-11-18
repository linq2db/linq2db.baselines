-- PostgreSQL.12 PostgreSQL12
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."LastName" = 'Pupkin' AND p."FirstName" = 'John'
LIMIT 2

