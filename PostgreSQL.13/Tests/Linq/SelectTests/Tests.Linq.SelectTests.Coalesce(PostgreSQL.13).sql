-- PostgreSQL.13 PostgreSQL13

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

