BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Length(p."FirstName") = 0
FROM
	"Person" p
WHERE
	p."PersonID" = 1

