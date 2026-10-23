-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

