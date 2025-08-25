BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

