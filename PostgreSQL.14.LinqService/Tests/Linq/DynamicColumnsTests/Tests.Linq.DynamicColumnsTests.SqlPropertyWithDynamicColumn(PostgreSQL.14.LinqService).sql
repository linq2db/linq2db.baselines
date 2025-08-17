BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."PersonID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"Person" x
WHERE
	x."FirstName" = 'John'

