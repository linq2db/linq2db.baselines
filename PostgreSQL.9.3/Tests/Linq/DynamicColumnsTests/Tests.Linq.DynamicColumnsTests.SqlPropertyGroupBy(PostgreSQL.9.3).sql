-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

