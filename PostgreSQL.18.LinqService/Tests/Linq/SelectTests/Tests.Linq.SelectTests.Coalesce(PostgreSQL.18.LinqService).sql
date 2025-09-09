BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1

