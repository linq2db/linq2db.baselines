BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."PersonID",
	p2."FirstName"
FROM
	"Person" t,
	"Person" p2
WHERE
	t."PersonID" = p2."PersonID" AND t."PersonID" = 1

