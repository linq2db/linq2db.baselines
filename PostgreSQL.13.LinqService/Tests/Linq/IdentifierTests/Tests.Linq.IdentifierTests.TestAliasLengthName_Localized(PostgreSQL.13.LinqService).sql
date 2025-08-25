BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	z."FirstName",
	z."PersonID",
	z."LastName",
	z."MiddleName",
	z."Gender"
FROM
	"Person" z
WHERE
	z."PersonID" = 1

