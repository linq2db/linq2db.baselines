-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	p."PersonID",
	p."MiddleName",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

