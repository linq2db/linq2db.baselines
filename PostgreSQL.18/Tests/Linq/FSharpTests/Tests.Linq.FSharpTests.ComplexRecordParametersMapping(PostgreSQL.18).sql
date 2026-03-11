-- PostgreSQL.18 PostgreSQL

SELECT
	p."PersonID",
	p."MiddleName",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

