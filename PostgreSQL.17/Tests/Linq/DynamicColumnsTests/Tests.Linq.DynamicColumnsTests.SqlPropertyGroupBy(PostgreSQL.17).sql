-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."FirstName",
	COUNT(*)
FROM
	"Person" p
GROUP BY
	p."FirstName"

