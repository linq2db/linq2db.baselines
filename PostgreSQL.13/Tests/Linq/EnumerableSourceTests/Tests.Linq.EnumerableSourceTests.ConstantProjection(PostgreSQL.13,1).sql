-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
ORDER BY
	p."PersonID"

