-- PostgreSQL.11 PostgreSQL
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."FirstName" || ' ' || p."LastName"
FROM
	"Person" p

