-- PostgreSQL.15 PostgreSQL13

SELECT
	x."PersonID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"Person" x
WHERE
	x."FirstName" = 'John'

