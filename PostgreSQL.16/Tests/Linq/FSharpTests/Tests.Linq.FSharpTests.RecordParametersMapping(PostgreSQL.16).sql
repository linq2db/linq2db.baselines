-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

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

