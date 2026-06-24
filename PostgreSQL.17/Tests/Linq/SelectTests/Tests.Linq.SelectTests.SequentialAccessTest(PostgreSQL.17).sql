-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."FirstName",
	p."PersonID",
	p."PersonID",
	p."LastName",
	p."FirstName" || ' ' || p."LastName"
FROM
	"Person" p

