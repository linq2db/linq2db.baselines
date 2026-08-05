-- PostgreSQL.13 PostgreSQL12
SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

