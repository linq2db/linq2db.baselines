-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") = 'john' AND p."PersonID" = 1

