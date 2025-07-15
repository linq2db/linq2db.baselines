BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

