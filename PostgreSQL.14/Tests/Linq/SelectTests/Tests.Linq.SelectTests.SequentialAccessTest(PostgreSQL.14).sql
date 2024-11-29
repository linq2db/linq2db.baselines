BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."PersonID",
	p."LastName",
	p."FirstName" || ' ' || p."LastName"
FROM
	"Person" p

