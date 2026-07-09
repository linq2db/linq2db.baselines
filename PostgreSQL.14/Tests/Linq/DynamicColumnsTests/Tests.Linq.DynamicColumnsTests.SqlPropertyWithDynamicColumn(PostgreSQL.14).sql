-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	x."PersonID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"Person" x
WHERE
	x."FirstName" = 'John'

