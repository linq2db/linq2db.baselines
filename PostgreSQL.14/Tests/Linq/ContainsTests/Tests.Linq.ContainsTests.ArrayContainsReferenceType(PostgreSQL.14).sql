-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IN ('John', 'Jane')

