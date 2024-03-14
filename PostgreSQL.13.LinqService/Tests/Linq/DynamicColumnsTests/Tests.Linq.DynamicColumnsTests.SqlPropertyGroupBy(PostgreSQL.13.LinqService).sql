BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	Count(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

