-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."FirstName" || ' ' || p."LastName"
FROM
	"Person" p

