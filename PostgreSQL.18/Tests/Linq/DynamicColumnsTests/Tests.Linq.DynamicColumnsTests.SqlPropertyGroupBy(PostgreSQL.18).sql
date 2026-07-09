-- PostgreSQL.18 PostgreSQL13

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

