-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p2."PersonID",
	RTRIM((p2."FirstName" || ''), '')
FROM
	"Person" p2
WHERE
	p2."PersonID" = 1

