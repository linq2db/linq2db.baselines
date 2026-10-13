-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 1

