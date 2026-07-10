-- PostgreSQL.13 PostgreSQL12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."FirstName" || ' ' || p."LastName"
FROM
	"Person" p

