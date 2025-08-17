BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."PersonID",
	p."MiddleName",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

