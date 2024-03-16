BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	Count(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

