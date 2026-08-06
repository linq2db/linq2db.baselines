-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

